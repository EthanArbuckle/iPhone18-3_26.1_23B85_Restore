@interface SFHorizontalProgressView
- (SFHorizontalProgressView)initWithFrame:(CGRect)a3;
- (void)setProgress:(double)a3 animated:(BOOL)a4;
@end

@implementation SFHorizontalProgressView

- (SFHorizontalProgressView)initWithFrame:(CGRect)a3
{
  v22.receiver = self;
  v22.super_class = SFHorizontalProgressView;
  v3 = [(SFHorizontalProgressView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(SFHorizontalProgressView *)v3 setBackgroundColor:v4];

    v5 = [[UIProgressView alloc] initWithProgressViewStyle:0];
    internalProgressView = v3->_internalProgressView;
    v3->_internalProgressView = v5;

    [(UIProgressView *)v3->_internalProgressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFHorizontalProgressView *)v3 addSubview:v3->_internalProgressView];
    v21 = [(UIProgressView *)v3->_internalProgressView centerYAnchor];
    v20 = [(SFHorizontalProgressView *)v3 centerYAnchor];
    v7 = [v21 constraintEqualToAnchor:v20];
    v23[0] = v7;
    v8 = [(UIProgressView *)v3->_internalProgressView leadingAnchor];
    v9 = [(SFHorizontalProgressView *)v3 leadingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9];
    v23[1] = v10;
    v11 = [(UIProgressView *)v3->_internalProgressView trailingAnchor];
    v12 = [(SFHorizontalProgressView *)v3 trailingAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v23[2] = v13;
    v14 = [NSArray arrayWithObjects:v23 count:3];
    [NSLayoutConstraint activateConstraints:v14];

    v15 = [(UIProgressView *)v3->_internalProgressView heightAnchor];
    v16 = [v15 constraintEqualToConstant:20.0];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v16;

    v18 = [(UIProgressView *)v3->_internalProgressView layer];
    [v18 setCornerRadius:10.0];

    [(UIProgressView *)v3->_internalProgressView setClipsToBounds:1];
    [(NSLayoutConstraint *)v3->_heightConstraint setActive:1];
    [(UIProgressView *)v3->_internalProgressView setProgress:0.0];
  }

  return v3;
}

- (void)setProgress:(double)a3 animated:(BOOL)a4
{
  v6 = fmax(a3, 0.0);
  if (v6 <= 1.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.0;
  }

  [(UIProgressView *)self->_internalProgressView progress];
  if (v7 != v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001044;
    block[3] = &unk_100004178;
    block[4] = self;
    *&block[5] = v7;
    v10 = a4;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end