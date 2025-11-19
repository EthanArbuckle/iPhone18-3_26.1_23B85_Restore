@interface PKEducationalMessageSectionController
- (PKEducationalMessageSectionController)initWithConfiguration:(id)a3;
- (id)cellRegistrationForItem:(id)a3;
- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4;
@end

@implementation PKEducationalMessageSectionController

- (PKEducationalMessageSectionController)initWithConfiguration:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKEducationalMessageSectionController;
  v5 = [(PKEducationalMessageSectionController *)&v11 init];
  if (v5)
  {
    if (v4)
    {
      v13[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_items, v6);
    if (v4)
    {
    }

    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];
    v12 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [(PKDynamicListSectionController *)v5 setIdentifiers:v9];
  }

  return v5;
}

- (id)snapshotWithPreviousSnapshot:(id)a3 forSectionIdentifier:(id)a4
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_items];

  return v5;
}

- (id)cellRegistrationForItem:(id)a3
{
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();

  return [v3 registrationWithCellClass:v4 configurationHandler:&__block_literal_global_200];
}

@end