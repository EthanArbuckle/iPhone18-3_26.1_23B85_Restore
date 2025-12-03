@interface SBDDisplayProfileManager
- (CAContext)rootWindowCAContext;
- (NSSet)fbScenes;
- (SBDDisplayProfileManagerDelegate)delegate;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)start;
- (void)updateTransform:(CGAffineTransform *)transform forDisplayConfiguration:(id)configuration;
@end

@implementation SBDDisplayProfileManager

- (SBDDisplayProfileManagerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSSet)fbScenes
{
  v2 = *(self + OBJC_IVAR___SBDDisplayProfileManager_storage);
  v3 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_scenes;
  swift_beginAccess();
  v4 = *(v2 + v3);
  sub_26B9DE3A4(0, &qword_280433F48, 0x277D0AAC8);
  sub_26B9DDFCC();
  sub_26B9DFE14();
  v5 = sub_26B9DFF94();

  return v5;
}

- (CAContext)rootWindowCAContext
{
  v3 = *(self + OBJC_IVAR___SBDDisplayProfileManager_storage);
  v4 = OBJC_IVAR____TtCE18SpringBoardDisplayCSo24SBDDisplayProfileManagerP33_67B6F4CBBB8F3EFDDC9EE8BF2586BB557Storage_scenes;
  swift_beginAccess();
  v5 = *(v3 + v4);
  selfCopy = self;
  v7 = sub_26B9DFE14();
  v8 = sub_26B9D99B8(v7);

  if (v8)
  {
    v9 = sub_26B9DFFD4();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (void)start
{
  selfCopy = self;
  sub_26B9D9AD4();
}

- (void)updateTransform:(CGAffineTransform *)transform forDisplayConfiguration:(id)configuration
{
  v5 = *&transform->c;
  v8[0] = *&transform->a;
  v8[1] = v5;
  v8[2] = *&transform->tx;
  configurationCopy = configuration;
  selfCopy = self;
  sub_26B9D9D00(v8, configurationCopy);
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  selfCopy = self;
  sub_26B9DDD24(deactivateCopy, context);
}

@end