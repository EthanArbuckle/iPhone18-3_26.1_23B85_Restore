@interface _UIRenderingEnvironmentAttributes
- (BOOL)isEqual:(id)a3;
- (BOOL)refersToSameDisplayConfiguration:(id)a3;
- (NSString)description;
- (_UIRenderingEnvironmentAttributes)init;
- (_UIRenderingEnvironmentAttributes)initWithDisplayConfiguration:(id)a3;
@end

@implementation _UIRenderingEnvironmentAttributes

- (_UIRenderingEnvironmentAttributes)init
{
  [(_UIRenderingEnvironmentAttributes *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIRenderingEnvironmentAttributes)initWithDisplayConfiguration:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIRenderingEnvironmentAttributes;
  v5 = [(_UIRenderingEnvironmentAttributes *)&v8 init];
  if (v5)
  {
    v6 = [v4 identity];
    v5->_displayID = [v6 displayID];
  }

  return v5;
}

- (BOOL)refersToSameDisplayConfiguration:(id)a3
{
  displayID = self->_displayID;
  v4 = [a3 identity];
  LOBYTE(displayID) = displayID == [v4 displayID];

  return displayID;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(_UIRenderingEnvironmentAttributes *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_displayID == v4->_displayID;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _UIRenderingEnvironmentAttributes;
  v4 = [(_UIRenderingEnvironmentAttributes *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ displayID=%li", v4, self->_displayID];

  return v5;
}

@end