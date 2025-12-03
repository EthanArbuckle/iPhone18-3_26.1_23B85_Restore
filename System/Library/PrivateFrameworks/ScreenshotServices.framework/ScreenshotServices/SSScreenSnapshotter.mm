@interface SSScreenSnapshotter
+ (id)snapshotterForScreen:(id)screen;
- (SSScreenSnapshotter)initWithScreen:(id)screen;
@end

@implementation SSScreenSnapshotter

+ (id)snapshotterForScreen:(id)screen
{
  screenCopy = screen;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];

  v5 = off_1E858FAB0;
  if (mainScreen != screenCopy)
  {
    v5 = off_1E858FAC8;
  }

  v6 = [objc_alloc(*v5) initWithScreen:screenCopy];

  return v6;
}

- (SSScreenSnapshotter)initWithScreen:(id)screen
{
  screenCopy = screen;
  v8.receiver = self;
  v8.super_class = SSScreenSnapshotter;
  v5 = [(SSScreenSnapshotter *)&v8 init];
  screen = v5->_screen;
  v5->_screen = screenCopy;

  return v5;
}

@end