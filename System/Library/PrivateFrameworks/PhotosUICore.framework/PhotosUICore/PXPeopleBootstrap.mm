@interface PXPeopleBootstrap
+ (BOOL)_namePerson:(id)person toContact:(id)contact changeRequest:(id)request context:(id)context;
+ (CGSize)preferredBootstrapSize;
+ (void)_favoritePersonWithChangeRequest:(id)request photoLibrary:(id)library;
+ (void)_mergePerson:(id)person context:(id)context toPerson:(id)toPerson;
+ (void)_namePerson:(id)person context:(id)context withChangeRequest:(id)request;
+ (void)_namePerson:(id)person toContact:(id)contact withChangeRequest:(id)request;
+ (void)_namePerson:(id)person toString:(id)string withChangeRequest:(id)request;
+ (void)_unfavoritePersonWithChangeRequest:(id)request photoLibrary:(id)library;
+ (void)nameAndVerifyPerson:(id)person toContact:(id)contact photoLibrary:(id)library completionHandler:(id)handler;
+ (void)nameAndVerifyPerson:(id)person toName:(id)name photoLibrary:(id)library completionHandler:(id)handler;
+ (void)performBootstrapWithSourcePerson:(id)person context:(id)context synchronous:(BOOL)synchronous completion:(id)completion;
@end

@implementation PXPeopleBootstrap

+ (void)_mergePerson:(id)person context:(id)context toPerson:(id)toPerson
{
  v22[2] = *MEMORY[0x1E69E9840];
  personCopy = person;
  contextCopy = context;
  toPersonCopy = toPerson;
  v10 = toPersonCopy;
  if (personCopy && toPersonCopy && ([personCopy isEqual:toPersonCopy] & 1) == 0 && objc_msgSend(personCopy, "px_isSameDetectionTypeAsPerson:", v10))
  {
    type = [v10 type];
    type2 = [personCopy type];
    if (type >= type2)
    {
      v13 = v10;
    }

    else
    {
      v13 = personCopy;
    }

    if (type >= type2)
    {
      v14 = personCopy;
    }

    else
    {
      v14 = v10;
    }

    v15 = v13;
    v16 = v14;
    v17 = MEMORY[0x1E6978990];
    v22[0] = v16;
    v22[1] = v15;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    localIdentifier = [v15 localIdentifier];
    v20 = [v17 changeRequestForMergingPersons:v18 nominalTargetIdentifier:localIdentifier];

    targetPerson = [v20 targetPerson];
    [contextCopy setTargetPerson:targetPerson];
  }
}

+ (void)_namePerson:(id)person toContact:(id)contact withChangeRequest:(id)request
{
  contactCopy = contact;
  requestCopy = request;
  identifier = [contactCopy identifier];
  if (identifier)
  {
    v8 = [MEMORY[0x1E6978980] fullNameFromContact:contactCopy];
    v9 = [MEMORY[0x1E6978980] displayNameFromContact:contactCopy];
    v10 = +[PXPeopleUtilities sharedContactStore];
    v11 = [MEMORY[0x1E69BE380] matchingDictionaryForContact:contactCopy contactStore:v10];
    [requestCopy setContactMatchingDictionary:v11];
    [requestCopy setPersonUri:identifier];
    [requestCopy setName:v8];
    [requestCopy setDisplayName:v9];
  }
}

+ (void)_namePerson:(id)person toString:(id)string withChangeRequest:(id)request
{
  personCopy = person;
  stringCopy = string;
  requestCopy = request;
  displayName = [personCopy displayName];
  if (([displayName isEqualToString:stringCopy] & 1) == 0)
  {

    goto LABEL_5;
  }

  personUri = [personCopy personUri];
  v11 = [personUri length];

  if (v11)
  {
LABEL_5:
    [requestCopy setName:stringCopy];
    [requestCopy setDisplayName:stringCopy];
    [requestCopy setPersonUri:&stru_1F1741150];
    [requestCopy setContactMatchingDictionary:MEMORY[0x1E695E0F8]];
  }
}

