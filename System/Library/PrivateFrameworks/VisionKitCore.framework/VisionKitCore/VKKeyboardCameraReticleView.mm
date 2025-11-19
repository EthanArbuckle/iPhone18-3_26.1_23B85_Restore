@interface VKKeyboardCameraReticleView
- (VKKeyboardCameraReticleView)initWithFrame:(CGRect)a3;
- (double)spotlightBlurRadius;
- (void)collapseReticleRect;
- (void)layoutSubviews;
- (void)setReticleRect:(CGRect)a3 angle:(double)a4;
- (void)setSpotlightBlurRadius:(double)a3;
@end

@implementation VKKeyboardCameraReticleView

- (VKKeyboardCameraReticleView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = VKKeyboardCameraReticleView;
  v3 = [(VKKeyboardCameraReticleView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6993898]);
    reticleView = v3->_reticleView;
    v3->_reticleView = v4;

    [(CEKSubjectIndicatorView *)v3->_reticleView setShape:1];
    [(CEKSubjectIndicatorView *)v3->_reticleView setHidden:1];
    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    spotlightView = v3->_spotlightView;
    v3->_spotlightView = v6;

    [(UIView *)v3->_spotlightView setHidden:1];
    [(VKKeyboardCameraReticleView *)v3 addSubview:v3->_reticleView];
    [(VKKeyboardCameraReticleView *)v3 addSubview:v3->_spotlightView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = VKKeyboardCameraReticleView;
  [(VKKeyboardCameraReticleView *)&v9 layoutSubviews];
  if (!self->_hasSetReticleRect)
  {
    [(VKKeyboardCameraReticleView *)self bounds];
    x = v10.origin.x;
    y = v10.origin.y;
    width = v10.size.width;
    height = v10.size.height;
    MidX = CGRectGetMidX(v10);
    v11.origin.x = x;
    v11.origin.y = y;
    v11.size.width = width;
    v11.size.height = height;
    v8 = CGRectGetMidX(v11);
    [(CEKSubjectIndicatorView *)self->_reticleView setFrame:MidX, v8, 0.0, 0.0];
    [(UIView *)self->_spotlightView setFrame:MidX, v8, 0.0, 0.0];
  }
}

- (double)spotlightBlurRadius
{
  v2 = [(UIView *)self->_spotlightView layer];
  [v2 shadowRadius];
  v4 = v3;

  return v4;
}

- (void)setSpotlightBlurRadius:(double)a3
{
  v4 = [(UIView *)self->_spotlightView layer];
  [v4 setShadowRadius:a3];
}

- (void)setReticleRect:(CGRect)a3 angle:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!self->_hasSetReticleRect)
  {
    [(CEKSubjectIndicatorView *)self->_reticleView setHidden:0];
    [(UIView *)self->_spotlightView setHidden:0];
    v10 = [(UIView *)self->_spotlightView layer];
    [(UIView *)self->_spotlightView _setContinuousCornerRadius:20.0];
    v11 = [MEMORY[0x1E69DC888] blackColor];
    [v10 setShadowColor:{objc_msgSend(v11, "CGColor")}];

    LODWORD(v12) = 1.0;
    [v10 setShadowOpacity:v12];
    [v10 setShadowPathIsBounds:1];
    [v10 setInvertsShadow:1];
    self->_hasSetReticleRect = 1;
  }

  reticleView = self->_reticleView;
  v25 = *(MEMORY[0x1E695EFD0] + 16);
  *&v30.a = *MEMORY[0x1E695EFD0];
  v27 = *&v30.a;
  *&v30.c = v25;
  *&v30.tx = *(MEMORY[0x1E695EFD0] + 32);
  *(&v23 + 1) = *&v30.ty;
  [(CEKSubjectIndicatorView *)reticleView setTransform:&v30, *&v30.tx];
  spotlightView = self->_spotlightView;
  *&v30.a = v27;
  *&v30.c = v25;
  *&v30.tx = v23;
  [(UIView *)spotlightView setTransform:&v30];
  if (width * height <= 0.0)
  {
    v22 = height;
    v21 = width;
    v20 = y;
    v15 = x;
  }

  else
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    v32 = CGRectInset(v31, -10.0, -10.0);
    v15 = v32.origin.x;
    v24 = v32.origin.y;
    v26 = v32.size.width;
    v28 = v32.size.height;
    [(VKKeyboardCameraReticleView *)self spotlightBlurRadius];
    v17 = -10.0 - v16;
    [(VKKeyboardCameraReticleView *)self spotlightBlurRadius];
    v19 = -10.0 - v18;
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v34 = CGRectInset(v33, v17, v19);
    x = v34.origin.x;
    y = v34.origin.y;
    v20 = v24;
    width = v34.size.width;
    v21 = v26;
    height = v34.size.height;
    v22 = v28;
  }

  [(CEKSubjectIndicatorView *)self->_reticleView setFrame:v15, v20, v21, v22];
  [(UIView *)self->_spotlightView setFrame:x, y, width, height];
  memset(&v30, 0, sizeof(v30));
  CGAffineTransformMakeRotation(&v30, a4);
  v29 = v30;
  [(CEKSubjectIndicatorView *)self->_reticleView setTransform:&v29];
  v29 = v30;
  [(UIView *)self->_spotlightView setTransform:&v29];
}

- (void)collapseReticleRect
{
  if (self->_hasSetReticleRect && ([(CEKSubjectIndicatorView *)self->_reticleView isHidden]& 1) == 0)
  {
    [(CEKSubjectIndicatorView *)self->_reticleView frame];
    y = v9.origin.y;
    width = v9.size.width;
    height = v9.size.height;
    v10.origin.x = CGRectGetMidX(v9);
    x = v10.origin.x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    MidY = CGRectGetMidY(v10);

    [(VKKeyboardCameraReticleView *)self setReticleRect:x angle:MidY, 0.0, 0.0, 0.0];
  }
}

@end