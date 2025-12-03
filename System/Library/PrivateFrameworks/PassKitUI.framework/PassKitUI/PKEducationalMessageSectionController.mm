@interface PKEducationalMessageSectionController
- (PKEducationalMessageSectionController)initWithConfiguration:(id)configuration;
- (id)cellRegistrationForItem:(id)item;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
@end

@implementation PKEducationalMessageSectionController

- (PKEducationalMessageSectionController)initWithConfiguration:(id)configuration
{
  v13[1] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = PKEducationalMessageSectionController;
  v5 = [(PKEducationalMessageSectionController *)&v11 init];
  if (v5)
  {
    if (configurationCopy)
    {
      v13[0] = configurationCopy;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }

    else
    {
      v6 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v5->_items, v6);
    if (configurationCopy)
    {
    }

    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v12 = uUIDString;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1];
    [(PKDynamicListSectionController *)v5 setIdentifiers:v9];
  }

  return v5;
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v5 appendItems:self->_items];

  return v5;
}

- (id)cellRegistrationForItem:(id)item
{
  v3 = MEMORY[0x1E69DC800];
  v4 = objc_opt_class();

  return [v3 registrationWithCellClass:v4 configurationHandler:&__block_literal_global_200];
}

@end