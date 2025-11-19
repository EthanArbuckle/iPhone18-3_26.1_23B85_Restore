@interface REMListAppearanceContext
- (BOOL)showingLargeAttachments;
- (NSString)badgeEmblem;
- (REMListAppearanceContext)initWithList:(id)a3;
- (REMListBadge)badge;
@end

@implementation REMListAppearanceContext

- (REMListBadge)badge
{
  v2 = [(REMListAppearanceContext *)self list];
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

- (REMListAppearanceContext)initWithList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListAppearanceContext;
  v6 = [(REMListAppearanceContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, a3);
  }

  return v7;
}

- (NSString)badgeEmblem
{
  v2 = [(REMListAppearanceContext *)self badge];
  v3 = [v2 emblem];

  return v3;
}

- (BOOL)showingLargeAttachments
{
  v2 = [(REMListAppearanceContext *)self list];
  v3 = [v2 showingLargeAttachments];

  return v3;
}

@end