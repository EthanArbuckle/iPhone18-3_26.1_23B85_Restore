@interface SBDashBoardActivityModalHostableEntity
- (CSCoverSheetViewPresenting)hostingViewController;
- (NSString)applicationBundleIdentifier;
- (SBDashBoardActivityModalHostableEntity)initWithActivityItem:(id)item;
- (SBDisplayItem)displayItemRepresentation;
- (id)hostingContainerViewController;
@end

@implementation SBDashBoardActivityModalHostableEntity

- (SBDashBoardActivityModalHostableEntity)initWithActivityItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = SBDashBoardActivityModalHostableEntity;
  v6 = [(SBDashBoardActivityModalHostableEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityItem, item);
  }

  return v7;
}

- (CSCoverSheetViewPresenting)hostingViewController
{
  activityViewController = self->_activityViewController;
  if (!activityViewController)
  {
    v4 = objc_alloc(MEMORY[0x277D02B88]);
    descriptor = [(SBActivityItem *)self->_activityItem descriptor];
    v6 = [v4 initWithDescriptor:descriptor];
    v7 = self->_activityViewController;
    self->_activityViewController = v6;

    activityViewController = self->_activityViewController;
  }

  return activityViewController;
}

- (id)hostingContainerViewController
{
  v3 = objc_alloc_init(MEMORY[0x277D02C18]);
  [v3 setHostedEntity:self];

  return v3;
}

- (SBDisplayItem)displayItemRepresentation
{
  v3 = [SBDisplayItem alloc];
  descriptor = [(SBActivityItem *)self->_activityItem descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];
  identifier = [(SBActivityItem *)self->_activityItem identifier];
  v7 = [(SBDisplayItem *)v3 initWithType:7 bundleIdentifier:platterTargetBundleIdentifier uniqueIdentifier:identifier];

  return v7;
}

- (NSString)applicationBundleIdentifier
{
  descriptor = [(SBActivityItem *)self->_activityItem descriptor];
  platterTargetBundleIdentifier = [descriptor platterTargetBundleIdentifier];

  return platterTargetBundleIdentifier;
}

@end