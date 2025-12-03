@interface WFNetworkListConfigDataSource
- (void)setAskToJoinMode:(int64_t)mode;
- (void)setAskToJoinModeTapHandler:(id)handler;
- (void)setAutoInstantHotspotOption:(int64_t)option;
- (void)setAutoInstantHotspotTapHandler:(id)handler;
- (void)setAutoUnlockEnabled:(BOOL)enabled;
- (void)setDataUsageHidden:(BOOL)hidden;
- (void)setDataUsageTapHandler:(id)handler;
- (void)setIsCellularDevice:(BOOL)device;
- (void)setIsChinaDevice:(BOOL)device;
- (void)setNetworkModificationRestriction:(BOOL)restriction;
- (void)setPowerModificationRestriction:(BOOL)restriction;
- (void)setPowerState:(unint64_t)state;
- (void)setPowerToggleHandler:(id)handler;
- (void)setUserAutoJoinEnabled:(BOOL)enabled;
- (void)setWAPIEnabled:(BOOL)enabled;
- (void)setWAPISwitchHandler:(id)handler;
- (void)setWAPISwitchHidden:(BOOL)hidden;
@end

@implementation WFNetworkListConfigDataSource

- (void)setNetworkModificationRestriction:(BOOL)restriction
{
  selfCopy = self;
  sub_274037B44(restriction);
}

- (void)setPowerModificationRestriction:(BOOL)restriction
{
  selfCopy = self;
  sub_274037F5C(restriction);
}

- (void)setPowerState:(unint64_t)state
{
  selfCopy = self;
  sub_274038374(state);
}

- (void)setAskToJoinMode:(int64_t)mode
{
  selfCopy = self;
  sub_2740387F8(mode);
}

- (void)setAutoInstantHotspotOption:(int64_t)option
{
  selfCopy = self;
  sub_274038C04(option);
}

- (void)setAutoInstantHotspotTapHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setAskToJoinModeTapHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setWAPISwitchHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setDataUsageTapHandler:(id)handler
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

  v6 = (self + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_273FBD2BC(v7);
}

- (void)setIsChinaDevice:(BOOL)device
{
  selfCopy = self;
  sub_27403944C(device);
}

- (void)setIsCellularDevice:(BOOL)device
{
  selfCopy = self;
  sub_27403961C(device);
}

- (void)setAutoUnlockEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_2740397EC(enabled);
}

- (void)setWAPIEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_2740399BC(enabled);
}

- (void)setUserAutoJoinEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_274039E40(enabled);
}

- (void)setDataUsageHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_27403A010(hidden);
}

- (void)setWAPISwitchHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_27403A1FC(hidden);
}

- (void)setPowerToggleHandler:(id)handler
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

  v6 = (self + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_273FBD2BC(v7);
}

@end