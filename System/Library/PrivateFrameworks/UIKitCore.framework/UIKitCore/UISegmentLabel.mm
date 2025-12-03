@interface UISegmentLabel
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (UILabel)associatedLabel;
- (UISegmentLabel)init;
- (id)_associatedScalingLabel;
- (id)_disabledFontColor;
- (id)_parentSegment;
- (void)setAssociatedLabel:(id)label;
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
  selfCopy = self;
  while (1)
  {
    v3 = selfCopy;
    selfCopy = [(UIView *)selfCopy superview];

    if (!selfCopy)
    {
      break;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = selfCopy;
      break;
    }
  }

  return selfCopy;
}

- (id)_disabledFontColor
{
  _parentSegment = [(UISegmentLabel *)self _parentSegment];
  disabledTextColor = [_parentSegment disabledTextColor];
  if (!disabledTextColor)
  {
    v6.receiver = self;
    v6.super_class = UISegmentLabel;
    disabledTextColor = [(UILabel *)&v6 _disabledFontColor];
  }

  return disabledTextColor;
}

- (id)_associatedScalingLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  return WeakRetained;
}

- (void)setAssociatedLabel:(id)label
{
  obj = label;
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_associatedLabel, obj);
    [(UILabel *)self setNeedsDisplay];
    v5 = obj;
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"contents"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = UISegmentLabel;
    v5 = [(UIView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (UILabel)associatedLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedLabel);

  return WeakRetained;
}

@end