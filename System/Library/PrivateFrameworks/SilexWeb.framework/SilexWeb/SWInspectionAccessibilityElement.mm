@interface SWInspectionAccessibilityElement
- (CGRect)frame;
- (SWInspectionAccessibilityElement)initWithObject:(id)object;
@end

@implementation SWInspectionAccessibilityElement

- (SWInspectionAccessibilityElement)initWithObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = SWInspectionAccessibilityElement;
  v5 = [(SWInspectionAccessibilityElement *)&v18 init];
  v6 = v5;
  v7 = 0;
  if (objectCopy && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      v9 = [v8 objectForKey:@"type"];
      type = v6->_type;
      v6->_type = v9;

      v11 = [v8 objectForKey:@"value"];
      value = v6->_value;
      v6->_value = v11;

      v13 = [v8 objectForKey:@"frame"];

      v6->_frame.origin.x = SWInspectionFrameFromDictionary(v13);
      v6->_frame.origin.y = v14;
      v6->_frame.size.width = v15;
      v6->_frame.size.height = v16;
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end