+ (void)_namePerson:(id)person context:(id)context withChangeRequest:(id)request
{
  personCopy = person;
  contextCopy = context;
  requestCopy = request;
  nameSelection = [contextCopy nameSelection];
  v11 = nameSelection;
  if (nameSelection)
  {
    selectionType = [nameSelection selectionType];
    switch(selectionType)
    {
      case 1:
        person = [v11 person];
        [self _mergePerson:personCopy context:contextCopy toPerson:person];

        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.naming.personChosen" withPayload:MEMORY[0x1E695E0F8]];
        [personCopy verifiedType];
        goto LABEL_16;
      case 2:
        contact = [v11 contact];
        v15 = [PXPeopleBootstrap _namePerson:personCopy toContact:contact changeRequest:requestCopy context:contextCopy];
        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.naming.contactChosen" withPayload:MEMORY[0x1E695E0F8]];

        break;
      case 3:
        name = [v11 name];
        [self _namePerson:personCopy toString:name withChangeRequest:requestCopy];

        [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.people.naming.stringChosen" withPayload:MEMORY[0x1E695E0F8]];
        v14 = personCopy;
        v15 = 0;
LABEL_12:
        if (![v14 verifiedType] && !v15 && objc_msgSend(contextCopy, "bootstrapType") == 1)
        {
          photoLibrary = [personCopy photoLibrary];
          [requestCopy setManualOrder:{+[PXPeopleUtilities manualOrderForInsertingAtEndOfSectionWithType:photoLibrary:](PXPeopleUtilities, "manualOrderForInsertingAtEndOfSectionWithType:photoLibrary:", 0, photoLibrary)}];
        }

        goto LABEL_16;
      default:
        v15 = 0;
        break;
    }

    v14 = personCopy;
    goto LABEL_12;
  }

  if ([contextCopy wantsContactUnlinkage])
  {
    [requestCopy setName:&stru_1F1741150];
    [requestCopy setDisplayName:&stru_1F1741150];
    [requestCopy setPersonUri:&stru_1F1741150];
    [requestCopy setContactMatchingDictionary:MEMORY[0x1E695E0F8]];
  }

LABEL_16:
}

+ (BOOL)_namePerson:(id)person toContact:(id)contact changeRequest:(id)request context:(id)context
{
  personCopy = person;
  contactCopy = contact;
  requestCopy = request;
  contextCopy = context;
  identifier = [contactCopy identifier];
  photoLibrary = [personCopy photoLibrary];
  v16 = [PXPeopleUtilities personWithPersonUri:identifier photoLibrary:photoLibrary];

  if (v16)
  {
    v26 = contextCopy;
    v17 = [MEMORY[0x1E6978990] changeRequestForPerson:v16];
    [self _namePerson:v16 toContact:contactCopy withChangeRequest:v17];
    v18 = [v16 isEqual:personCopy];
    if (v18)
    {
      [self _namePerson:personCopy toContact:contactCopy withChangeRequest:requestCopy];
    }

    else
    {
      v24 = [MEMORY[0x1E6978990] changeRequestForPerson:v16];
      [self _namePerson:v16 toContact:contactCopy withChangeRequest:v24];
      v25 = requestCopy;
      localIdentifier = [v16 localIdentifier];
      photoLibrary2 = [personCopy photoLibrary];
      v22 = [PXPeopleUtilities personWithLocalIdentifier:localIdentifier photoLibrary:photoLibrary2];

      contextCopy = v26;
      [self _mergePerson:personCopy context:v26 toPerson:v22];

      v16 = v22;
      requestCopy = v25;
    }

    v19 = v18 ^ 1;
  }

  else
  {
    [self _namePerson:personCopy toContact:contactCopy withChangeRequest:requestCopy];
    v19 = 0;
  }

  return v19;
}

+ (void)_unfavoritePersonWithChangeRequest:(id)request photoLibrary:(id)library
{
  libraryCopy = library;
  requestCopy = request;
  [requestCopy setType:0];
  v6 = [PXPeopleUtilities manualOrderForInsertingAtEndOfSectionWithType:0 photoLibrary:libraryCopy];

  [requestCopy setManualOrder:v6];
}

+ (void)_favoritePersonWithChangeRequest:(id)request photoLibrary:(id)library
{
  libraryCopy = library;
  requestCopy = request;
  [requestCopy setType:1];
  v6 = [PXPeopleUtilities manualOrderForInsertingAtEndOfSectionWithType:1 photoLibrary:libraryCopy];

  [requestCopy setManualOrder:v6];
}

+ (void)nameAndVerifyPerson:(id)person toName:(id)name photoLibrary:(id)library completionHandler:(id)handler
{
  personCopy = person;
  nameCopy = name;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __79__PXPeopleBootstrap_nameAndVerifyPerson_toName_photoLibrary_completionHandler___block_invoke;
  v13[3] = &unk_1E774C620;
  v14 = personCopy;
  v15 = nameCopy;
  v11 = nameCopy;
  v12 = personCopy;
  [library performChanges:v13 completionHandler:handler];
}

void __79__PXPeopleBootstrap_nameAndVerifyPerson_toName_photoLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  if ([*(a1 + 32) verifiedType] != 1)
  {
    [v2 setVerifiedType:1];
  }

  [v2 setName:*(a1 + 40)];
  [v2 setDisplayName:*(a1 + 40)];
}

