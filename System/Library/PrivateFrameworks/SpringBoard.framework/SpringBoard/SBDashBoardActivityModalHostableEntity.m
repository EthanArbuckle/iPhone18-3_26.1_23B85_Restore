@interface SBDashBoardActivityModalHostableEntity
- (CSCoverSheetViewPresenting)hostingViewController;
- (NSString)applicationBundleIdentifier;
- (SBDashBoardActivityModalHostableEntity)initWithActivityItem:(id)a3;
- (SBDisplayItem)displayItemRepresentation;
- (id)hostingContainerViewController;
@end

@implementation SBDashBoardActivityModalHostableEntity

- (SBDashBoardActivityModalHostableEntity)initWithActivityItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDashBoardActivityModalHostableEntity;
  v6 = [(SBDashBoardActivityModalHostableEntity *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityItem, a3);
  }

  return v7;
}

- (CSCoverSheetViewPresenting)hostingViewController
{
  activityViewController = self->_activityViewController;
  if (!activityViewController)
  {
    v4 = objc_alloc(MEMORY[0x277D02B88]);
    v5 = [(SBActivityItem *)self->_activityItem descriptor];
    v6 = [v4 initWithDescriptor:v5];
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
  v4 = [(SBActivityItem *)self->_activityItem descriptor];
  v5 = [v4 platterTargetBundleIdentifier];
  v6 = [(SBActivityItem *)self->_activityItem identifier];
  v7 = [(SBDisplayItem *)v3 initWithType:7 bundleIdentifier:v5 uniqueIdentifier:v6];

  return v7;
}

- (NSString)applicationBundleIdentifier
{
  v2 = [(SBActivityItem *)self->_activityItem descriptor];
  v3 = [v2 platterTargetBundleIdentifier];

  return v3;
}

@end