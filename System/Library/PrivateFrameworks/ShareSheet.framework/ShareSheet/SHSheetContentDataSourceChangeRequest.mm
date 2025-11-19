@interface SHSheetContentDataSourceChangeRequest
+ (id)changeRequestForPeopleProxies:(id)a3 shareProxies:(id)a4 actionProxies:(id)a5 nearbyCountSlotID:(unsigned int)a6 activitiesByUUID:(id)a7;
+ (id)changeRequestFromState:(id)a3;
@end

@implementation SHSheetContentDataSourceChangeRequest

+ (id)changeRequestForPeopleProxies:(id)a3 shareProxies:(id)a4 actionProxies:(id)a5 nearbyCountSlotID:(unsigned int)a6 activitiesByUUID:(id)a7
{
  v7 = *&a6;
  v11 = a7;
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_alloc_init(SHSheetContentDataSourceChangeRequest);
  [(SHSheetContentDataSourceChangeRequest *)v15 setPeopleProxies:v14];

  [(SHSheetContentDataSourceChangeRequest *)v15 setShareProxies:v13];
  [(SHSheetContentDataSourceChangeRequest *)v15 setActionProxies:v12];

  [(SHSheetContentDataSourceChangeRequest *)v15 setActivitiesByUUID:v11];
  [(SHSheetContentDataSourceChangeRequest *)v15 setNearbyCountSlotID:v7];

  return v15;
}

+ (id)changeRequestFromState:(id)a3
{
  v3 = a3;
  v4 = [v3 peopleProxies];
  v5 = [v3 shareProxies];
  v6 = [v3 actionProxies];
  v7 = [v3 nearbyCountSlotID];
  v8 = [v3 activitiesByUUID];
  v9 = [SHSheetContentDataSourceChangeRequest changeRequestForPeopleProxies:v4 shareProxies:v5 actionProxies:v6 nearbyCountSlotID:v7 activitiesByUUID:v8];

  [v9 setState:v3];

  return v9;
}

@end