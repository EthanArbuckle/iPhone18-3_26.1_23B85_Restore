@interface ICSubscribedContainersRequest
- (id)_bodyDataForContainerIDs:(id)a3;
@end

@implementation ICSubscribedContainersRequest

- (id)_bodyDataForContainerIDs:(id)a3
{
  v6 = a3;
  v3 = v6;
  v4 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v4;
}

@end