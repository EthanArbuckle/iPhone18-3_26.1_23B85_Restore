@interface PXWallpaperTipsHelper_Swift
+ (PXWallpaperTipsHelper_Swift)shared;
+ (void)dismissTip:(id)a3;
+ (void)removeAllPresentationDelegates;
+ (void)startObservingTips;
- (PXWallpaperTipsHelper_Swift)init;
@end

@implementation PXWallpaperTipsHelper_Swift

+ (PXWallpaperTipsHelper_Swift)shared
{
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EB16A3D8;

  return v3;
}

+ (void)removeAllPresentationDelegates
{
  v2 = sub_1A45C1040();
  swift_beginAccess();
  if (*v2)
  {

    *v2 = MEMORY[0x1E69E7CC8];
  }
}

+ (void)dismissTip:(id)a3
{
  v3 = _Block_copy(a3);
  sub_1A42F4DDC(v3);

  _Block_release(v3);
}

- (PXWallpaperTipsHelper_Swift)init
{
  v2 = &self->PXTipsHelper_Swift_opaque[OBJC_IVAR___PXWallpaperTipsHelper_Swift_trySettlingEffectTip];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &self->PXTipsHelper_Swift_opaque[OBJC_IVAR___PXWallpaperTipsHelper_Swift_failedSettlingEffectTip];
  *v3 = 0;
  *(v3 + 1) = 0;
  self->PXTipsHelper_Swift_opaque[OBJC_IVAR___PXWallpaperTipsHelper_Swift_spatialPhotoDisabledLowPowerModeTip] = 1;
  self->PXTipsHelper_Swift_opaque[OBJC_IVAR___PXWallpaperTipsHelper_Swift_hasStartedTips] = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PXWallpaperTipsHelper();
  return [(PXTipsHelper_Swift *)&v5 init];
}

+ (void)startObservingTips
{
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB16A3D0 != -1)
  {
    swift_once();
  }

  if ((*(qword_1EB16A3D8 + OBJC_IVAR___PXWallpaperTipsHelper_Swift_hasStartedTips) & 1) == 0)
  {
    *(qword_1EB16A3D8 + OBJC_IVAR___PXWallpaperTipsHelper_Swift_hasStartedTips) = 1;
    v3 = sub_1A524CCB4();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    sub_1A524CC54();
    v4 = sub_1A524CC44();
    v5 = swift_allocObject();
    v6 = MEMORY[0x1E69E85E0];
    *(v5 + 16) = v4;
    *(v5 + 24) = v6;
    sub_1A3D4D930(0, 0, v2, &unk_1A532E9C0, v5);
  }
}

@end