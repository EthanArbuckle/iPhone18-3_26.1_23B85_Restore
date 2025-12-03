@interface _UIRenderingEnvironmentAttributes
- (BOOL)isEqual:(id)equal;
- (BOOL)refersToSameDisplayConfiguration:(id)configuration;
- (NSString)description;
- (_UIRenderingEnvironmentAttributes)init;
- (_UIRenderingEnvironmentAttributes)initWithDisplayConfiguration:(id)configuration;
@end

@implementation _UIRenderingEnvironmentAttributes

- (_UIRenderingEnvironmentAttributes)init
{
  [(_UIRenderingEnvironmentAttributes *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_UIRenderingEnvironmentAttributes)initWithDisplayConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v8.receiver = self;
  v8.super_class = _UIRenderingEnvironmentAttributes;
  v5 = [(_UIRenderingEnvironmentAttributes *)&v8 init];
  if (v5)
  {
    identity = [configurationCopy identity];
    v5->_displayID = [identity displayID];
  }

  return v5;
}

- (BOOL)refersToSameDisplayConfiguration:(id)configuration
{
  displayID = self->_displayID;
  identity = [configuration identity];
  LOBYTE(displayID) = displayID == [identity displayID];

  return displayID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else if ([(_UIRenderingEnvironmentAttributes *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_displayID == equalCopy->_displayID;
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