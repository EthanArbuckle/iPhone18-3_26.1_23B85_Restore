@interface _UISearchBarLayoutBase
- (CGSize)layoutSize;
- (UIEdgeInsets)containerSafeAreaInsets;
- (UIEdgeInsets)contentInset;
- (UIView)associatedView;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)invalidateLayout;
- (void)setBarMetrics:(int64_t)metrics;
- (void)setContainerSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setHostedByNavigationBar:(BOOL)bar;
- (void)setLayoutRTL:(BOOL)l;
- (void)setLayoutSize:(CGSize)size;
- (void)setShouldApplyContainerSafeAreaInsets:(BOOL)insets;
- (void)updateLayoutIfNeeded;
@end

@implementation _UISearchBarLayoutBase

- (void)invalidateLayout
{
  if (self->_isLayoutValid)
  {
    self->_isLayoutValid = 0;
    WeakRetained = objc_loadWeakRetained(&self->_associatedView);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_associatedView);
      v6 = v5[11];

      if ((v6 & 0x4000000000000000) == 0)
      {
        v7 = objc_loadWeakRetained(&self->_associatedView);
        [v7 setNeedsLayout];
      }
    }
  }
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)layoutSize
{
  width = self->_layoutSize.width;
  height = self->_layoutSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)updateLayoutIfNeeded
{
  if (!self->_isLayoutValid)
  {
    [(_UISearchBarLayoutBase *)self updateLayout];
  }

  self->_isLayoutValid = 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(objc_opt_class());
  if (result)
  {
    *(result + 3) = self->_barMetrics;
    v5 = *&self->_contentInset.bottom;
    *(result + 3) = *&self->_contentInset.top;
    *(result + 4) = v5;
    *(result + 9) = self->_layoutRTL;
    *(result + 10) = self->_hostedByNavigationBar;
    *(result + 2) = self->_layoutSize;
    *(result + 8) = self->_isLayoutValid;
    *(result + 11) = self->_shouldApplyContainerSafeAreaInsets;
    v6 = *&self->_containerSafeAreaInsets.bottom;
    *(result + 5) = *&self->_containerSafeAreaInsets.top;
    *(result + 6) = v6;
  }

  return result;
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_contentInset.top), vceqq_f64(v4, *&self->_contentInset.bottom)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setBarMetrics:(int64_t)metrics
{
  if (self->_barMetrics != metrics)
  {
    self->_barMetrics = metrics;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setLayoutRTL:(BOOL)l
{
  if (self->_layoutRTL != l)
  {
    self->_layoutRTL = l;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setLayoutSize:(CGSize)size
{
  if (size.width != self->_layoutSize.width || size.height != self->_layoutSize.height)
  {
    self->_layoutSize = size;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setHostedByNavigationBar:(BOOL)bar
{
  if (self->_hostedByNavigationBar != bar)
  {
    self->_hostedByNavigationBar = bar;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setShouldApplyContainerSafeAreaInsets:(BOOL)insets
{
  if (self->_shouldApplyContainerSafeAreaInsets != insets)
  {
    self->_shouldApplyContainerSafeAreaInsets = insets;
    [(_UISearchBarLayoutBase *)self invalidateLayout];
  }
}

- (void)setContainerSafeAreaInsets:(UIEdgeInsets)insets
{
  if (self->_shouldApplyContainerSafeAreaInsets)
  {
    v3.f64[0] = insets.top;
    v3.f64[1] = insets.left;
    v4.f64[0] = insets.bottom;
    v4.f64[1] = insets.right;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_containerSafeAreaInsets.top), vceqq_f64(v4, *&self->_containerSafeAreaInsets.bottom)))) & 1) == 0)
    {
      self->_containerSafeAreaInsets = insets;
      [(_UISearchBarLayoutBase *)self invalidateLayout];
    }
  }
}

- (id)description
{
  v15.receiver = self;
  v15.super_class = _UISearchBarLayoutBase;
  v3 = [(_UISearchBarLayoutBase *)&v15 description];
  if (os_variant_has_internal_diagnostics())
  {
    if (!self->_isLayoutValid)
    {
      v5 = [v3 stringByAppendingString:@" STALE"];

      v3 = v5;
    }

    WeakRetained = objc_loadWeakRetained(&self->_associatedView);

    if (WeakRetained)
    {
      v7 = objc_loadWeakRetained(&self->_associatedView);
      v8 = [v3 stringByAppendingFormat:@" view=%p", v7];

      v3 = v7;
    }

    else
    {
      v8 = [v3 stringByAppendingString:@" no associated view"];
    }

    barMetrics = self->_barMetrics;
    if (barMetrics)
    {
      v10 = _UIBarMetricsDebugDescription(barMetrics);
      v11 = [v8 stringByAppendingFormat:@" %@", v10];

      v8 = v11;
    }

    if (self->_layoutRTL)
    {
      v12 = [v8 stringByAppendingString:@" RTL"];

      v8 = v12;
    }

    v3 = [v8 stringByAppendingFormat:@" layoutSize={%g, %g}", *&self->_layoutSize.width, *&self->_layoutSize.height];

    v13 = *&self->_contentInset.bottom;
    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_contentInset.top), vceqzq_f64(v13))))))
    {
      v14 = [v3 stringByAppendingFormat:@" contentInset={%g, %g, %g, %g}", *&self->_contentInset.top, *&self->_contentInset.left, *&v13];

      v3 = v14;
    }
  }

  return v3;
}

- (UIView)associatedView
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedView);

  return WeakRetained;
}

- (UIEdgeInsets)containerSafeAreaInsets
{
  top = self->_containerSafeAreaInsets.top;
  left = self->_containerSafeAreaInsets.left;
  bottom = self->_containerSafeAreaInsets.bottom;
  right = self->_containerSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end