+ (void)nameAndVerifyPerson:(id)person toContact:(id)contact photoLibrary:(id)library completionHandler:(id)handler
{
  personCopy = person;
  contactCopy = contact;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __82__PXPeopleBootstrap_nameAndVerifyPerson_toContact_photoLibrary_completionHandler___block_invoke;
  v13[3] = &unk_1E774C620;
  v14 = personCopy;
  v15 = contactCopy;
  v11 = contactCopy;
  v12 = personCopy;
  [library performChanges:v13 completionHandler:handler];
}

void __82__PXPeopleBootstrap_nameAndVerifyPerson_toContact_photoLibrary_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  if ([*(a1 + 32) verifiedType] != 1)
  {
    [v2 setVerifiedType:1];
  }

  [PXPeopleBootstrap _namePerson:*(a1 + 32) toContact:*(a1 + 40) changeRequest:v2 context:0];
}

+ (void)performBootstrapWithSourcePerson:(id)person context:(id)context synchronous:(BOOL)synchronous completion:(id)completion
{
  synchronousCopy = synchronous;
  personCopy = person;
  contextCopy = context;
  completionCopy = completion;
  v14 = personCopy;
  [contextCopy setTargetPerson:v14];
  v15 = +[PXPeopleUISettings sharedInstance];
  if (([v15 enableBootstrapDemoMode] & 1) != 0 || objc_msgSend(v15, "useBootstrapMockDataSource"))
  {
LABEL_3:
    v16 = v14;
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0, 0);
      v16 = v14;
    }

    goto LABEL_12;
  }

  delayedPersonBlock = [contextCopy delayedPersonBlock];

  v18 = v14;
  if (delayedPersonBlock)
  {
    delayedPersonBlock2 = [contextCopy delayedPersonBlock];
    v18 = delayedPersonBlock2[2]();

    if (!v18)
    {
      goto LABEL_3;
    }

    [contextCopy setTargetPerson:v18];
  }

  bootstrapType = [contextCopy bootstrapType];
  photoLibrary = [v18 photoLibrary];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PXPeopleBootstrap_performBootstrapWithSourcePerson_context_synchronous_completion___block_invoke;
  aBlock[3] = &unk_1E7746980;
  v22 = v18;
  v43 = v22;
  v31 = synchronousCopy;
  v23 = contextCopy;
  v44 = v23;
  v46 = bootstrapType;
  v24 = photoLibrary;
  v45 = v24;
  v47 = a2;
  selfCopy = self;
  v25 = _Block_copy(aBlock);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __85__PXPeopleBootstrap_performBootstrapWithSourcePerson_context_synchronous_completion___block_invoke_2;
  v35[3] = &unk_1E77469A8;
  v36 = v23;
  v16 = v22;
  v37 = v16;
  v26 = v24;
  v38 = v26;
  v40 = a2;
  selfCopy2 = self;
  v39 = completionCopy;
  v27 = _Block_copy(v35);
  v28 = v27;
  if (v31)
  {
    v34 = 0;
    v29 = [v26 performChangesAndWait:v25 error:&v34];
    v30 = v34;
    (v28)[2](v28, v29, v30);
  }

  else
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __85__PXPeopleBootstrap_performBootstrapWithSourcePerson_context_synchronous_completion___block_invoke_215;
    v32[3] = &unk_1E7747648;
    v33 = v27;
    [v26 performChanges:v25 completionHandler:v32];
    v30 = v33;
  }

LABEL_12:
}

void __85__PXPeopleBootstrap_performBootstrapWithSourcePerson_context_synchronous_completion___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E6978990] changeRequestForPerson:*(a1 + 32)];
  if ([*(a1 + 32) verifiedType] != 1)
  {
    [v2 setVerifiedType:1];
  }

  if (([*(a1 + 40) skipInitialAction] & 1) == 0)
  {
    v3 = *(a1 + 56);
    if (v3 != 2)
    {
      if (!v3)
      {
        [PXPeopleBootstrap _favoritePersonWithChangeRequest:v2 photoLibrary:*(a1 + 48)];
        goto LABEL_9;
      }

      if (![*(a1 + 40) wantsToBeAddedToPeopleAlbum])
      {
        goto LABEL_9;
      }
    }

    [PXPeopleBootstrap _addToPeopleAlbumWithChangeRequest:v2 photoLibrary:*(a1 + 48)];
  }

