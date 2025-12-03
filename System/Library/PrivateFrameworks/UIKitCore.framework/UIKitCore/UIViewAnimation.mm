@interface UIViewAnimation
- (id)description;
- (id)initWithView:(void *)view indexPath:(int)path viewType:(int)type endRect:(char)rect endAlpha:(char)alpha startFraction:(char)fraction endFraction:(double)endFraction curve:(double)self0 animateFromCurrentPosition:(double)self1 shouldDeleteAfterAnimation:(double)self2 editing:(double)self3;
@end

@implementation UIViewAnimation

- (id)initWithView:(void *)view indexPath:(int)path viewType:(int)type endRect:(char)rect endAlpha:(char)alpha startFraction:(char)fraction endFraction:(double)endFraction curve:(double)self0 animateFromCurrentPosition:(double)self1 shouldDeleteAfterAnimation:(double)self2 editing:(double)self3
{
  v30 = a2;
  viewCopy = view;
  if (self)
  {
    v35.receiver = self;
    v35.super_class = UIViewAnimation;
    v32 = objc_msgSendSuper2(&v35, sel_init);
    self = v32;
    if (v32)
    {
      objc_storeStrong(v32 + 3, a2);
      objc_storeStrong(self + 4, view);
      *(self + 4) = path;
      *(self + 9) = curve;
      *(self + 10) = position;
      *(self + 11) = animation;
      *(self + 5) = editing;
      *(self + 6) = a14;
      *(self + 7) = a15;
      *(self + 8) = endFraction;
      if (a15 < a14)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:sel_initWithView_indexPath_viewType_endRect_endAlpha_startFraction_endFraction_curve_animateFromCurrentPosition_shouldDeleteAfterAnimation_editing_ object:self file:@"UITableViewSupport.m" lineNumber:2900 description:@"Cell animation stop fraction must be greater than start fraction"];
      }

      *(self + 5) = type;
      *(self + 8) = rect;
      *(self + 9) = alpha;
      *(self + 10) = fraction;
      *(self + 11) = 1;
    }
  }

  return self;
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