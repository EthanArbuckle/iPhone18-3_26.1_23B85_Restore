@interface NCNotificationSummaryPlatterContainingView
- (BOOL)supportsMitosis;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NCNotificationSummaryPlatterContainingView)initWithSummaryPlatterView:(id)view;
- (double)glassSmoothness;
- (int64_t)backgroundGlassId;
- (unint64_t)backgroundGlassState;
- (void)layoutSubviews;
- (void)removeLightEffectsIfNeeded;
- (void)setApparentZDistanceToUser:(int64_t)user;
- (void)setGlassMode:(unint64_t)mode;
- (void)setRootScrollVelocity:(double)velocity;
- (void)setSummaryPlatterView:(id)view;
- (void)setSupportsMitosis:(BOOL)mitosis;
- (void)setUnmanagedBackdropContrast:(BOOL)contrast;
@end

@implementation NCNotificationSummaryPlatterContainingView

- (NCNotificationSummaryPlatterContainingView)initWithSummaryPlatterView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = NCNotificationSummaryPlatterContainingView;
  v6 = [(NCNotificationSummaryPlatterContainingView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    [(NCNotificationSummaryPlatterContainingView *)v6 addSubview:viewCopy];
    objc_storeStrong(&v7->_summaryPlatterView, view);
    v7->_apparentZDistanceToUser = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  [summaryPlatterView sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = NCNotificationSummaryPlatterContainingView;
  [(NCNotificationSummaryPlatterContainingView *)&v13 layoutSubviews];
  [(NCNotificationSummaryPlatterContainingView *)self bounds];
  v4 = v3;
  v6 = v5;
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  [summaryPlatterView frame];
  v9 = v8;
  v11 = v10;

  summaryPlatterView2 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  [summaryPlatterView2 setFrame:{v9, v11, v4, v6}];
}

- (void)setSummaryPlatterView:(id)view
{
  viewCopy = view;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(UIView *)self->_summaryPlatterView removeFromSuperview];
    [(NCNotificationSummaryPlatterContainingView *)self addSubview:viewCopy];
    objc_storeStrong(&self->_summaryPlatterView, view);
  }
}

- (void)setApparentZDistanceToUser:(int64_t)user
{
  if (self->_apparentZDistanceToUser != user)
  {
    self->_apparentZDistanceToUser = user;
    summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v6 = objc_opt_class();
    v7 = summaryPlatterView;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v9 = v10;
    if (v10)
    {
      [v10 updateWithApparentZDistanceToUser:user];
      v9 = v10;
    }
  }
}

- (void)setRootScrollVelocity:(double)velocity
{
  if (self->_rootScrollVelocity != velocity)
  {
    self->_rootScrollVelocity = velocity;
    summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v5 = objc_opt_class();
    v6 = summaryPlatterView;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;

    v8 = v9;
    if (v9)
    {
      [v9 updateWithRootListScrollVelocity:velocity];
      v8 = v9;
    }
  }
}

- (void)setGlassMode:(unint64_t)mode
{
  if (self->_glassMode != mode)
  {
    self->_glassMode = mode;
    summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v6 = objc_opt_class();
    v7 = summaryPlatterView;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v9 = v10;
    if (v10)
    {
      [v10 updateWithGlassMode:mode];
      v9 = v10;
    }
  }
}

- (BOOL)supportsMitosis
{
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = summaryPlatterView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  supportsMitosis = [v6 supportsMitosis];
  return supportsMitosis;
}

- (void)setSupportsMitosis:(BOOL)mitosis
{
  mitosisCopy = mitosis;
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v5 = objc_opt_class();
  v6 = summaryPlatterView;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 setSupportsMitosis:mitosisCopy];
}

- (void)setUnmanagedBackdropContrast:(BOOL)contrast
{
  if (self->_unmanagedBackdropContrast != contrast)
  {
    contrastCopy = contrast;
    self->_unmanagedBackdropContrast = contrast;
    summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v6 = objc_opt_class();
    v7 = summaryPlatterView;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v9 = v10;
    if (v10)
    {
      [v10 setUnmanagedBackdropContrast:contrastCopy];
      v9 = v10;
    }
  }
}

- (unint64_t)backgroundGlassState
{
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = summaryPlatterView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    backgroundGlassState = [v6 backgroundGlassState];
  }

  else
  {
    backgroundGlassState = 0;
  }

  return backgroundGlassState;
}

- (int64_t)backgroundGlassId
{
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = summaryPlatterView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    backgroundGlassId = [v6 backgroundGlassId];
  }

  else
  {
    backgroundGlassId = 0;
  }

  return backgroundGlassId;
}

- (double)glassSmoothness
{
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = summaryPlatterView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 glassSmoothness];
    v8 = v7;
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (void)removeLightEffectsIfNeeded
{
  summaryPlatterView = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = summaryPlatterView;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  v6 = v7;
  if (v7)
  {
    [v7 removeLightEffectsIfNeeded];
    v6 = v7;
  }
}

@end