@interface CollapsingButton
- (BOOL)isAccessibilityElement;
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (double)systemLayoutSizeFittingSize:(void *)size;
- (unint64_t)accessibilityTraits;
- (void)didMoveToWindow;
- (void)layoutSubviews;
@end

@implementation CollapsingButton

- (double)systemLayoutSizeFittingSize:(void *)size
{
  sizeCopy = size;
  *&v4 = *&CollapsingButton.sizeThatFits(_:)(__PAIR128__(v3, v2));

  return v4;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CollapsingButton.layoutSubviews()();
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = CollapsingButton.intrinsicContentSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  selfCopy = self;
  v10 = CollapsingButton.systemLayoutSizeFitting(_:withHorizontalFittingPriority:verticalFittingPriority:)(__PAIR128__(v7, v6), v8, v9);

  width = v10.width;
  height = v10.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  CollapsingButton.didMoveToWindow()();
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v3 = CollapsingButton.isAccessibilityElement.getter();

  return v3 & 1;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = CollapsingButton.accessibilityTraits.getter();

  return v3;
}

@end