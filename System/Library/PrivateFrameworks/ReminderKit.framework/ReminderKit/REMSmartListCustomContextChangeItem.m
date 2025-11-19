@interface REMSmartListCustomContextChangeItem
- (NSString)name;
- (REMColor)color;
- (REMListBadge)badge;
- (REMSmartListCustomContextChangeItem)initWithSmartListChangeItem:(id)a3;
- (void)setBadge:(id)a3;
- (void)setColor:(id)a3;
- (void)setName:(id)a3;
@end

@implementation REMSmartListCustomContextChangeItem

- (REMSmartListCustomContextChangeItem)initWithSmartListChangeItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "smartListChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMSmartListCustomContextChangeItem;
  v6 = [(REMSmartListCustomContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartListChangeItem, a3);
  }

  return v7;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  [v5 setName:v4];
}

- (NSString)name
{
  v3 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  v4 = [v3 name];
  if (v4)
  {
    v5 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
    v6 = [v5 name];
  }

  else
  {
    v6 = &stru_1F0D67F00;
  }

  return v6;
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  [v5 setColor:v4];
}

- (REMColor)color
{
  v2 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  v3 = [v2 color];

  return v3;
}

- (void)setBadge:(id)a3
{
  v5 = [a3 rawValue];
  v4 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
  [v4 setBadgeEmblem:v5];
}

- (REMListBadge)badge
{
  v2 = [(REMSmartListCustomContextChangeItem *)self smartListChangeItem];
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