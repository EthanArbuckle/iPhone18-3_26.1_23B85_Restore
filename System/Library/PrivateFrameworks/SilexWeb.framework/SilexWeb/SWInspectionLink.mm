@interface SWInspectionLink
- (CGRect)frame;
- (SWInspectionLink)initWithObject:(id)object;
@end

@implementation SWInspectionLink

- (SWInspectionLink)initWithObject:(id)object
{
  objectCopy = object;
  v20.receiver = self;
  v20.super_class = SWInspectionLink;
  v5 = [(SWInspectionLink *)&v20 init];
  v6 = v5;
  v7 = 0;
  if (objectCopy && v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objectCopy;
      v9 = [v8 objectForKey:@"href"];
      v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v9];
      href = v6->_href;
      v6->_href = v10;

      v12 = [v8 objectForKey:@"frame"];
      v6->_frame.origin.x = SWInspectionFrameFromDictionary(v12);
      v6->_frame.origin.y = v13;
      v6->_frame.size.width = v14;
      v6->_frame.size.height = v15;
      v16 = [v8 objectForKey:@"label"];

      if (v16)
      {
        v17 = [v8 objectForKey:@"label"];
      }

      else
      {
        v17 = 0;
      }

      label = v6->_label;
      v6->_label = v17;

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