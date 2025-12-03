@interface SFHorizontalProgressView
- (SFHorizontalProgressView)initWithFrame:(CGRect)frame;
- (void)setProgress:(double)progress animated:(BOOL)animated;
@end

@implementation SFHorizontalProgressView

- (SFHorizontalProgressView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = SFHorizontalProgressView;
  v3 = [(SFHorizontalProgressView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(SFHorizontalProgressView *)v3 setBackgroundColor:v4];

    v5 = [[UIProgressView alloc] initWithProgressViewStyle:0];
    internalProgressView = v3->_internalProgressView;
    v3->_internalProgressView = v5;

    [(UIProgressView *)v3->_internalProgressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFHorizontalProgressView *)v3 addSubview:v3->_internalProgressView];
    centerYAnchor = [(UIProgressView *)v3->_internalProgressView centerYAnchor];
    centerYAnchor2 = [(SFHorizontalProgressView *)v3 centerYAnchor];
    v7 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v23[0] = v7;
    leadingAnchor = [(UIProgressView *)v3->_internalProgressView leadingAnchor];
    leadingAnchor2 = [(SFHorizontalProgressView *)v3 leadingAnchor];
    v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v23[1] = v10;
    trailingAnchor = [(UIProgressView *)v3->_internalProgressView trailingAnchor];
    trailingAnchor2 = [(SFHorizontalProgressView *)v3 trailingAnchor];
    v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v23[2] = v13;
    v14 = [NSArray arrayWithObjects:v23 count:3];
    [NSLayoutConstraint activateConstraints:v14];

    heightAnchor = [(UIProgressView *)v3->_internalProgressView heightAnchor];
    v16 = [heightAnchor constraintEqualToConstant:20.0];
    heightConstraint = v3->_heightConstraint;
    v3->_heightConstraint = v16;

    layer = [(UIProgressView *)v3->_internalProgressView layer];
    [layer setCornerRadius:10.0];

    [(UIProgressView *)v3->_internalProgressView setClipsToBounds:1];
    [(NSLayoutConstraint *)v3->_heightConstraint setActive:1];
    [(UIProgressView *)v3->_internalProgressView setProgress:0.0];
  }

  return v3;
}

- (void)setProgress:(double)progress animated:(BOOL)animated
{
  v6 = fmax(progress, 0.0);
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
    animatedCopy = animated;
    dispatch_async(&_dispatch_main_q, block);
  }
}

@end