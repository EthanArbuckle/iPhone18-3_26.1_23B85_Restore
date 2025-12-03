@interface ICSubscribedContainersRequest
- (id)_bodyDataForContainerIDs:(id)ds;
@end

@implementation ICSubscribedContainersRequest

- (id)_bodyDataForContainerIDs:(id)ds
{
  dsCopy = ds;
  v3 = dsCopy;
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

@end