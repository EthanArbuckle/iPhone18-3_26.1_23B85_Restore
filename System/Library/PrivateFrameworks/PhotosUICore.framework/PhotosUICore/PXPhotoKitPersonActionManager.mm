@interface PXPhotoKitPersonActionManager
- (BOOL)canPerformActionType:(id)a3;
- (BOOL)isDestructiveActionType:(id)a3;
- (Class)_validatedPerformerClassForActionType:(id)a3 checkIfCanPerformAction:(BOOL)a4;
- (PXPhotoKitPersonActionManager)init;
- (PXPhotoKitPersonActionManager)initWithPeople:(id)a3;
- (PXPhotoKitPersonActionManager)initWithPerson:(id)a3;
- (id)_actionPerformerForActionType:(id)a3 checkIfCanPerformAction:(BOOL)a4;
- (id)actionPerformerForActionType:(id)a3 parameters:(id)a4;
- (id)actionTypeForGenericType:(id)a3;
- (id)contextMenuElementsWithHandler:(id)a3;
- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4;
- (id)systemImageNameForActionType:(id)a3;
@end

@implementation PXPhotoKitPersonActionManager

- (id)contextMenuElementsWithHandler:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v19[0] = @"PXPhotoKitPersonActionTypeFavorite";
  v19[1] = @"PXPhotoKitPersonActionTypeCustomize";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v7 = [(PXActionManager *)self actionItemsForActionTypes:v6 handler:v4];
  [v5 addObjectsFromArray:v7];

  v8 = objc_opt_new();
  [v5 addObject:v8];

  v18[0] = @"PXPhotoKitPersonActionTypeBlock";
  v18[1] = @"PXPhotoKitPersonActionTypeRemove";
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v10 = [(PXActionManager *)self actionItemsForActionTypes:v9 handler:v4];
  [v5 addObjectsFromArray:v10];

  v11 = +[PXRootSettings sharedInstance];
  LODWORD(v10) = [v11 canShowInternalUI];

  if (v10)
  {
    v12 = objc_opt_new();
    [v5 addObject:v12];

    v17[0] = @"PXPhotoKitPersonActionTypeCopyInternalURL";
    v17[1] = @"PXPhotoKitPersonInternalActionTypeMagic";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v14 = [(PXActionManager *)self actionItemsForActionTypes:v13 handler:v4];
    v15 = [off_1E7721420 menuWithTitle:@" Internal" childElements:v14];
    [v5 addObject:v15];
  }

  return v5;
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = a3;
  if ([(PXActionManager *)self isActionTypeAllowed:v4])
  {
    v5 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:v4 checkIfCanPerformAction:1]!= 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isDestructiveActionType:(id)a3
{
  v3 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:a3 checkIfCanPerformAction:0];

  return [(objc_class *)v3 isActionDestructive];
}

- (id)systemImageNameForActionType:(id)a3
{
  v4 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:a3 checkIfCanPerformAction:0];
  v5 = [(PXPhotoKitPersonActionManager *)self people];
  v6 = [v5 firstObject];
  v7 = [(objc_class *)v4 systemImageNameForPerson:v6];

  return v7;
}

- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4
{
  v5 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:a3 checkIfCanPerformAction:0];
  v6 = [(PXPhotoKitPersonActionManager *)self people];
  v7 = [v6 firstObject];
  v8 = [(objc_class *)v5 localizedTitleForPerson:v7];

  return v8;
}

- (id)actionPerformerForActionType:(id)a3 parameters:(id)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v7 isEqualToString:@"PXPhotoKitPersonActionTypeMove"])
  {
    if (![v7 isEqualToString:@"PXPhotoKitPersonActionTypeAddContent"])
    {
      v16 = [(PXPhotoKitPersonActionManager *)self actionPerformerForActionType:v7];
      goto LABEL_33;
    }

    v17 = [v8 objectForKeyedSubscript:*off_1E77219C0];
    if (v17)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_14:
        v18 = [(PXPhotoKitPersonActionManager *)self people];
        v19 = [v18 fetchedObjects];
        v20 = [v19 arrayByAddingObjectsFromArray:v17];

        v21 = [(PXPhotoKitPersonActionManager *)self _actionPerformerForActionType:@"PXPhotoKitPersonActionTypeMerge" checkIfCanPerformAction:0];
        v22 = self;
        v16 = v21;
        v23 = [(PXPhotoKitPersonActionManager *)v22 photoLibrary];
        v24 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v20 photoLibrary:v23];
        [v16 setPeople:v24];

        goto LABEL_33;
      }

      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      v49 = objc_opt_class();
      v46 = NSStringFromClass(v49);
      v50 = [v17 px_descriptionForAssertionMessage];
      [v44 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:164 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeyContent]", v46, v50}];
    }

    else
    {
      v44 = [MEMORY[0x1E696AAA8] currentHandler];
      v45 = objc_opt_class();
      v46 = NSStringFromClass(v45);
      [v44 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:164 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parameters[PXActionParameterKeyContent]", v46}];
    }

    goto LABEL_14;
  }

  v9 = [v8 objectForKeyedSubscript:*off_1E77219C8];
  if (!v9)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    [v35 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"parameters[PXActionParameterKeySourceObjects]", v37}];
LABEL_39:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v35 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = objc_opt_class();
    v37 = NSStringFromClass(v38);
    v39 = [v9 px_descriptionForAssertionMessage];
    [v35 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:117 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeySourceObjects]", v37, v39}];

    goto LABEL_39;
  }