LABEL_9:
  if (![*(a1 + 40) skipInitialAction] || *(a1 + 56) != 1)
  {
    [PXPeopleBootstrap _namePerson:*(a1 + 32) context:*(a1 + 40) withChangeRequest:v2];
  }

  v4 = [*(a1 + 40) keyAsset];
  v5 = v4;
  if (v4)
  {
    v6 = off_1E771E000;
    v7 = *(a1 + 32);
    v28[0] = v4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
    v9 = [PXPeopleUtilities facesForPerson:v7 inAssets:v8];
    v10 = [v9 firstObject];

    if (v10)
    {
LABEL_17:
      [v2 setKeyFace:v10];

      goto LABEL_18;
    }

    v11 = [*(a1 + 40) nameSelection];
    v12 = [v11 person];

    if (v12)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_16:
        v13 = v6[333];
        v27 = v5;
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
        v15 = [(__objc2_class *)v13 facesForPerson:v12 inAssets:v14];
        v10 = [v15 firstObject];

        goto LABEL_17;
      }

      v22 = [MEMORY[0x1E696AAA8] currentHandler];
      v23 = *(a1 + 64);
      v24 = *(a1 + 72);
      v19 = v22;
      v25 = objc_opt_class();
      v21 = NSStringFromClass(v25);
      v26 = [v12 px_descriptionForAssertionMessage];
      [v19 handleFailureInMethod:v23 object:v24 file:@"PXPeopleBootstrap.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.nameSelection.person", v21, v26}];

      v6 = off_1E771E000;
    }

    else
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v19 = v16;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      [v19 handleFailureInMethod:v17 object:v18 file:@"PXPeopleBootstrap.m" lineNumber:102 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.nameSelection.person", v21}];
    }

    goto LABEL_16;
  }

LABEL_18:
}

void __85__PXPeopleBootstrap_performBootstrapWithSourcePerson_context_synchronous_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [*(a1 + 32) targetPerson];
    v7 = [*(a1 + 32) suggestionManager];
    v8 = [v7 commitUserResponsesToPerson:v6];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v6;
    }

    [*(a1 + 32) setTargetPerson:v10];

    v11 = [*(a1 + 32) targetPerson];

    [PXPeopleUtilities temporarilySuppressBootstrapOrSuggestionForPerson:v11];
    if (v11 != *(a1 + 40))
    {
      [PXPeopleUtilities temporarilySuppressBootstrapOrSuggestionForPerson:?];
    }

    v12 = [*(a1 + 48) librarySpecificFetchOptions];
    v13 = [MEMORY[0x1E6978830] px_defaultDetectionTypes];
    [v12 setIncludedDetectionTypes:v13];

    v14 = MEMORY[0x1E6978980];
    v15 = [*(a1 + 40) localIdentifier];
    v37[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
    v17 = [v14 fetchPersonsWithLocalIdentifiers:v16 options:v12];

    v18 = [v17 firstObject];
    v19 = [*(a1 + 32) personSuggestion];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_11;
    }

    v21 = [*(a1 + 32) personSuggestion];
    if (v21)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_10:
        v22 = [v21 personSuggestionUpdatedPerson:v18];
        [*(a1 + 32) setPersonSuggestion:v22];

LABEL_11:
        goto LABEL_14;
      }

      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v30 = *(a1 + 72);
      v32 = *(a1 + 64);
      v27 = objc_opt_class();
      v26 = NSStringFromClass(v27);
      v28 = [v21 px_descriptionForAssertionMessage];
      [v24 handleFailureInMethod:v32 object:v30 file:@"PXPeopleBootstrap.m" lineNumber:127 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"context.personSuggestion", v26, v28}];
    }

    else
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v29 = *(a1 + 72);
      v31 = *(a1 + 64);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      [v24 handleFailureInMethod:v31 object:v29 file:@"PXPeopleBootstrap.m" lineNumber:127 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"context.personSuggestion", v26}];
    }

    goto LABEL_10;
  }

  v11 = PLUIGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v34 = v5;
    v35 = 2080;
    v36 = "+[PXPeopleBootstrap performBootstrapWithSourcePerson:context:synchronous:completion:]_block_invoke_2";
    _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "People bootstrap change request error: %@ (%s)", buf, 0x16u);
  }

LABEL_14:

  v23 = *(a1 + 56);
  if (v23)
  {
    (*(v23 + 16))(v23, a2, v5);
  }
}

void __85__PXPeopleBootstrap_performBootstrapWithSourcePerson_context_synchronous_completion___block_invoke_215(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PXPeopleBootstrap_performBootstrapWithSourcePerson_context_synchronous_completion___block_invoke_2_216;
  block[3] = &unk_1E774A940;
  v7 = *(a1 + 32);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

+ (CGSize)preferredBootstrapSize
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

@end