@interface UIAccessibilityAggregateElement
- (CGRect)accessibilityFrame;
- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)a3;
- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)a3 representedElements:(id)a4;
- (id)accessibilityLabel;
- (void)addRepresentedObject:(id)a3;
@end

@implementation UIAccessibilityAggregateElement

- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)a3 representedElements:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = UIAccessibilityAggregateElement;
  v7 = [(UIAccessibilityAggregateElement *)&v10 initWithAccessibilityContainer:a3];
  v8 = v7;
  if (v7)
  {
    [(UIAccessibilityAggregateElement *)v7 setRepresentedElements:v6];
  }

  return v8;
}

- (void)addRepresentedObject:(id)a3
{
  representedElements = self->_representedElements;
  v5 = a3;
  v6 = [(NSArray *)representedElements mutableCopy];
  [v6 axSafelyAddObject:v5];

  [(UIAccessibilityAggregateElement *)self setRepresentedElements:v6];
}

- (id)accessibilityLabel
{
  v3 = [(UIAccessibilityAggregateElement *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    v4 = [(UIAccessibilityAggregateElement *)self accessibilityUserDefinedLabel];
  }

  else
  {
    v5 = [(UIAccessibilityAggregateElement *)self representedElements];
    v4 = UIAXLabelForElements();
  }

  return v4;
}

- (CGRect)accessibilityFrame
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIAccessibilityAggregateElement *)self accessibilityUserDefinedFrame], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    v4 = [(UIAccessibilityAggregateElement *)self accessibilityUserDefinedFrame];
    [v4 rectValue];
  }

  else
  {
    v4 = [(UIAccessibilityAggregateElement *)self representedElements];
    v5 = UIAXFrameForElements(v4);
  }

  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;

  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)a3
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v5.receiver = self;
  v5.super_class = UIAccessibilityAggregateElement;
  return [(UIAccessibilityAggregateElement *)&v5 init];
}

@end