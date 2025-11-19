@interface _TVSegmentedControlTarget
+ (void)addTargetInSegmentedControl:(id)a3 withHighlightViewElements:(id)a4;
- (_TVSegmentedControlTarget)initWithViewElements:(id)a3;
- (void)_valueChanged:(id)a3;
@end

@implementation _TVSegmentedControlTarget

+ (void)addTargetInSegmentedControl:(id)a3 withHighlightViewElements:(id)a4
{
  object = a3;
  v6 = a4;
  v7 = objc_getAssociatedObject(object, "AssociatedTarget");
  if (v7)
  {
    [object removeTarget:v7 action:sel__valueChanged_ forControlEvents:4096];
  }

  v8 = [[a1 alloc] initWithViewElements:v6];

  [object addTarget:v8 action:sel__valueChanged_ forControlEvents:4096];
  objc_setAssociatedObject(object, "AssociatedTarget", v8, 0x301);
}

- (_TVSegmentedControlTarget)initWithViewElements:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _TVSegmentedControlTarget;
  v5 = [(_TVSegmentedControlTarget *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    elements = v5->_elements;
    v5->_elements = v6;
  }

  return v5;
}

- (void)_valueChanged:(id)a3
{
  v7 = a3;
  v4 = [v7 selectedSegmentIndex];
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v4;
    if (v4 < [(NSArray *)self->_elements count])
    {
      v6 = [(NSArray *)self->_elements objectAtIndex:v5];
      [v6 tv_dispatchEvent:@"highlight" canBubble:1 isCancelable:0 extraInfo:0 targetResponder:v7 completionBlock:0];
    }
  }
}

@end