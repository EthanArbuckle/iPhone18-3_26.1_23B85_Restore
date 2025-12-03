@interface SHSheetContentDataSourceChangeRequest
+ (id)changeRequestForPeopleProxies:(id)proxies shareProxies:(id)shareProxies actionProxies:(id)actionProxies nearbyCountSlotID:(unsigned int)d activitiesByUUID:(id)iD;
+ (id)changeRequestFromState:(id)state;
@end

@implementation SHSheetContentDataSourceChangeRequest

+ (id)changeRequestForPeopleProxies:(id)proxies shareProxies:(id)shareProxies actionProxies:(id)actionProxies nearbyCountSlotID:(unsigned int)d activitiesByUUID:(id)iD
{
  v7 = *&d;
  iDCopy = iD;
  actionProxiesCopy = actionProxies;
  shareProxiesCopy = shareProxies;
  proxiesCopy = proxies;
  v15 = objc_alloc_init(SHSheetContentDataSourceChangeRequest);
  [(SHSheetContentDataSourceChangeRequest *)v15 setPeopleProxies:proxiesCopy];

  [(SHSheetContentDataSourceChangeRequest *)v15 setShareProxies:shareProxiesCopy];
  [(SHSheetContentDataSourceChangeRequest *)v15 setActionProxies:actionProxiesCopy];

  [(SHSheetContentDataSourceChangeRequest *)v15 setActivitiesByUUID:iDCopy];
  [(SHSheetContentDataSourceChangeRequest *)v15 setNearbyCountSlotID:v7];

  return v15;
}

+ (id)changeRequestFromState:(id)state
{
  stateCopy = state;
  peopleProxies = [stateCopy peopleProxies];
  shareProxies = [stateCopy shareProxies];
  actionProxies = [stateCopy actionProxies];
  nearbyCountSlotID = [stateCopy nearbyCountSlotID];
  activitiesByUUID = [stateCopy activitiesByUUID];
  v9 = [SHSheetContentDataSourceChangeRequest changeRequestForPeopleProxies:peopleProxies shareProxies:shareProxies actionProxies:actionProxies nearbyCountSlotID:nearbyCountSlotID activitiesByUUID:activitiesByUUID];

  [v9 setState:stateCopy];

  return v9;
}

@end