@interface PXMovePersonAction
- (PXMovePersonAction)initWithSourcePeople:(id)a3 sourceType:(int64_t)a4 destinationPeople:(id)a5 destinationManualOrder:(int64_t)a6 destinationType:(int64_t)a7 targetLocalIdentifier:(id)a8 otherPeople:(id)a9;
- (id)localizedActionName;
- (void)changeRequestForUndo:(id)a3 updateType:(BOOL)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXMovePersonAction

- (void)changeRequestForUndo:(id)a3 updateType:(BOOL)a4
{
  v4 = a4;
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [MEMORY[0x1E6978990] changeRequestForPerson:v10];
        [v11 setManualOrder:{objc_msgSend(v10, "manualOrder")}];
        if (v4)
        {
          [v11 setType:{objc_msgSend(v10, "type")}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)performUndo:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__PXMovePersonAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:a3];
}

void __34__PXMovePersonAction_performUndo___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 modifiedDestinationPeople];
  [v2 changeRequestForUndo:v3 updateType:0];

  v4 = *(a1 + 32);
  v5 = [v4 modifiedOtherPeople];
  [v4 changeRequestForUndo:v5 updateType:0];

  v6 = *(a1 + 32);
  v7 = [v6 sourcePeople];
  [v6 changeRequestForUndo:v7 updateType:1];

  v8 = *(a1 + 32);
  v9 = v8[20];
  v10 = [v8 sourceSortingType];
  [v9 setNumber:v10 forKey:@"PXPeopleHomeSortingType"];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXMovePersonAction *)self sourcePeople];
  v6 = [(PXMovePersonAction *)self destinationType];
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__PXMovePersonAction_performAction___block_invoke;
  v10[3] = &unk_1E774A768;
  v10[4] = self;
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v7;
  v9 = v5;
  [(PXPhotosAction *)self performChanges:v10 completionHandler:v4];
}

void __36__PXMovePersonAction_performAction___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v30 = [*(a1 + 32) destinationManualOrder];
  v32 = [*(a1 + 32) targetLocalIdentifier];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v2 = [*(a1 + 32) destinationPeople];
  v3 = [v2 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v42;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        if (([*(a1 + 40) containsObject:v8] & 1) == 0)
        {
          v9 = [v8 localIdentifier];
          v10 = [v9 isEqualToString:v32];

          if (v10)
          {
            v30 = v6;
            v6 += [*(a1 + 40) count];
          }

          if ([v8 manualOrder] != v6)
          {
            v11 = [MEMORY[0x1E6978990] changeRequestForPerson:v8];
            [v11 setManualOrder:v6 verified:0];
            [*(a1 + 48) addObject:v8];
          }

          ++v6;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  [*(a1 + 32) setModifiedDestinationPeople:*(a1 + 48)];
  v31 = objc_opt_new();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [*(a1 + 32) otherPeople];
  v13 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    v16 = 1;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v37 + 1) + 8 * j);
        if (([*(a1 + 40) containsObject:v18] & 1) == 0)
        {
          if ([v18 manualOrder] != v16)
          {
            v19 = [MEMORY[0x1E6978990] changeRequestForPerson:v18];
            [v19 setManualOrder:v16 verified:0];
            [v31 addObject:v18];
          }

          ++v16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v14);
  }

  [*(a1 + 32) setModifiedOtherPeople:v31];
  v20 = [*(*(a1 + 32) + 160) numberForKey:@"PXPeopleHomeSortingType"];
  [*(a1 + 32) setSourceSortingType:v20];

  [*(*(a1 + 32) + 160) setNumber:&unk_1F190D948 forKey:@"PXPeopleHomeSortingType"];
  v21 = [v32 length];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = [*(a1 + 32) sourcePeople];
  v23 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    if (v21)
    {
      v25 = v30;
    }

    else
    {
      v25 = v6;
    }

    v26 = *v34;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v33 + 1) + 8 * k);
        v29 = [MEMORY[0x1E6978990] changeRequestForPerson:v28];
        [v29 setManualOrder:v25 verified:1];
        if ([v28 type] != *(a1 + 56))
        {
          [v29 setType:?];
        }

        ++v25;
      }

      v24 = [v22 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v24);
  }
}

- (id)localizedActionName
{
  v2 = self;
  v3 = [(PXMovePersonAction *)self sourcePeople];
  v4 = [(PXMovePersonAction *)v2 sourceType];
  if (v4 == [(PXMovePersonAction *)v2 destinationType])
  {
    if ([v3 count] < 2)
    {
      v8 = [v3 firstObject];
      v9 = [v8 px_isPet];

      if (v9)
      {
        v5 = @"PXMovePersonsActionKey_Pet";
      }

      else
      {
        v5 = @"PXMovePersonsActionKey";
      }
    }

    else
    {
      v5 = @"PXMovePersonsActionKey_PeoplePet";
    }

    v10 = PXLocalizedStringFromTable(v5, @"PhotosUICore");
  }

  else
  {
    v6 = [(PXMovePersonAction *)v2 destinationType];
    if (v6 == -1)
    {
      v11 = [(PXPhotosAction *)v2 photoLibrary];
      v12 = [v11 px_peoplePetsHomeVisibility];

      v13 = [v3 firstObject];
      PXLocalizedStringForPersonOrPetAndVisibility(v13, 0, @"PXPeopleHomeRemovePersonButton");
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringForPeoplePetsHomeTitle(v12);
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_16;
      }

      v7 = @"PXPeopleFavoriteThisPerson";
    }

    else
    {
      v7 = @"PXPeopleUnfavoriteThisPerson";
    }

    v10 = PXLocalizedStringForPeople(v3, v7);
  }

  v2 = v10;
LABEL_16:

  return v2;
}

- (PXMovePersonAction)initWithSourcePeople:(id)a3 sourceType:(int64_t)a4 destinationPeople:(id)a5 destinationManualOrder:(int64_t)a6 destinationType:(int64_t)a7 targetLocalIdentifier:(id)a8 otherPeople:(id)a9
{
  v15 = a3;
  v16 = a5;
  v17 = a8;
  v18 = a9;
  v19 = [v15 firstObject];
  v20 = [v19 photoLibrary];
  v33.receiver = self;
  v33.super_class = PXMovePersonAction;
  v21 = [(PXPhotosAction *)&v33 initWithPhotoLibrary:v20];

  if (v21)
  {
    objc_storeStrong(&v21->_sourcePeople, a3);
    v21->_sourceType = a4;
    v22 = [v16 copy];
    destinationPeople = v21->_destinationPeople;
    v21->_destinationPeople = v22;

    v21->_destinationManualOrder = a6;
    v21->_destinationType = a7;
    v24 = [v17 copy];
    targetLocalIdentifier = v21->_targetLocalIdentifier;
    v21->_targetLocalIdentifier = v24;

    v26 = [v18 copy];
    otherPeople = v21->_otherPeople;
    v21->_otherPeople = v26;

    v28 = [(PXPhotosAction *)v21 photoLibrary];
    v29 = [v28 px_localDefaults];
    localDefaults = v21->_localDefaults;
    v21->_localDefaults = v29;
  }

  return v21;
}

@end