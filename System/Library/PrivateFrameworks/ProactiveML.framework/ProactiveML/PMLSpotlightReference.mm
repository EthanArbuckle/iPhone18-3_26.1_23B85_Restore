@interface PMLSpotlightReference
+ (id)referenceWithBundleId:(id)id domainId:(id)domainId itemIds:(id)ids;
- (PMLSpotlightReference)initWithBundleId:(id)id domainId:(id)domainId itemIds:(id)ids;
@end

@implementation PMLSpotlightReference

- (PMLSpotlightReference)initWithBundleId:(id)id domainId:(id)domainId itemIds:(id)ids
{
  idCopy = id;
  domainIdCopy = domainId;
  idsCopy = ids;
  v13 = idsCopy;
  if (idCopy)
  {
    if (idsCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PMLTraining.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PMLTraining.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"itemIds"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PMLSpotlightReference;
  v14 = [(PMLSpotlightReference *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bundleIdentifier, id);
    objc_storeStrong(&v15->_domainIdentifier, domainId);
    objc_storeStrong(&v15->_itemIdentifiers, ids);
  }

  return v15;
}

+ (id)referenceWithBundleId:(id)id domainId:(id)domainId itemIds:(id)ids
{
  idsCopy = ids;
  domainIdCopy = domainId;
  idCopy = id;
  v11 = [[self alloc] initWithBundleId:idCopy domainId:domainIdCopy itemIds:idsCopy];

  return v11;
}

@end