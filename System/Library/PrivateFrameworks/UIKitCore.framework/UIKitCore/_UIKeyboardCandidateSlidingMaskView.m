@interface _UIKeyboardCandidateSlidingMaskView
- (_UIKeyboardCandidateSlidingMaskView)initWithFrame:(CGRect)a3 opaqueHeight:(double)a4 fadeHeight:(double)a5;
@end

@implementation _UIKeyboardCandidateSlidingMaskView

- (_UIKeyboardCandidateSlidingMaskView)initWithFrame:(CGRect)a3 opaqueHeight:(double)a4 fadeHeight:(double)a5
{
  width = a3.size.width;
  v17.receiver = self;
  v17.super_class = _UIKeyboardCandidateSlidingMaskView;
  v8 = [(UIView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v8)
  {
    v9 = [[UIImageView alloc] initWithFrame:0.0, 0.0, width, a4];
    v10 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
    v11 = [v10 extensionMaskImage];

    [(UIImageView *)v9 setImage:v11];
    [(UIImageView *)v9 setContentMode:0];
    v12 = [[UIView alloc] initWithFrame:0.0, 0.0, width, a4];
    v13 = +[UIColor blackColor];
    [(UIView *)v12 setBackgroundColor:v13];

    v14 = [[UIView alloc] initWithFrame:0.0, -a5, width, a5];
    v15 = +[UIColor blackColor];
    [(UIView *)v14 setBackgroundColor:v15];

    [(UIView *)v8 addSubview:v9];
    [(UIView *)v8 addSubview:v14];
    [(UIView *)v8 addSubview:v12];
    [(UIView *)v9 setAutoresizingMask:10];
    [(UIView *)v12 setAutoresizingMask:34];
    [(UIView *)v14 setAutoresizingMask:10];
  }

  return v8;
}

@end