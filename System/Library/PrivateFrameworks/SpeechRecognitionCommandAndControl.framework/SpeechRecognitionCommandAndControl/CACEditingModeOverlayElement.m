@interface CACEditingModeOverlayElement
- (BOOL)isEqual:(id)a3;
- (CGRect)axFrame;
- (CGRect)interfaceOrientedFrame;
- (NSString)label;
- (_NSRange)range;
@end

@implementation CACEditingModeOverlayElement

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(CACEditingModeOverlayElement *)self range];
    v9 = v8;
    v11 = 0;
    if (v7 == [v6 range] && v9 == v10)
    {
      v12 = [(CACEditingModeOverlayElement *)self number];
      if (v12 == [v6 number])
      {
        v13 = [(CACEditingModeOverlayElement *)self representedText];
        v14 = [v6 representedText];
        if ([v13 isEqual:v14])
        {
          [(CACEditingModeOverlayElement *)self axFrame];
          v16 = v15;
          v18 = v17;
          v20 = v19;
          v22 = v21;
          [v6 axFrame];
          v29.origin.x = v23;
          v29.origin.y = v24;
          v29.size.width = v25;
          v29.size.height = v26;
          v28.origin.x = v16;
          v28.origin.y = v18;
          v28.size.width = v20;
          v28.size.height = v22;
          v11 = CGRectEqualToRect(v28, v29);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)label
{
  v2 = [(CACEditingModeOverlayElement *)self number];

  return [CACLocaleUtilities displayStringForOverlayNumber:v2];
}

- (_NSRange)range
{
  length = self->_range.length;
  location = self->_range.location;
  result.length = length;
  result.location = location;
  return result;
}

- (CGRect)axFrame
{
  x = self->_axFrame.origin.x;
  y = self->_axFrame.origin.y;
  width = self->_axFrame.size.width;
  height = self->_axFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)interfaceOrientedFrame
{
  x = self->_interfaceOrientedFrame.origin.x;
  y = self->_interfaceOrientedFrame.origin.y;
  width = self->_interfaceOrientedFrame.size.width;
  height = self->_interfaceOrientedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end