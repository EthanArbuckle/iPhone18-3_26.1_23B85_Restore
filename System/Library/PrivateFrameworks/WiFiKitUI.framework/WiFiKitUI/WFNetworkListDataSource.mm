@interface WFNetworkListDataSource
- (void)setAssociationHandler:(id)handler;
- (void)setInfoButtonHandler:(id)handler;
- (void)setOtherNetworkTapHandler:(id)handler;
- (void)setPendingDeletingNetworksChangedCallback:(id)callback;
- (void)setScanning:(BOOL)scanning;
- (void)setUnconfiguredNetworksSectionTitleDelegate:(id)delegate;
- (void)startEditingPreferredNetworks;
- (void)switchToScanList;
- (void)updateCurrentNetwork:(id)network;
- (void)updateCurrentNetworkConfig:(id)config;
@end

@implementation WFNetworkListDataSource

- (void)updateCurrentNetworkConfig:(id)config
{
  configCopy = config;
  selfCopy = self;
  sub_2740291AC(config);
}

- (void)updateCurrentNetwork:(id)network
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27402A254(network);
  swift_unknownObjectRelease();
}

- (void)setScanning:(BOOL)scanning
{
  selfCopy = self;
  sub_27402B120(scanning);
}

- (void)setOtherNetworkTapHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_2740208B4;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setInfoButtonHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_274036528;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setAssociationHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_274036514;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListDataSource_associationHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setPendingDeletingNetworksChangedCallback:(id)callback
{
  v4 = _Block_copy(callback);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_27403650C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setUnconfiguredNetworksSectionTitleDelegate:(id)delegate
{
  v4 = _Block_copy(delegate);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_274036504;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)startEditingPreferredNetworks
{
  selfCopy = self;
  sub_27402C46C();
}

- (void)switchToScanList
{
  selfCopy = self;
  sub_27402C910();
}

@end