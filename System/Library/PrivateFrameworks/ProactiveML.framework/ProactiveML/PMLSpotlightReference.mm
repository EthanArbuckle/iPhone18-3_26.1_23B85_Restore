@interface PMLSpotlightReference
+ (id)referenceWithBundleId:(id)a3 domainId:(id)a4 itemIds:(id)a5;
- (PMLSpotlightReference)initWithBundleId:(id)a3 domainId:(id)a4 itemIds:(id)a5;
@end

@implementation PMLSpotlightReference

- (PMLSpotlightReference)initWithBundleId:(id)a3 domainId:(id)a4 itemIds:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v10)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PMLTraining.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"bundleId"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"PMLTraining.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"itemIds"}];

LABEL_3:
  v19.receiver = self;
  v19.super_class = PMLSpotlightReference;
  v14 = [(PMLSpotlightReference *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_bundleIdentifier, a3);
    objc_storeStrong(&v15->_domainIdentifier, a4);
    objc_storeStrong(&v15->_itemIdentifiers, a5);
  }

  return v15;
}

+ (id)referenceWithBundleId:(id)a3 domainId:(id)a4 itemIds:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithBundleId:v10 domainId:v9 itemIds:v8];

  return v11;
}

@end