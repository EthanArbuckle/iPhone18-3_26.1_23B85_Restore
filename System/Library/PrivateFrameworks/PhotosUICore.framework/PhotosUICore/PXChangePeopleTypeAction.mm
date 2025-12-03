@interface PXChangePeopleTypeAction
- (PXChangePeopleTypeAction)initWithPeople:(id)people type:(int64_t)type;
- (id)localizedActionName;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
- (void)setFirstManualOrder:(unint64_t)order;
@end

@implementation PXChangePeopleTypeAction

- (void)performUndo:(id)undo
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__PXChangePeopleTypeAction_performUndo___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:undo];
}

void __40__PXChangePeopleTypeAction_performUndo___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [*(a1 + 32) collections];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [MEMORY[0x1E6978990] changeRequestForPerson:v6];
        [v7 setType:{objc_msgSend(v6, "type")}];
        [v7 setManualOrder:objc_msgSend(v6 verified:{"manualOrder"), 0}];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)performAction:(id)action
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __42__PXChangePeopleTypeAction_performAction___block_invoke;
  v3[3] = &unk_1E774C648;
  v3[4] = self;
  [(PXPhotosAction *)self performChanges:v3 completionHandler:action];
}

void __42__PXChangePeopleTypeAction_performAction___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) type];
  v3 = [*(a1 + 32) firstManualOrder];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [*(a1 + 32) photoLibrary];
    v3 = [PXPeopleUtilities manualOrderForInsertingAtEndOfSectionWithType:v2 photoLibrary:v4];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [*(a1 + 32) collections];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [MEMORY[0x1E6978990] changeRequestForPerson:*(*(&v11 + 1) + 8 * i)];
        [v10 setType:v2];
        [v10 setManualOrder:v3 verified:1];
        v3 += v2 != -1;
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)localizedActionName
{
  selfCopy = self;
  collections = [(PXChangePeopleTypeAction *)self collections];
  type = [selfCopy type];
  if (type == -1)
  {
    photoLibrary = [selfCopy photoLibrary];
    px_peoplePetsHomeVisibility = [photoLibrary px_peoplePetsHomeVisibility];

    PXLocalizedStringForPeople(collections, @"PXPeopleHomeRemovePeopleButton");
    objc_claimAutoreleasedReturnValue();
    PXLocalizedStringForPeoplePetsHomeTitle(px_peoplePetsHomeVisibility);
    objc_claimAutoreleasedReturnValue();
    PXStringWithValidatedFormat();
  }

  if (type)
  {
    if (type != 1)
    {
      goto LABEL_8;
    }

    v5 = @"PXPeopleFavoriteThisPerson";
  }

  else
  {
    v5 = @"PXPeopleUnfavoriteThisPerson";
  }

  selfCopy = PXLocalizedStringForPeople(collections, v5);
LABEL_8:

  return selfCopy;
}

- (void)setFirstManualOrder:(unint64_t)order
{
  if ([(PXAction *)self executionStarted])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXChangePeopleTypeAction.m" lineNumber:46 description:{@"%s cannot be called after the receiver has started executing.", "-[PXChangePeopleTypeAction setFirstManualOrder:]"}];
  }

  self->_firstManualOrder = order;
}

- (PXChangePeopleTypeAction)initWithPeople:(id)people type:(int64_t)type
{
  peopleCopy = people;
  firstObject = [peopleCopy firstObject];
  v8 = firstObject;
  if (firstObject)
  {
    photoLibrary = [firstObject photoLibrary];
    v15.receiver = self;
    v15.super_class = PXChangePeopleTypeAction;
    v10 = [(PXPhotosAction *)&v15 initWithPhotoLibrary:photoLibrary];

    if (v10)
    {
      v11 = [peopleCopy copy];
      collections = v10->_collections;
      v10->_collections = v11;

      v10->_type = type;
      v10->_firstManualOrder = 0x7FFFFFFFFFFFFFFFLL;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end