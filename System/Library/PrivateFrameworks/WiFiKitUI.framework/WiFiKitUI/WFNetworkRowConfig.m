@interface WFNetworkRowConfig
+ (id)knownNetworkRowConfig;
+ (id)settingsNetworkRowConfig;
+ (id)setupNetworkRowConfig;
- (BOOL)hideConnectionState;
- (BOOL)isEditable;
- (BOOL)problematicConnection;
- (BOOL)showInfoButton;
- (NSString)subtitle;
- (WFNetworkListRecord)network;
- (id)infoButtonHandler;
- (int64_t)connectionState;
- (unint64_t)context;
- (unint64_t)signalBars;
- (void)setConnectionState:(int64_t)a3;
- (void)setContext:(unint64_t)a3;
- (void)setHideConnectionState:(BOOL)a3;
- (void)setInfoButtonHandler:(id)a3;
- (void)setIsEditable:(BOOL)a3;
- (void)setNetwork:(id)a3;
- (void)setProblematicConnection:(BOOL)a3;
- (void)setShowInfoButton:(BOOL)a3;
- (void)setSignalBars:(unint64_t)a3;
- (void)setSubtitle:(id)a3;
@end

@implementation WFNetworkRowConfig

- (WFNetworkListRecord)network
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_274050E68();

  return v5;
}

- (void)setNetwork:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_27403DF48(a3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E78();
}

- (NSString)subtitle
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_274050E68();

  if (v6)
  {
    v4 = sub_2740517C8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSubtitle:(id)a3
{
  if (a3)
  {
    v4 = sub_2740517D8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_27403E520(v4, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E78();
}

- (int64_t)connectionState
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_274050E68();

  return v5;
}

- (void)setConnectionState:(int64_t)a3
{
  v4 = self;
  sub_27403EB84(a3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E78();
}

- (BOOL)problematicConnection
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_274050E68();

  return v5;
}

- (void)setProblematicConnection:(BOOL)a3
{
  v4 = self;
  sub_27403F0F0(a3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E78();
}

- (unint64_t)signalBars
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_274050E68();

  return v5;
}

- (void)setSignalBars:(unint64_t)a3
{
  v4 = self;
  sub_27403F65C(a3);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E78();
}

- (unint64_t)context
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContext:(unint64_t)a3
{
  v5 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)hideConnectionState
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHideConnectionState:(BOOL)a3
{
  v5 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)showInfoButton
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowInfoButton:(BOOL)a3
{
  v5 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)isEditable
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsEditable:(BOOL)a3
{
  v5 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (id)infoButtonHandler
{
  v2 = (self + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_1;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setInfoButtonHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_274041480;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  v9 = self;
  sub_2740368EC(v7);
}

+ (id)settingsNetworkRowConfig
{
  swift_getObjCClassMetadata();
  v2 = static WFNetworkRowConfigModel.settingsNetworkRowConfig()();

  return v2;
}

+ (id)knownNetworkRowConfig
{
  swift_getObjCClassMetadata();
  v2 = static WFNetworkRowConfigModel.knownNetworkRowConfig()();

  return v2;
}

+ (id)setupNetworkRowConfig
{
  swift_getObjCClassMetadata();
  v2 = static WFNetworkRowConfigModel.setupNetworkRowConfig()();

  return v2;
}

@end