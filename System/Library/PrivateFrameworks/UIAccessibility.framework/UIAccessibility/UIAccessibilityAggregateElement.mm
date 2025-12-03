@interface UIAccessibilityAggregateElement
- (CGRect)accessibilityFrame;
- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)container;
- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)container representedElements:(id)elements;
- (id)accessibilityLabel;
- (void)addRepresentedObject:(id)object;
@end

@implementation UIAccessibilityAggregateElement

- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)container representedElements:(id)elements
{
  elementsCopy = elements;
  v10.receiver = self;
  v10.super_class = UIAccessibilityAggregateElement;
  v7 = [(UIAccessibilityAggregateElement *)&v10 initWithAccessibilityContainer:container];
  v8 = v7;
  if (v7)
  {
    [(UIAccessibilityAggregateElement *)v7 setRepresentedElements:elementsCopy];
  }

  return v8;
}

- (void)addRepresentedObject:(id)object
{
  representedElements = self->_representedElements;
  objectCopy = object;
  v6 = [(NSArray *)representedElements mutableCopy];
  [v6 axSafelyAddObject:objectCopy];

  [(UIAccessibilityAggregateElement *)self setRepresentedElements:v6];
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(UIAccessibilityAggregateElement *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
  {
    accessibilityUserDefinedLabel2 = [(UIAccessibilityAggregateElement *)self accessibilityUserDefinedLabel];
  }

  else
  {
    representedElements = [(UIAccessibilityAggregateElement *)self representedElements];
    accessibilityUserDefinedLabel2 = UIAXLabelForElements();
  }

  return accessibilityUserDefinedLabel2;
}

- (CGRect)accessibilityFrame
{
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([(UIAccessibilityAggregateElement *)self accessibilityUserDefinedFrame], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    accessibilityUserDefinedFrame = [(UIAccessibilityAggregateElement *)self accessibilityUserDefinedFrame];
    [accessibilityUserDefinedFrame rectValue];
  }

  else
  {
    accessibilityUserDefinedFrame = [(UIAccessibilityAggregateElement *)self representedElements];
    v5 = UIAXFrameForElements(accessibilityUserDefinedFrame);
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

- (UIAccessibilityAggregateElement)initWithAccessibilityContainer:(id)container
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  v5.receiver = self;
  v5.super_class = UIAccessibilityAggregateElement;
  return [(UIAccessibilityAggregateElement *)&v5 init];
}

@end