@interface SBSnapshotWindow
- (SBSnapshotWindow)initWithWindowScene:(id)scene frame:(CGRect)frame orientation:(int64_t)orientation;
@end

@implementation SBSnapshotWindow

- (SBSnapshotWindow)initWithWindowScene:(id)scene frame:(CGRect)frame orientation:(int64_t)orientation
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = SBSnapshotWindow;
  v10 = [(SBSnapshotWindow *)&v13 initWithWindowScene:scene];
  v11 = v10;
  if (v10)
  {
    [(SBSnapshotWindow *)v10 setFrame:x, y, width, height];
    v11->_orientation = orientation;
  }

  return v11;
}

@end