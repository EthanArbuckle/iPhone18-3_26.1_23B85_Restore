@interface PXMovePersonAction
- (PXMovePersonAction)initWithSourcePeople:(id)people sourceType:(int64_t)type destinationPeople:(id)destinationPeople destinationManualOrder:(int64_t)order destinationType:(int64_t)destinationType targetLocalIdentifier:(id)identifier otherPeople:(id)otherPeople;
- (id)localizedActionName;
- (void)changeRequestForUndo:(id)undo updateType:(BOOL)type;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXMovePersonAction

- (void)changeRequestForUndo:(id)undo updateType:(BOOL)type
{
  typeCopy = type;
  v17 = *MEMORY[0x1E69E9840];
  undoCopy = undo;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [undoCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(undoCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        v11 = [MEMORY[0x1E6978990] changeRequestForPerson:v10];
        [v11 setManualOrder:{objc_msgSend(v10, "manualOrder")}];
        if (typeCopy)
        {
          [v11 setType:{objc_msgSend(v10, "type")}];
        }
      }

      v7 = [undoCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__PXMovePersonAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
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

- (void)performAction:(id)action
{
  actionCopy = action;
  sourcePeople = [(PXMovePersonAction *)self sourcePeople];
  destinationType = [(PXMovePersonAction *)self destinationType];
  v7 = objc_opt_new();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__PXMovePersonAction_performAction___block_invoke;
  v10[3] = &unk_1E774A768;
  v10[4] = self;
  v11 = sourcePeople;
  v12 = v7;
  v13 = destinationType;
  v8 = v7;
  v9 = sourcePeople;
  [(PXPhotosAction *)self performChanges:v10 completionHandler:actionCopy];
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
  selfCopy = self;
  sourcePeople = [(PXMovePersonAction *)self sourcePeople];
  sourceType = [(PXMovePersonAction *)selfCopy sourceType];
  if (sourceType == [(PXMovePersonAction *)selfCopy destinationType])
  {
    if ([sourcePeople count] < 2)
    {
      firstObject = [sourcePeople firstObject];
      px_isPet = [firstObject px_isPet];

      if (px_isPet)
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
    destinationType = [(PXMovePersonAction *)selfCopy destinationType];
    if (destinationType == -1)
    {
      photoLibrary = [(PXPhotosAction *)selfCopy photoLibrary];
      px_peoplePetsHomeVisibility = [photoLibrary px_peoplePetsHomeVisibility];

      firstObject2 = [sourcePeople firstObject];
      PXLocalizedStringForPersonOrPetAndVisibility(firstObject2, 0, @"PXPeopleHomeRemovePersonButton");
      objc_claimAutoreleasedReturnValue();
      PXLocalizedStringForPeoplePetsHomeTitle(px_peoplePetsHomeVisibility);
      objc_claimAutoreleasedReturnValue();
      PXStringWithValidatedFormat();
    }

    if (destinationType)
    {
      if (destinationType != 1)
      {
        goto LABEL_16;
      }

      v7 = @"PXPeopleFavoriteThisPerson";
    }

    else
    {
      v7 = @"PXPeopleUnfavoriteThisPerson";
    }

    v10 = PXLocalizedStringForPeople(sourcePeople, v7);
  }

  selfCopy = v10;
LABEL_16:

  return selfCopy;
}

- (PXMovePersonAction)initWithSourcePeople:(id)people sourceType:(int64_t)type destinationPeople:(id)destinationPeople destinationManualOrder:(int64_t)order destinationType:(int64_t)destinationType targetLocalIdentifier:(id)identifier otherPeople:(id)otherPeople
{
  peopleCopy = people;
  destinationPeopleCopy = destinationPeople;
  identifierCopy = identifier;
  otherPeopleCopy = otherPeople;
  firstObject = [peopleCopy firstObject];
  photoLibrary = [firstObject photoLibrary];
  v33.receiver = self;
  v33.super_class = PXMovePersonAction;
  v21 = [(PXPhotosAction *)&v33 initWithPhotoLibrary:photoLibrary];

  if (v21)
  {
    objc_storeStrong(&v21->_sourcePeople, people);
    v21->_sourceType = type;
    v22 = [destinationPeopleCopy copy];
    destinationPeople = v21->_destinationPeople;
    v21->_destinationPeople = v22;

    v21->_destinationManualOrder = order;
    v21->_destinationType = destinationType;
    v24 = [identifierCopy copy];
    targetLocalIdentifier = v21->_targetLocalIdentifier;
    v21->_targetLocalIdentifier = v24;

    v26 = [otherPeopleCopy copy];
    otherPeople = v21->_otherPeople;
    v21->_otherPeople = v26;

    photoLibrary2 = [(PXPhotosAction *)v21 photoLibrary];
    px_localDefaults = [photoLibrary2 px_localDefaults];
    localDefaults = v21->_localDefaults;
    v21->_localDefaults = px_localDefaults;
  }

  return v21;
}

@end