LABEL_4:
  v10 = [v8 objectForKeyedSubscript:*off_1E77219D0];
  if (v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      v41 = objc_opt_class();
      v42 = NSStringFromClass(v41);
      v43 = [v10 px_descriptionForAssertionMessage];
      [v40 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:118 description:{@"%@ should be nil or an instance inheriting from %@, but it is %@", @"parameters[PXActionParameterKeyTargetObject]", v42, v43}];
    }
  }

  v61 = a2;
  v11 = [v9 firstObject];
  v12 = [v10 localIdentifier];
  v13 = [v11 localIdentifier];
  v14 = [v13 isEqualToString:v12];

  if (!v14)
  {
    v58 = self;
    if (v10)
    {
      v25 = [v11 type];
      if (v25 == [v10 type])
      {
        v26 = [v11 manualOrder];
        if (v26 >= [v10 manualOrder])
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
      v59 = [v10 type];
      v31 = [v10 localIdentifier];
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
        v32 = [(PXPhotoKitPersonActionManager *)v28 photoLibrary];
        v30 = [PXPeopleUtilities lastManuallySortedPersonInSectionOfType:1 photoLibrary:v32];

        if (v30)
        {
          self = v58;
        }

        else
        {
          v53 = [MEMORY[0x1E696AAA8] currentHandler];
          self = v58;
          [v53 handleFailureInMethod:v61 object:v58 file:@"PXPhotoKitPersonActionManager.m" lineNumber:151 description:{@"Invalid parameter not satisfying: %@", @"lastPerson"}];

          v30 = 0;
        }
      }

      v60 = [v30 manualOrder] + 1;
      v59 = [v30 type];

      v31 = 0;
    }

    v16 = [(PXPhotoKitPersonActionManager *)self actionPerformerForActionType:v7];
    if (v16)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_30:
        [v16 setSourcePeople:v9];
        [v16 setSourceType:{objc_msgSend(v11, "type")}];
        [v16 setDestinationManualOrder:v60];
        [v16 setDestinationType:v59];
        [v16 setTargetLocalIdentifier:v31];

        goto LABEL_31;
      }

      v56 = [MEMORY[0x1E696AAA8] currentHandler];
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v55 = [v16 px_descriptionForAssertionMessage];
      v57 = v52;
      v54 = v52;
      v47 = v56;
      [v56 handleFailureInMethod:v61 object:v58 file:@"PXPhotoKitPersonActionManager.m" lineNumber:156 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[self actionPerformerForActionType:actionType]", v54, v55}];
    }

    else
    {
      v47 = [MEMORY[0x1E696AAA8] currentHandler];
      v48 = objc_opt_class();
      v57 = NSStringFromClass(v48);
      [v47 handleFailureInMethod:v61 object:v58 file:@"PXPhotoKitPersonActionManager.m" lineNumber:156 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[self actionPerformerForActionType:actionType]", v57}];
    }

    goto LABEL_30;
  }

  v15 = PLUIGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v63 = v12;
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

- (id)actionTypeForGenericType:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitPersonActionManager *)self personActionTypeByGenericType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)_actionPerformerForActionType:(id)a3 checkIfCanPerformAction:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(PXPhotoKitPersonActionManager *)self _validatedPerformerClassForActionType:v6 checkIfCanPerformAction:v4];
  v8 = MEMORY[0x1E6978650];
  v9 = [(PXPhotoKitPersonActionManager *)self photoLibrary];
  v10 = [v8 transientAssetCollectionWithAssets:MEMORY[0x1E695E0F0] title:0 identifier:0 photoLibrary:v9];

  v11 = [off_1E7721488 alloc];
  v12 = *(off_1E7722228 + 1);
  v19[0] = *off_1E7722228;
  v19[1] = v12;
  v13 = [v11 initWithAssetCollection:v10 keyAssetReference:0 indexPath:v19];
  v14 = [v7 alloc];
  v15 = [v14 initWithActionType:v6 assetCollectionReference:v13 parameters:MEMORY[0x1E695E0F8]];

  v16 = [(PXActionManager *)self performerDelegate];
  [v15 setDelegate:v16];

  v17 = [(PXPhotoKitPersonActionManager *)self people];
  [v15 setPeople:v17];

  return v15;
}

- (Class)_validatedPerformerClassForActionType:(id)a3 checkIfCanPerformAction:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = [(PXPhotoKitPersonActionManager *)self performerClassByType];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (([v9 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"[performerClass isSubclassOfClass:PXAssetCollectionActionPerformer.class]"}];
  }

  if ([v9 conformsToProtocol:&unk_1F1928C60])
  {
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"[performerClass conformsToProtocol:@protocol(PXPhotoKitPersonActionPerformer)]"}];

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v10 = [(PXPhotoKitPersonActionManager *)self people];
  v11 = [v9 canPerformOn:v10];

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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXPhotoKitPersonActionManager.m" lineNumber:75 description:{@"%s is not available as initializer", "-[PXPhotoKitPersonActionManager init]"}];

  abort();
}

- (PXPhotoKitPersonActionManager)initWithPerson:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v4 = MEMORY[0x1E695DEC8];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v9 count:1];

  v7 = [(PXPhotoKitPersonActionManager *)self initWithPeople:v6, v9, v10];
  return v7;
}

- (PXPhotoKitPersonActionManager)initWithPeople:(id)a3
{
  v24[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PXPhotoKitPersonActionManager;
  v5 = [(PXPhotoKitPersonActionManager *)&v20 init];
  if (v5)
  {
    v6 = [v4 firstObject];
    v7 = [v6 photoLibrary];

    v8 = [v4 copy];
    v9 = [PXPeopleUtilities peopleFetchResultFromFastEnumeration:v8 photoLibrary:v7];
    people = v5->_people;
    v5->_people = v9;

    photoLibrary = v5->_photoLibrary;
    v5->_photoLibrary = v7;
    v12 = v7;

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