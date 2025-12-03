@interface _UIEventSessionTapAction
- (CGPoint)buttonLocation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation _UIEventSessionTapAction

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = _UIEventSessionTapAction;
  result = [(_UIEventSessionAction *)&v5 copyWithZone:zone];
  *(result + 72) = self->_buttonLocation;
  return result;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = _UIEventSessionTapAction;
  v3 = [(_UIEventSessionAction *)&v13 description];
  array = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  [(_UIEventSessionTapAction *)self buttonLocation];
  v7 = v6;
  [(_UIEventSessionTapAction *)self buttonLocation];
  v9 = [v5 stringWithFormat:@" buttonLocation = (%f, %f)", v7, v8];
  [array addObject:v9];

  if ([array count])
  {
    v10 = [array componentsJoinedByString:{@", "}];
    v11 = [v3 stringByAppendingFormat:@" %@", v10];

    v3 = v11;
  }

  return v3;
}

- (CGPoint)buttonLocation
{
  x = self->_buttonLocation.x;
  y = self->_buttonLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

@end