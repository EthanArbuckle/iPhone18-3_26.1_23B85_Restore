@interface SSScreenSnapshotter
+ (id)snapshotterForScreen:(id)a3;
- (SSScreenSnapshotter)initWithScreen:(id)a3;
@end

@implementation SSScreenSnapshotter

+ (id)snapshotterForScreen:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];

  v5 = off_1E858FAB0;
  if (v4 != v3)
  {
    v5 = off_1E858FAC8;
  }

  v6 = [objc_alloc(*v5) initWithScreen:v3];

  return v6;
}

- (SSScreenSnapshotter)initWithScreen:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SSScreenSnapshotter;
  v5 = [(SSScreenSnapshotter *)&v8 init];
  screen = v5->_screen;
  v5->_screen = v4;

  return v5;
}

@end