@interface PXCollectionsDataSection
- (PXCollectionsDataSection)init;
- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)a3 lockStatePerCollection:(id)a4 outlineObject:(id)a5;
- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)a3 outlineObject:(id)a4;
- (PXCollectionsDataSection)initWithDisplayCollection:(id)a3 accessoryTitle:(id)a4 lockState:(unint64_t)a5 outlineObject:(id)a6;
- (PXCollectionsDataSection)initWithDisplayCollection:(id)a3 outlineObject:(id)a4;
- (int64_t)indexOfCollection:(id)a3;
@end

@implementation PXCollectionsDataSection

- (int64_t)indexOfCollection:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:206 description:{@"Method %s is a responsibility of subclass %@", "-[PXCollectionsDataSection indexOfCollection:]", v8}];

  abort();
}

- (PXCollectionsDataSection)init
{
  v3 = [[_PXSingleCollectionDataSection alloc] initWithDisplayCollection:0 accessoryTitle:0 lockState:0 outlineObject:0];

  return &v3->super;
}

- (PXCollectionsDataSection)initWithDisplayCollection:(id)a3 accessoryTitle:(id)a4 lockState:(unint64_t)a5 outlineObject:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[_PXSingleCollectionDataSection alloc] initWithDisplayCollection:v12 accessoryTitle:v11 lockState:a5 outlineObject:v10];

  return &v13->super;
}

- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)a3 lockStatePerCollection:(id)a4 outlineObject:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[_PXCollectionsDataSourceSection alloc] initWithCollectionsDataSource:v10 lockStatePerCollection:v9 outlineObject:v8];

  return &v11->super;
}

- (PXCollectionsDataSection)initWithDisplayCollection:(id)a3 outlineObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXCollectionsDataSection *)[_PXSingleCollectionDataSection alloc] initWithDisplayCollection:v7 outlineObject:v6];

  return &v8->super;
}

- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)a3 outlineObject:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_PXCollectionsDataSourceSection alloc] initWithCollectionsDataSource:v7 outlineObject:v6];

  return &v8->super;
}

@end