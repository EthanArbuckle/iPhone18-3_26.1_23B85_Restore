@interface SVVideoPlayerState
- (BOOL)_isFullScreen;
- (BOOL)isFullScreen;
- (SVVideoPlayerState)init;
- (double)customControlHeight;
- (void)setIsFullScreen:(BOOL)screen;
- (void)set_isFullScreen:(BOOL)screen;
@end

@implementation SVVideoPlayerState

- (BOOL)_isFullScreen
{
  v3 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)set_isFullScreen:(BOOL)screen
{
  v5 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  *(&self->super.isa + v5) = screen;
}

- (BOOL)isFullScreen
{
  swift_getKeyPath();
  sub_2660A6110();
  selfCopy = self;
  sub_2660A7058();

  v4 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  LOBYTE(v4) = *(&selfCopy->super.isa + v4);

  return v4;
}

- (void)setIsFullScreen:(BOOL)screen
{
  selfCopy = self;
  VideoPlayerState.isFullScreen.setter(screen);
}

- (double)customControlHeight
{
  swift_getKeyPath();
  sub_2660A6110();
  selfCopy = self;
  sub_2660A7058();

  v4 = OBJC_IVAR___SVVideoPlayerState__isFullScreen;
  swift_beginAccess();
  LODWORD(v4) = *(&selfCopy->super.isa + v4);

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