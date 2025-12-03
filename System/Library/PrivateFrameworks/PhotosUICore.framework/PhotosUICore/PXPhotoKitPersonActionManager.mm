@interface PXPhotoKitPersonActionManager
- (BOOL)canPerformActionType:(id)type;
- (BOOL)isDestructiveActionType:(id)type;
- (Class)_validatedPerformerClassForActionType:(id)type checkIfCanPerformAction:(BOOL)action;
- (PXPhotoKitPersonActionManager)init;
- (PXPhotoKitPersonActionManager)initWithPeople:(id)people;
- (PXPhotoKitPersonActionManager)initWithPerson:(id)person;
- (id)_actionPerformerForActionType:(id)type checkIfCanPerformAction:(BOOL)action;
- (id)actionPerformerForActionType:(id)type parameters:(id)parameters;
- (id)actionTypeForGenericType:(id)type;
- (id)contextMenuElementsWithHandler:(id)handler;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case;
- (id)systemImageNameForActionType:(id)type;
@end

@implementation PXPhotoKitPersonActionManager

- (id)contextMenuElementsWithHandler:(id)handler
{
  v19[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  array = [MEMORY[0x1E695DF70] array];
  v19[0] = @"PXPhotoKitPersonActionTypeFavorite";
  v19[1] = @"PXPhotoKitPersonActionTypeCustomize";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v7 = [(PXActionManager *)self actionItemsForActionTypes:v6 handler:handlerCopy];
  [array addObjectsFromArray:v7];

  v8 = objc_opt_new();
  [array addObject:v8];

  v18[0] = @"PXPhotoKitPersonActionTypeBlock";
  v18[1] = @"PXPhotoKitPersonActionTypeRemove";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [(PXActionManager *)self actionItemsForActionTypes:v9 handler:handlerCopy];
  [array addObjectsFromArray:v10];

  v11 = +[PXRootSettings sharedInstance];
  LODWORD(v10) = [v11 canShowInternalUI];

  if (v10)
  {
    v12 = objc_opt_new();
    [array addObject:v12];

    v17[0] = @"PXPhotoKitPersonActionTypeCopyInternalURL";
    v17[1] = @"PXPhotoKitPersonInternalActionTypeMagic";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [(PXActionManager *)self actionItemsForActionTypes:v13 handler:handlerCopy];
    v15 = [off_1E7721420 menuWithTitle:@" Internal" childElements:v14];
    [array addObject:v15];
  }

  return array;
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  if ([(PXActionManager *)self isActionTypeAllowed:typeCopy])
  {
    v5 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:typeCopy checkIfCanPerformAction:1]!= 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDestructiveActionType:(id)type
{
  v3 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:type checkIfCanPerformAction:0];

  return [(objc_class *)v3 isActionDestructive];
}

- (id)systemImageNameForActionType:(id)type
{
  v4 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:type checkIfCanPerformAction:0];
  people = [(PXPhotoKitPersonActionManager *)self people];
  firstObject = [people firstObject];
  v7 = [(objc_class *)v4 systemImageNameForPerson:firstObject];

  return v7;
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case
{
  v5 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:type checkIfCanPerformAction:0];
  people = [(PXPhotoKitPersonActionManager *)self people];
  firstObject = [people firstObject];
  v8 = [(objc_class *)v5 localizedTitleForPerson:firstObject];

  return v8;
}

- (id)actionPerformerForActionType:(id)type parameters:(id)parameters
{
  v64 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  parametersCopy = parameters;
  if (![typeCopy isEqualToString:@"PXPhotoKitPersonActionTypeMove"])
  {
    if (![typeCopy isEqualToString:@"PXPhotoKitPersonActionTypeAddContent"])
    {
      v16 = [(PXPhotoKitPersonActionManager *)self actionPerformerForActionType:typeCopy];
      goto LABEL_33;
    }

    v17 = [parametersCopy objectForKeyedSubscript:*off_1E77219C0];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_14:
        people = [(PXPhotoKitPersonActionManager *)self people];
        fetchedObjects = [people fetchedObjects];
        v20 = [fetchedObjects arrayByAddingObjectsFromArray:v17];

        v21 = [(PXPhotoKitPersonActionManager *)self _actionPerformerForActionType:@"PXPhotoKitPersonActionTypeMerge" checkIfCanPerformAction:0];
        selfCopy = self;
        v16 = v21;
        photoLibrary = [(PXPhotoKitPersonActionManager *)selfCopy photoLibrary];
        v24 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v20 photoLibrary:photoLibrary];
        [v16 setPeople:v24];

        goto LABEL_33;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v49 = objc_opt_class();
      v46 = NSStringFromClass(v49);
      px_descriptionForAssertionMessage = [v17 px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:164 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeyContent]", v46, px_descriptionForAssertionMessage}];
    }

    else
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:164 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parameters[PXActionParameterKeyContent]", v46}];
    }

    goto LABEL_14;
  }

  v9 = [parametersCopy objectForKeyedSubscript:*off_1E77219C8];
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parameters[PXActionParameterKeySourceObjects]", v37}];
LABEL_39:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v37 = NSStringFromClass(v38);
    px_descriptionForAssertionMessage2 = [v9 px_descriptionForAssertionMessage];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeySourceObjects]", v37, px_descriptionForAssertionMessage2}];

    goto LABEL_39;
  }

