@interface WFNetworkListConfigDataSource
- (void)setAskToJoinMode:(int64_t)a3;
- (void)setAskToJoinModeTapHandler:(id)a3;
- (void)setAutoInstantHotspotOption:(int64_t)a3;
- (void)setAutoInstantHotspotTapHandler:(id)a3;
- (void)setAutoUnlockEnabled:(BOOL)a3;
- (void)setDataUsageHidden:(BOOL)a3;
- (void)setDataUsageTapHandler:(id)a3;
- (void)setIsCellularDevice:(BOOL)a3;
- (void)setIsChinaDevice:(BOOL)a3;
- (void)setNetworkModificationRestriction:(BOOL)a3;
- (void)setPowerModificationRestriction:(BOOL)a3;
- (void)setPowerState:(unint64_t)a3;
- (void)setPowerToggleHandler:(id)a3;
- (void)setUserAutoJoinEnabled:(BOOL)a3;
- (void)setWAPIEnabled:(BOOL)a3;
- (void)setWAPISwitchHandler:(id)a3;
- (void)setWAPISwitchHidden:(BOOL)a3;
@end

@implementation WFNetworkListConfigDataSource

- (void)setNetworkModificationRestriction:(BOOL)a3
{
  v4 = self;
  sub_274037B44(a3);
}

- (void)setPowerModificationRestriction:(BOOL)a3
{
  v4 = self;
  sub_274037F5C(a3);
}

- (void)setPowerState:(unint64_t)a3
{
  v4 = self;
  sub_274038374(a3);
}

- (void)setAskToJoinMode:(int64_t)a3
{
  v4 = self;
  sub_2740387F8(a3);
}

- (void)setAutoInstantHotspotOption:(int64_t)a3
{
  v4 = self;
  sub_274038C04(a3);
}

- (void)setAutoInstantHotspotTapHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_27403C18C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setAskToJoinModeTapHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_27403C18C;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setWAPISwitchHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_27403C064;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkListConfigDataSource_WAPISwitchHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setDataUsageTapHandler:(id)a3
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

  v6 = (self + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_273FBD2BC(v7);
}

- (void)setIsChinaDevice:(BOOL)a3
{
  v4 = self;
  sub_27403944C(a3);
}

- (void)setIsCellularDevice:(BOOL)a3
{
  v4 = self;
  sub_27403961C(a3);
}

- (void)setAutoUnlockEnabled:(BOOL)a3
{
  v4 = self;
  sub_2740397EC(a3);
}

- (void)setWAPIEnabled:(BOOL)a3
{
  v4 = self;
  sub_2740399BC(a3);
}

- (void)setUserAutoJoinEnabled:(BOOL)a3
{
  v4 = self;
  sub_274039E40(a3);
}

- (void)setDataUsageHidden:(BOOL)a3
{
  v4 = self;
  sub_27403A010(a3);
}

- (void)setWAPISwitchHidden:(BOOL)a3
{
  v4 = self;
  sub_27403A1FC(a3);
}

- (void)setPowerToggleHandler:(id)a3
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

  v6 = (self + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_273FBD2BC(v7);
}

@end