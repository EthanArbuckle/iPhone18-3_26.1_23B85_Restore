@interface UIViewAnimation
- (id)description;
- (id)initWithView:(void *)a3 indexPath:(int)a4 viewType:(int)a5 endRect:(char)a6 endAlpha:(char)a7 startFraction:(char)a8 endFraction:(double)a9 curve:(double)a10 animateFromCurrentPosition:(double)a11 shouldDeleteAfterAnimation:(double)a12 editing:(double)a13;
@end

@implementation UIViewAnimation

- (id)initWithView:(void *)a3 indexPath:(int)a4 viewType:(int)a5 endRect:(char)a6 endAlpha:(char)a7 startFraction:(char)a8 endFraction:(double)a9 curve:(double)a10 animateFromCurrentPosition:(double)a11 shouldDeleteAfterAnimation:(double)a12 editing:(double)a13
{
  v30 = a2;
  v31 = a3;
  if (a1)
  {
    v35.receiver = a1;
    v35.super_class = UIViewAnimation;
    v32 = objc_msgSendSuper2(&v35, sel_init);
    a1 = v32;
    if (v32)
    {
      objc_storeStrong(v32 + 3, a2);
      objc_storeStrong(a1 + 4, a3);
      *(a1 + 4) = a4;
      *(a1 + 9) = a10;
      *(a1 + 10) = a11;
      *(a1 + 11) = a12;
      *(a1 + 5) = a13;
      *(a1 + 6) = a14;
      *(a1 + 7) = a15;
      *(a1 + 8) = a9;
      if (a15 < a14)
      {
        v34 = [MEMORY[0x1E696AAA8] currentHandler];
        [v34 handleFailureInMethod:sel_initWithView_indexPath_viewType_endRect_endAlpha_startFraction_endFraction_curve_animateFromCurrentPosition_shouldDeleteAfterAnimation_editing_ object:a1 file:@"UITableViewSupport.m" lineNumber:2900 description:@"Cell animation stop fraction must be greater than start fraction"];
      }

      *(a1 + 5) = a5;
      *(a1 + 8) = a6;
      *(a1 + 9) = a7;
      *(a1 + 10) = a8;
      *(a1 + 11) = 1;
    }
  }

  return a1;
}

- (id)description
{
  v3 = NSStringFromCGRect(self->_endRect);
  v4 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = UIViewAnimation;
  v5 = [(UIViewAnimation *)&v12 description];
  v6 = v5;
  v7 = @"NO";
  if (self->_animateFromCurrentPosition)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_shouldDeleteAfterAnimation)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_editing)
  {
    v7 = @"YES";
  }

  v10 = [v4 stringWithFormat:@"%@ view: %@ indexPath: %@ end alpha: %g end rect: %@ fraction: %g->%g curve: %d from current position: %@ delete after anim: %@ editing: %@", v5, self->_view, self->_indexPath, *&self->_endAlpha, v3, *&self->_startFraction, *&self->_endFraction, self->_curve, v8, v9, v7];

  return v10;
}

@end