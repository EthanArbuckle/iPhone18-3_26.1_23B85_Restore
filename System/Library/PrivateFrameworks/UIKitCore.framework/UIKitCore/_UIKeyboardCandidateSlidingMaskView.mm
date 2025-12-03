@interface _UIKeyboardCandidateSlidingMaskView
- (_UIKeyboardCandidateSlidingMaskView)initWithFrame:(CGRect)frame opaqueHeight:(double)height fadeHeight:(double)fadeHeight;
@end

@implementation _UIKeyboardCandidateSlidingMaskView

- (_UIKeyboardCandidateSlidingMaskView)initWithFrame:(CGRect)frame opaqueHeight:(double)height fadeHeight:(double)fadeHeight
{
  width = frame.size.width;
  v17.receiver = self;
  v17.super_class = _UIKeyboardCandidateSlidingMaskView;
  v8 = [(UIView *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v8)
  {
    height = [[UIImageView alloc] initWithFrame:0.0, 0.0, width, height];
    v10 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
    extensionMaskImage = [v10 extensionMaskImage];

    [(UIImageView *)height setImage:extensionMaskImage];
    [(UIImageView *)height setContentMode:0];
    height2 = [[UIView alloc] initWithFrame:0.0, 0.0, width, height];
    v13 = +[UIColor blackColor];
    [(UIView *)height2 setBackgroundColor:v13];

    fadeHeight = [[UIView alloc] initWithFrame:0.0, -fadeHeight, width, fadeHeight];
    v15 = +[UIColor blackColor];
    [(UIView *)fadeHeight setBackgroundColor:v15];

    [(UIView *)v8 addSubview:height];
    [(UIView *)v8 addSubview:fadeHeight];
    [(UIView *)v8 addSubview:height2];
    [(UIView *)height setAutoresizingMask:10];
    [(UIView *)height2 setAutoresizingMask:34];
    [(UIView *)fadeHeight setAutoresizingMask:10];
  }

  return v8;
}

@end