@interface PGHostedWindow
- (PGHostedWindow)initWithFrame:(CGRect)a3;
- (void)dealloc;
@end

@implementation PGHostedWindow

- (PGHostedWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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