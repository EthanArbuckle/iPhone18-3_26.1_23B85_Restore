@interface WFNetworkListDataSource
- (void)setAssociationHandler:(id)a3;
- (void)setInfoButtonHandler:(id)a3;
- (void)setOtherNetworkTapHandler:(id)a3;
- (void)setPendingDeletingNetworksChangedCallback:(id)a3;
- (void)setScanning:(BOOL)a3;
- (void)setUnconfiguredNetworksSectionTitleDelegate:(id)a3;
- (void)startEditingPreferredNetworks;
- (void)switchToScanList;
- (void)updateCurrentNetwork:(id)a3;
- (void)updateCurrentNetworkConfig:(id)a3;
@end

@implementation WFNetworkListDataSource

- (void)updateCurrentNetworkConfig:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2740291AC(a3);
}

- (void)updateCurrentNetwork:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_27402A254(a3);
  swift_unknownObjectRelease();
}

- (void)setScanning:(BOOL)a3
{
  v4 = self;
  sub_27402B120(a3);
}

- (void)setOtherNetworkTapHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setInfoButtonHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setAssociationHandler:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setPendingDeletingNetworksChangedCallback:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setUnconfiguredNetworksSectionTitleDelegate:(id)a3
{
  v4 = _Block_copy(a3);
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
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)startEditingPreferredNetworks
{
  v2 = self;
  sub_27402C46C();
}

- (void)switchToScanList
{
  v2 = self;
  sub_27402C910();
}

@end