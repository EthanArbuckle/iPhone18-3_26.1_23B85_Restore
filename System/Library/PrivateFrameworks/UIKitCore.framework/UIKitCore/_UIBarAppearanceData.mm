@interface _UIBarAppearanceData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)replicate;
- (id)writableInstance;
- (void)assertMutable:(SEL)mutable;
@end

@implementation _UIBarAppearanceData

- (id)writableInstance
{
  if (self->_immutable)
  {
    selfCopy = [(_UIBarAppearanceData *)self replicate];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)replicate
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_immutable)
  {

    return self;
  }

  else
  {
    [(_UIBarAppearanceData *)self replicate:zone];
    return objc_claimAutoreleasedReturnValue();
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && [(_UIBarAppearanceData *)equalCopy isMemberOfClass:objc_opt_class()]&& [(_UIBarAppearanceData *)self checkEqualTo:v5];
  }

  return v6;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = _UIBarAppearanceData;
  v3 = [(_UIBarAppearanceData *)&v7 description];
  v4 = [v3 mutableCopy];

  if (self->_immutable)
  {
    v5 = @" ro";
  }

  else
  {
    v5 = @" rw";
  }

  [v4 appendString:v5];
  [(_UIBarAppearanceData *)self describeInto:v4];

  return v4;
}

- (void)assertMutable:(SEL)mutable
{
  if (self->_immutable)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = NSStringFromSelector(mutable);
    [v5 raise:v6 format:{@"Attempt to mutate immutable instance %@ (selector %@)", self, v7}];
  }
}

@end