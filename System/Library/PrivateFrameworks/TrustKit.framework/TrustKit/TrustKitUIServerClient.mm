@interface TrustKitUIServerClient
- (void)bannerWith:(id)with and:(id)and;
- (void)bannerWith:(id)with and:(id)and radarTitle:(id)title radarDescription:(id)description radarComponentID:(id)d radarComponentName:(id)name radarComponentVersion:(id)version;
@end

@implementation TrustKitUIServerClient

- (void)bannerWith:(id)with and:(id)and
{
  v4 = sub_26F779248();
  v6 = v5;
  v7 = sub_26F779248();
  v9 = v8;

  sub_26F75F1DC(v4, v6, v7, v9);
}

- (void)bannerWith:(id)with and:(id)and radarTitle:(id)title radarDescription:(id)description radarComponentID:(id)d radarComponentName:(id)name radarComponentVersion:(id)version
{
  v10 = sub_26F779248();
  v28 = v11;
  v29 = v10;
  v27 = sub_26F779248();
  v13 = v12;
  v26 = sub_26F779248();
  v15 = v14;
  v16 = sub_26F779248();
  v18 = v17;
  v19 = sub_26F779248();
  v21 = v20;
  v22 = sub_26F779248();
  v24 = v23;
  dCopy = d;

  sub_26F75F634(v29, v28, v27, v13, v26, v15, v16, v18, dCopy, v19, v21, v22, v24);
}

@end