LABEL_4:
  v10 = [parametersCopy objectForKeyedSubscript:*off_1E77219D0];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      px_descriptionForAssertionMessage3 = [v10 px_descriptionForAssertionMessage];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:118 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeyTargetObject]", v42, px_descriptionForAssertionMessage3}];
    }
  }

  v61 = a2;
  firstObject = [v9 firstObject];
  localIdentifier = [v10 localIdentifier];
  localIdentifier2 = [firstObject localIdentifier];
  v14 = [localIdentifier2 isEqualToString:localIdentifier];

  if (!v14)
  {
    selfCopy2 = self;
    if (v10)
    {
      type = [firstObject type];
      if (type == [v10 type])
      {
        manualOrder = [firstObject manualOrder];
        if (manualOrder >= [v10 manualOrder])
        {
          v27 = 0;
        }

        else
        {
          v27 = -1;
        }
      }

      else
      {
        v27 = 0;
      }

      v60 = [v10 manualOrder] + v27;
      type2 = [v10 type];
      localIdentifier3 = [v10 localIdentifier];
    }

    else
    {
      [(PXPhotoKitPersonActionManager *)self photoLibrary];
      v29 = v28 = self;
      v30 = [PXPeopleUtilities lastManuallySortedPersonInSectionOfType:0 photoLibrary:v29];

      if (v30)
      {
        self = v28;
      }

      else
      {
        photoLibrary2 = [(PXPhotoKitPersonActionManager *)v28 photoLibrary];
        v30 = [PXPeopleUtilities lastManuallySortedPersonInSectionOfType:1 photoLibrary:photoLibrary2];

        if (v30)
        {
          self = selfCopy2;
        }

        else
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          self = selfCopy2;
          [currentHandler4 handleFailureInMethod:v61 object:selfCopy2 file:@"PXPhotoKitPersonActionManager.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"lastPerson"}];

          v30 = 0;
        }
      }

      v60 = [v30 manualOrder] + 1;
      type2 = [v30 type];

      localIdentifier3 = 0;
    }

    v16 = [(PXPhotoKitPersonActionManager *)self actionPerformerForActionType:typeCopy];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_30:
        [v16 setSourcePeople:v9];
        [v16 setSourceType:{objc_msgSend(firstObject, "type")}];
        [v16 setDestinationManualOrder:v60];
        [v16 setDestinationType:type2];
        [v16 setTargetLocalIdentifier:localIdentifier3];

        goto LABEL_31;
      }

      currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      px_descriptionForAssertionMessage4 = [v16 px_descriptionForAssertionMessage];
      v57 = v52;
      v54 = v52;
      currentHandler6 = currentHandler5;
      [currentHandler5 handleFailureInMethod:v61 object:selfCopy2 file:@"PXPhotoKitPersonActionManager.m" lineNumber:156 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self actionPerformerForActionType:actionType]", v54, px_descriptionForAssertionMessage4}];
    }

    else
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = objc_opt_class();
      v57 = NSStringFromClass(v48);
      [currentHandler6 handleFailureInMethod:v61 object:selfCopy2 file:@"PXPhotoKitPersonActionManager.m" lineNumber:156 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self actionPerformerForActionType:actionType]", v57}];
    }

    goto LABEL_30;
  }

  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = localIdentifier;
    _os_log_impl(&dword_1A3C1C000, v15, OS_LOG_TYPE_DEFAULT, "Not performing person reorder because the source and target people are the same: %@", buf, 0xCu);
  }

  v16 = 0;
LABEL_31:

  if (v14)
  {
    v33 = 0;
    goto LABEL_34;
  }

LABEL_33:
  v16 = v16;
  v33 = v16;
LABEL_34:

  return v33;
}

