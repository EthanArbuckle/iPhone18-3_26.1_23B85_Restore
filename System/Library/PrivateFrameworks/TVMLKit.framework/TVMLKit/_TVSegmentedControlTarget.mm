@interface _TVSegmentedControlTarget
+ (void)addTargetInSegmentedControl:(id)control withHighlightViewElements:(id)elements;
- (_TVSegmentedControlTarget)initWithViewElements:(id)elements;
- (void)_valueChanged:(id)changed;
@end

@implementation _TVSegmentedControlTarget

+ (void)addTargetInSegmentedControl:(id)control withHighlightViewElements:(id)elements
{
  object = control;
  elementsCopy = elements;
  v7 = objc_getAssociatedObject(object, "AssociatedTarget");
  if (v7)
  {
    [object removeTarget:v7 action:sel__valueChanged_ forControlEvents:4096];
  }

  v8 = [[self alloc] initWithViewElements:elementsCopy];

  [object addTarget:v8 action:sel__valueChanged_ forControlEvents:4096];
  objc_setAssociatedObject(object, "AssociatedTarget", v8, 0x301);
}

- (_TVSegmentedControlTarget)initWithViewElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = _TVSegmentedControlTarget;
  v5 = [(_TVSegmentedControlTarget *)&v9 init];
  if (v5)
  {
    v6 = [elementsCopy copy];
    elements = v5->_elements;
    v5->_elements = v6;
  }

  return v5;
}

- (void)_valueChanged:(id)changed
{
  changedCopy = changed;
  selectedSegmentIndex = [changedCopy selectedSegmentIndex];
  if ((selectedSegmentIndex & 0x8000000000000000) == 0)
  {
    v5 = selectedSegmentIndex;
    if (selectedSegmentIndex < [(NSArray *)self->_elements count])
    {
      v6 = [(NSArray *)self->_elements objectAtIndex:v5];
      [v6 tv_dispatchEvent:@"highlight" canBubble:1 isCancelable:0 extraInfo:0 targetResponder:changedCopy completionBlock:0];
    }
  }
}

@end