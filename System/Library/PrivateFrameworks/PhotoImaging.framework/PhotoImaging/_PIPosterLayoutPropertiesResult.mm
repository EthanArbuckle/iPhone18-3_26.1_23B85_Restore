@interface _PIPosterLayoutPropertiesResult
- (CGRect)adaptiveTimeFrame;
- (CGRect)adaptiveVisibleFrame;
- (CGRect)visibleFrame;
- (NSString)description;
@end

@implementation _PIPosterLayoutPropertiesResult

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveTimeFrame
{
  x = self->_adaptiveTimeFrame.origin.x;
  y = self->_adaptiveTimeFrame.origin.y;
  width = self->_adaptiveTimeFrame.size.width;
  height = self->_adaptiveTimeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveVisibleFrame
{
  x = self->_adaptiveVisibleFrame.origin.x;
  y = self->_adaptiveVisibleFrame.origin.y;
  width = self->_adaptiveVisibleFrame.size.width;
  height = self->_adaptiveVisibleFrame.size.height;
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
  layoutVariant = [(_PIPosterLayoutPropertiesResult *)self layoutVariant];
  [(_PIPosterLayoutPropertiesResult *)self maxClockShift];
  v7 = v6;
  v8 = MEMORY[0x1E696B098];
  [(_PIPosterLayoutPropertiesResult *)self adaptiveVisibleFrame];
  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v12;
  v13 = [v8 valueWithBytes:v23 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v14 = MEMORY[0x1E696B098];
  [(_PIPosterLayoutPropertiesResult *)self visibleFrame];
  v22[0] = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
  v19 = [v14 valueWithBytes:v22 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v20 = [v3 stringWithFormat:@"<%@:%p variant:%ld, maxClockShift:%.2f, adaptive-vis:%@, vis: %@>", v4, self, layoutVariant, v7, v13, v19];

  return v20;
}

@end