- (id)actionTypeForGenericType:(id)type
{
  typeCopy = type;
  personActionTypeByGenericType = [(PXPhotoKitPersonActionManager *)self personActionTypeByGenericType];
  v6 = [personActionTypeByGenericType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (id)_actionPerformerForActionType:(id)type checkIfCanPerformAction:(BOOL)action
{
  actionCopy = action;
  typeCopy = type;
  v7 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:typeCopy checkIfCanPerformAction:actionCopy];
  v8 = MEMORY[0x1E6978650];
  photoLibrary = [(PXPhotoKitPersonActionManager *)self photoLibrary];
  v10 = [v8 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:0 photoLibrary:photoLibrary];

  v11 = [off_1E7721488 alloc];
  v12 = *(off_1E7722228 + 1);
  v19[0] = *off_1E7722228;
  v19[1] = v12;
  v13 = [v11 initWithAssetCollection:v10 keyAssetReference:0 indexPath:v19];
  v14 = [v7 alloc];
  v15 = [v14 initWithActionType:typeCopy assetCollectionReference:v13 parameters:MEMORY[0x1E695E0F8]];

  performerDelegate = [(PXActionManager *)self performerDelegate];
  [v15 setDelegate:performerDelegate];

  people = [(PXPhotoKitPersonActionManager *)self people];
  [v15 setPeople:people];

  return v15;
}

- (Class)_validatedPerformerClassForActionType:(id)type checkIfCanPerformAction:(BOOL)action
{
  actionCopy = action;
  typeCopy = type;
  if (!typeCopy)
  {
    goto LABEL_7;
  }

  performerClassByType = [(PXPhotoKitPersonActionManager *)self performerClassByType];
  v9 = [performerClassByType objectForKeyedSubscript:typeCopy];

  if (([v9 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"[performerClass isSubclassOfClass:PXAssetCollectionActionPerformer.class]"}];
  }

  if ([v9 conformsToProtocol:&unk_1F1928C60])
  {
    if (!actionCopy)
    {
      goto LABEL_8;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"[performerClass conformsToProtocol:@protocol(PXPhotoKitPersonActionPerformer)]"}];

    if (!actionCopy)
    {
      goto LABEL_8;
    }
  }

  people = [(PXPhotoKitPersonActionManager *)self people];
  v11 = [v9 canPerformOn:people];

  if (!v11)
  {
LABEL_7:
    v9 = 0;
  }

LABEL_8:
  v12 = v9;

  return v9;
}

- (PXPhotoKitPersonActionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PXPhotoKitPersonActionManager init]"}];

  abort();
}

- (PXPhotoKitPersonActionManager)initWithPerson:(id)person
{
  v10 = *MEMORY[0x1E69E9840];
  personCopy = person;
  v4 = MEMORY[0x1E695DEC8];
  personCopy2 = person;
  v6 = [v4 arrayWithObjects:&personCopy count:1];

  v7 = [(PXPhotoKitPersonActionManager *)self initWithPeople:v6, personCopy, v10];
  return v7;
}

- (PXPhotoKitPersonActionManager)initWithPeople:(id)people
{
  v24[8] = *MEMORY[0x1E69E9840];
  peopleCopy = people;
  v20.receiver = self;
  v20.super_class = PXPhotoKitPersonActionManager;
  v5 = [(PXPhotoKitPersonActionManager *)&v20 init];
  if (v5)
  {
    firstObject = [peopleCopy firstObject];
    photoLibrary = [firstObject photoLibrary];

    v8 = [peopleCopy copy];
    v9 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v8 photoLibrary:photoLibrary];
    people = v5->_people;
    v5->_people = v9;

    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = photoLibrary;
    v12 = photoLibrary;

    v23[0] = @"PXPhotoKitPersonActionTypeFavorite";
    v24[0] = objc_opt_class();
    v23[1] = @"PXPhotoKitPersonActionTypeCustomize";
    v24[1] = objc_opt_class();
    v23[2] = @"PXPhotoKitPersonActionTypeBlock";
    v24[2] = objc_opt_class();
    v23[3] = @"PXPhotoKitPersonActionTypeRemove";
    v24[3] = objc_opt_class();
    v23[4] = @"PXPhotoKitPersonActionTypeMerge";
    v24[4] = objc_opt_class();
    v23[5] = @"PXPhotoKitPersonActionTypeMove";
    v24[5] = objc_opt_class();
    v23[6] = @"PXPhotoKitPersonActionTypeCopyInternalURL";
    v24[6] = objc_opt_class();
    v23[7] = @"PXPhotoKitPersonInternalActionTypeMagic";
    v24[7] = objc_opt_class();
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:8];
    performerClassByType = v5->_performerClassByType;
    v5->_performerClassByType = v13;

    v15 = *off_1E7721A10;
    v21[0] = *off_1E77219E8;
    v21[1] = v15;
    v22[0] = @"PXPhotoKitPersonActionTypeFavorite";
    v22[1] = @"PXPhotoKitPersonActionTypeRemove";
    v16 = *off_1E77219D8;
    v21[2] = *off_1E77219F8;
    v21[3] = v16;
    v22[2] = @"PXPhotoKitPersonActionTypeMerge";
    v22[3] = @"PXPhotoKitPersonActionTypeAddContent";
    v21[4] = *off_1E7721A08;
    v22[4] = @"PXPhotoKitPersonActionTypeMove";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:5];
    personActionTypeByGenericType = v5->_personActionTypeByGenericType;
    v5->_personActionTypeByGenericType = v17;
  }

  return v5;
}

@end