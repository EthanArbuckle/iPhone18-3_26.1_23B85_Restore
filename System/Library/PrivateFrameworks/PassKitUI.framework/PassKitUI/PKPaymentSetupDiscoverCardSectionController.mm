@interface PKPaymentSetupDiscoverCardSectionController
- (PKPaymentSetupDiscoverCardSectionController)init;
- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier;
- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier;
- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier;
@end

@implementation PKPaymentSetupDiscoverCardSectionController

- (PKPaymentSetupDiscoverCardSectionController)init
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = PKPaymentSetupDiscoverCardSectionController;
  v2 = [(PKPaymentSetupDiscoverCardSectionController *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uUIDString = [v3 UUIDString];
    v11[0] = uUIDString;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    identifiers = v2->_identifiers;
    v2->_identifiers = v5;

    v7 = [MEMORY[0x1E69DC800] registrationWithCellClass:objc_opt_class() configurationHandler:&__block_literal_global_171];
    cellRegistration = v2->_cellRegistration;
    v2->_cellRegistration = v7;
  }

  return v2;
}

void __51__PKPaymentSetupDiscoverCardSectionController_init__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E69DC888];
  v3 = a2;
  v4 = [v2 darkGrayColor];
  [v3 setBackgroundColor:v4];
}

- (id)snapshotWithPreviousSnapshot:(id)snapshot forSectionIdentifier:(id)identifier
{
  v4 = objc_alloc_init(MEMORY[0x1E69DC5D0]);
  [v4 appendItems:&unk_1F3CC8540];

  return v4;
}

- (id)layoutWithLayoutEnvironment:(id)environment sectionIdentifier:(id)identifier
{
  v25[1] = *MEMORY[0x1E69E9840];
  container = [environment container];
  [container contentSize];
  v6 = v5 + -32.0;

  v7 = MEMORY[0x1E6995588];
  v8 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  v9 = [MEMORY[0x1E6995558] fractionalHeightDimension:1.0];
  v10 = [v7 sizeWithWidthDimension:v8 heightDimension:v9];

  v11 = MEMORY[0x1E6995588];
  v12 = [MEMORY[0x1E6995558] absoluteDimension:v6];
  v13 = [MEMORY[0x1E6995558] absoluteDimension:125.0];
  v14 = [v11 sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [MEMORY[0x1E6995578] itemWithLayoutSize:v10];
  v16 = [MEMORY[0x1E6995568] horizontalGroupWithLayoutSize:v14 repeatingSubitem:v15 count:1];
  v17 = [MEMORY[0x1E6995580] sectionWithGroup:v16];
  [v17 setContentInsets:{10.0, 16.0, 10.0, 16.0}];
  [v17 setOrthogonalScrollingBehavior:4];
  [v17 setInterGroupSpacing:10.0];
  v18 = MEMORY[0x1E6995588];
  v19 = [MEMORY[0x1E6995558] absoluteDimension:v6];
  v20 = [MEMORY[0x1E6995558] absoluteDimension:44.0];
  v21 = [v18 sizeWithWidthDimension:v19 heightDimension:v20];

  v22 = [MEMORY[0x1E6995548] boundarySupplementaryItemWithLayoutSize:v21 elementKind:*MEMORY[0x1E69DDC08] alignment:2];
  v25[0] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [v17 setBoundarySupplementaryItems:v23];

  return v17;
}

- (void)configureSupplementaryRegistration:(id)registration elementKind:(id)kind sectionIdentifier:(id)identifier
{
  registrationCopy = registration;
  v6 = PKLocalizedPaymentString(&cfstr_LearnAboutWall.isa);
  [registrationCopy setTitle:v6];
}

@end