@interface _UIEventSessionTapAction
- (CGPoint)buttonLocation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation _UIEventSessionTapAction

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = _UIEventSessionTapAction;
  result = [(_UIEventSessionAction *)&v5 copyWithZone:a3];
  *(result + 72) = self->_buttonLocation;
  return result;
}

- (id)description
{
  v13.receiver = self;
  v13.super_class = _UIEventSessionTapAction;
  v3 = [(_UIEventSessionAction *)&v13 description];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = MEMORY[0x1E696AEC0];
  [(_UIEventSessionTapAction *)self buttonLocation];
  v7 = v6;
  [(_UIEventSessionTapAction *)self buttonLocation];
  v9 = [v5 stringWithFormat:@" buttonLocation = (%f, %f)", v7, v8];
  [v4 addObject:v9];

  if ([v4 count])
  {
    v10 = [v4 componentsJoinedByString:{@", "}];
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