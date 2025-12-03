@interface PGHostedWindow
- (PGHostedWindow)initWithFrame:(CGRect)frame;
- (void)dealloc;
@end

@implementation PGHostedWindow

- (PGHostedWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = PGLogCommon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureApplication initWithProcessIdentifier:?];
  }

  v10.receiver = self;
  v10.super_class = PGHostedWindow;
  return [(_UIHostedWindow *)&v10 initWithFrame:x, y, width, height];
}

- (void)dealloc
{
  v3 = PGLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureApplication initWithProcessIdentifier:?];
  }

  v4.receiver = self;
  v4.super_class = PGHostedWindow;
  [(_UIHostedWindow *)&v4 dealloc];
}

@end