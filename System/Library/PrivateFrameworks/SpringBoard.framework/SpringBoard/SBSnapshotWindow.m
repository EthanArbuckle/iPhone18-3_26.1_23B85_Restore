@interface SBSnapshotWindow
- (SBSnapshotWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4 orientation:(int64_t)a5;
@end

@implementation SBSnapshotWindow

- (SBSnapshotWindow)initWithWindowScene:(id)a3 frame:(CGRect)a4 orientation:(int64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v13.receiver = self;
  v13.super_class = SBSnapshotWindow;
  v10 = [(SBSnapshotWindow *)&v13 initWithWindowScene:a3];
  v11 = v10;
  if (v10)
  {
    [(SBSnapshotWindow *)v10 setFrame:x, y, width, height];
    v11->_orientation = a5;
  }

  return v11;
}

@end