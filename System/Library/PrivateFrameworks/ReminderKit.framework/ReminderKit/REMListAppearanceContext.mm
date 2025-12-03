@interface REMListAppearanceContext
- (BOOL)showingLargeAttachments;
- (NSString)badgeEmblem;
- (REMListAppearanceContext)initWithList:(id)list;
- (REMListBadge)badge;
@end

@implementation REMListAppearanceContext

- (REMListBadge)badge
{
  list = [(REMListAppearanceContext *)self list];
  badgeEmblem = [list badgeEmblem];

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

- (REMListAppearanceContext)initWithList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = REMListAppearanceContext;
  v6 = [(REMListAppearanceContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, list);
  }

  return v7;
}

- (NSString)badgeEmblem
{
  badge = [(REMListAppearanceContext *)self badge];
  emblem = [badge emblem];

  return emblem;
}

- (BOOL)showingLargeAttachments
{
  list = [(REMListAppearanceContext *)self list];
  showingLargeAttachments = [list showingLargeAttachments];

  return showingLargeAttachments;
}

@end