@interface SBDDisplayProfileManager
- (CAContext)rootWindowCAContext;
- (NSSet)fbScenes;
- (SBDDisplayProfileManagerDelegate)delegate;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)start;
- (void)updateTransform:(CGAffineTransform *)a3 forDisplayConfiguration:(id)a4;
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
  v6 = self;
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
  v2 = self;
  sub_26B9D9AD4();
}

- (void)updateTransform:(CGAffineTransform *)a3 forDisplayConfiguration:(id)a4
{
  v5 = *&a3->c;
  v8[0] = *&a3->a;
  v8[1] = v5;
  v8[2] = *&a3->tx;
  v6 = a4;
  v7 = self;
  sub_26B9D9D00(v8, v6);
}

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_26B9DDD24(v6, a4);
}

@end