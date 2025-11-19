@interface UISegmentLabel
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (UILabel)associatedLabel;
- (UISegmentLabel)init;
- (id)_associatedScalingLabel;
- (id)_disabledFontColor;
- (id)_parentSegment;
- (void)setAssociatedLabel:(id)a3;
@end

@implementation UISegmentLabel

- (UISegmentLabel)init
{
  v5.receiver = self;
  v5.super_class = UISegmentLabel;
  v2 = [(UIView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(UIView *)v2 setBackgroundColor:0];
    [(UIView *)v3 setOpaque:0];
    [(UILabel *)v3 _setMinimumFontSize:9.0];
    [(UILabel *)v3 setTextAlignment:1];
  }

  return v3;
}

- (id)_parentSegment
{
  v2 = self;
  while (1)
  {
    v3 = v2;
    v2 = [(UIView *)v2 superview];

    if (!v2)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v2;
      break;
    }
  }

  return v2;
}

- (id)_disabledFontColor
{
  v3 = [(UISegmentLabel *)self _parentSegment];
  v4 = [v3 disabledTextColor];
  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = UISegmentLabel;
    v4 = [(UILabel *)&v6 _disabledFontColor];
  }

  return v4;
}

- (id)_associatedScalingLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  return WeakRetained;
}

- (void)setAssociatedLabel:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_associatedLabel, obj);
    [(UILabel *)self setNeedsDisplay];
    v5 = obj;
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISegmentLabel;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (UILabel)associatedLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  return WeakRetained;
}

@end