@interface PXCollectionsDataSection
- (PXCollectionsDataSection)init;
- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)source lockStatePerCollection:(id)collection outlineObject:(id)object;
- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)source outlineObject:(id)object;
- (PXCollectionsDataSection)initWithDisplayCollection:(id)collection accessoryTitle:(id)title lockState:(unint64_t)state outlineObject:(id)object;
- (PXCollectionsDataSection)initWithDisplayCollection:(id)collection outlineObject:(id)object;
- (int64_t)indexOfCollection:(id)collection;
@end

@implementation PXCollectionsDataSection

- (int64_t)indexOfCollection:(id)collection
{
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCollectionsDataSection.m" lineNumber:206 description:{@"Method %s is a responsibility of subclass %@", "-[PXCollectionsDataSection indexOfCollection:]", v8}];

  abort();
}

- (PXCollectionsDataSection)init
{
  v3 = [[_PXSingleCollectionDataSection alloc] initWithDisplayCollection:0 accessoryTitle:0 lockState:0 outlineObject:0];

  return &v3->super;
}

- (PXCollectionsDataSection)initWithDisplayCollection:(id)collection accessoryTitle:(id)title lockState:(unint64_t)state outlineObject:(id)object
{
  objectCopy = object;
  titleCopy = title;
  collectionCopy = collection;
  v13 = [[_PXSingleCollectionDataSection alloc] initWithDisplayCollection:collectionCopy accessoryTitle:titleCopy lockState:state outlineObject:objectCopy];

  return &v13->super;
}

- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)source lockStatePerCollection:(id)collection outlineObject:(id)object
{
  objectCopy = object;
  collectionCopy = collection;
  sourceCopy = source;
  v11 = [[_PXCollectionsDataSourceSection alloc] initWithCollectionsDataSource:sourceCopy lockStatePerCollection:collectionCopy outlineObject:objectCopy];

  return &v11->super;
}

- (PXCollectionsDataSection)initWithDisplayCollection:(id)collection outlineObject:(id)object
{
  objectCopy = object;
  collectionCopy = collection;
  v8 = [(PXCollectionsDataSection *)[_PXSingleCollectionDataSection alloc] initWithDisplayCollection:collectionCopy outlineObject:objectCopy];

  return &v8->super;
}

- (PXCollectionsDataSection)initWithCollectionsDataSource:(id)source outlineObject:(id)object
{
  objectCopy = object;
  sourceCopy = source;
  v8 = [[_PXCollectionsDataSourceSection alloc] initWithCollectionsDataSource:sourceCopy outlineObject:objectCopy];

  return &v8->super;
}

@end