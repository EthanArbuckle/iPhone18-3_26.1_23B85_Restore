@interface REMSmartListCustomContext
- (NSString)name;
- (REMColor)color;
- (REMListBadge)badge;
- (REMSmartListCustomContext)initWithSmartList:(id)list account:(id)account parentList:(id)parentList;
@end

@implementation REMSmartListCustomContext

- (REMSmartListCustomContext)initWithSmartList:(id)list account:(id)account parentList:(id)parentList
{
  listCopy = list;
  accountCopy = account;
  parentListCopy = parentList;
  v15.receiver = self;
  v15.super_class = REMSmartListCustomContext;
  v12 = [(REMSmartListCustomContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_smartlist, list);
    objc_storeStrong(&v13->_account, account);
    objc_storeStrong(&v13->_parentList, parentList);
  }

  return v13;
}

- (NSString)name
{
  smartlist = [(REMSmartListCustomContext *)self smartlist];
  name = [smartlist name];

  return name;
}

- (REMColor)color
{
  smartlist = [(REMSmartListCustomContext *)self smartlist];
  color = [smartlist color];

  return color;
}

- (REMListBadge)badge
{
  smartlist = [(REMSmartListCustomContext *)self smartlist];
  badgeEmblem = [smartlist badgeEmblem];

  if (badgeEmblem)
  {
    v4 = [[REMListBadge alloc] initWithRawValue:badgeEmblem];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end