@interface NCNotificationSummaryPlatterContainingView
- (BOOL)supportsMitosis;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NCNotificationSummaryPlatterContainingView)initWithSummaryPlatterView:(id)a3;
- (double)glassSmoothness;
- (int64_t)backgroundGlassId;
- (unint64_t)backgroundGlassState;
- (void)layoutSubviews;
- (void)removeLightEffectsIfNeeded;
- (void)setApparentZDistanceToUser:(int64_t)a3;
- (void)setGlassMode:(unint64_t)a3;
- (void)setRootScrollVelocity:(double)a3;
- (void)setSummaryPlatterView:(id)a3;
- (void)setSupportsMitosis:(BOOL)a3;
- (void)setUnmanagedBackdropContrast:(BOOL)a3;
@end

@implementation NCNotificationSummaryPlatterContainingView

- (NCNotificationSummaryPlatterContainingView)initWithSummaryPlatterView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NCNotificationSummaryPlatterContainingView;
  v6 = [(NCNotificationSummaryPlatterContainingView *)&v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    [(NCNotificationSummaryPlatterContainingView *)v6 addSubview:v5];
    objc_storeStrong(&v7->_summaryPlatterView, a3);
    v7->_apparentZDistanceToUser = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  [v5 sizeThatFits:{width, height}];
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
  v7 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  [v7 frame];
  v9 = v8;
  v11 = v10;

  v12 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  [v12 setFrame:{v9, v11, v4, v6}];
}

- (void)setSummaryPlatterView:(id)a3
{
  v5 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    [(UIView *)self->_summaryPlatterView removeFromSuperview];
    [(NCNotificationSummaryPlatterContainingView *)self addSubview:v5];
    objc_storeStrong(&self->_summaryPlatterView, a3);
  }
}

- (void)setApparentZDistanceToUser:(int64_t)a3
{
  if (self->_apparentZDistanceToUser != a3)
  {
    self->_apparentZDistanceToUser = a3;
    v5 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v6 = objc_opt_class();
    v7 = v5;
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
      [v10 updateWithApparentZDistanceToUser:a3];
      v9 = v10;
    }
  }
}

- (void)setRootScrollVelocity:(double)a3
{
  if (self->_rootScrollVelocity != a3)
  {
    self->_rootScrollVelocity = a3;
    v4 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v5 = objc_opt_class();
    v6 = v4;
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
      [v9 updateWithRootListScrollVelocity:a3];
      v8 = v9;
    }
  }
}

- (void)setGlassMode:(unint64_t)a3
{
  if (self->_glassMode != a3)
  {
    self->_glassMode = a3;
    v5 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v6 = objc_opt_class();
    v7 = v5;
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
      [v10 updateWithGlassMode:a3];
      v9 = v10;
    }
  }
}

- (BOOL)supportsMitosis
{
  v2 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = v2;
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

  v7 = [v6 supportsMitosis];
  return v7;
}

- (void)setSupportsMitosis:(BOOL)a3
{
  v3 = a3;
  v4 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v5 = objc_opt_class();
  v6 = v4;
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

  [v8 setSupportsMitosis:v3];
}

- (void)setUnmanagedBackdropContrast:(BOOL)a3
{
  if (self->_unmanagedBackdropContrast != a3)
  {
    v4 = a3;
    self->_unmanagedBackdropContrast = a3;
    v5 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
    v6 = objc_opt_class();
    v7 = v5;
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
      [v10 setUnmanagedBackdropContrast:v4];
      v9 = v10;
    }
  }
}

- (unint64_t)backgroundGlassState
{
  v2 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = v2;
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
    v7 = [v6 backgroundGlassState];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)backgroundGlassId
{
  v2 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = v2;
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
    v7 = [v6 backgroundGlassId];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)glassSmoothness
{
  v2 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = v2;
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
  v2 = [(NCNotificationSummaryPlatterContainingView *)self summaryPlatterView];
  v3 = objc_opt_class();
  v4 = v2;
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