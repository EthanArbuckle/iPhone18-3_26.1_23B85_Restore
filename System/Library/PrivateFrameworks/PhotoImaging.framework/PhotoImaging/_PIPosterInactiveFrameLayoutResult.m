@interface _PIPosterInactiveFrameLayoutResult
- (CGRect)adaptiveInactiveRect;
- (CGRect)inactiveRect;
- (NSString)description;
@end

@implementation _PIPosterInactiveFrameLayoutResult

- (CGRect)adaptiveInactiveRect
{
  x = self->_adaptiveInactiveRect.origin.x;
  y = self->_adaptiveInactiveRect.origin.y;
  width = self->_adaptiveInactiveRect.size.width;
  height = self->_adaptiveInactiveRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inactiveRect
{
  x = self->_inactiveRect.origin.x;
  y = self->_inactiveRect.origin.y;
  width = self->_inactiveRect.size.width;
  height = self->_inactiveRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = MEMORY[0x1E696B098];
  [(_PIPosterInactiveFrameLayoutResult *)self inactiveRect];
  v13[0] = v6;
  v13[1] = v7;
  v13[2] = v8;
  v13[3] = v9;
  v10 = [v5 valueWithBytes:v13 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v11 = [v3 stringWithFormat:@"<%@:%p %@>", v4, self, v10];

  return v11;
}

@end