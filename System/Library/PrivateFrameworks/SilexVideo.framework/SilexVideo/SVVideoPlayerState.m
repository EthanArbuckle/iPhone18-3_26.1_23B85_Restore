@interface SVVideoPlayerState
- (BOOL)_isFullScreen;
- (BOOL)isFullScreen;
- (SVVideoPlayerState)init;
- (double)customControlHeight;
- (void)setIsFullScreen:(BOOL)a3;
- (void)set_isFullScreen:(BOOL)a3;
@end

@implementation SVVideoPlayerState

- (BOOL)_isFullScreen
{
  v3 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)set_isFullScreen:(BOOL)a3
{
  v5 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isFullScreen
{
  swift_getKeyPath();
  sub_2660A6110();
  v3 = self;
  sub_2660A7058();

  v4 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  LOBYTE(v4) = *(&v3->super.isa + v4);

  return v4;
}

- (void)setIsFullScreen:(BOOL)a3
{
  v4 = self;
  VideoPlayerState.isFullScreen.setter(a3);
}

- (double)customControlHeight
{
  swift_getKeyPath();
  sub_2660A6110();
  v3 = self;
  sub_2660A7058();

  v4 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  LODWORD(v4) = *(&v3->super.isa + v4);

  result = 32.0;
  if (v4)
  {
    return 44.0;
  }

  return result;
}

- (SVVideoPlayerState)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___SVVideoPlayerState__isFullScreen) = 0;
  sub_2660A7088();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(SVVideoPlayerState *)&v5 init];
}

@end