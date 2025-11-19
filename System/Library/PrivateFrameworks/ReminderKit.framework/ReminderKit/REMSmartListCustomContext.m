@interface REMSmartListCustomContext
- (NSString)name;
- (REMColor)color;
- (REMListBadge)badge;
- (REMSmartListCustomContext)initWithSmartList:(id)a3 account:(id)a4 parentList:(id)a5;
@end

@implementation REMSmartListCustomContext

- (REMSmartListCustomContext)initWithSmartList:(id)a3 account:(id)a4 parentList:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMSmartListCustomContext;
  v12 = [(REMSmartListCustomContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartlist, a3);
    objc_storeStrong(&v13->_account, a4);
    objc_storeStrong(&v13->_parentList, a5);
  }

  return v13;
}

- (NSString)name
{
  v2 = [(REMSmartListCustomContext *)self smartlist];
  v3 = [v2 name];

  return v3;
}

- (REMColor)color
{
  v2 = [(REMSmartListCustomContext *)self smartlist];
  v3 = [v2 color];

  return v3;
}

- (REMListBadge)badge
{
  v2 = [(REMSmartListCustomContext *)self smartlist];
  v3 = [v2 badgeEmblem];

  if (v3)
  {
    v4 = [[REMListBadge alloc] initWithRawValue:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end