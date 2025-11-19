@interface _UIBarAppearanceData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)replicate;
- (id)writableInstance;
- (void)assertMutable:(SEL)a3;
@end

@implementation _UIBarAppearanceData

- (id)writableInstance
{
  if (self->_immutable)
  {
    v2 = [(_UIBarAppearanceData *)self replicate];
  }

  else
  {
    v2 = self;
  }

  return v2;
}

- (id)replicate
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if (self->_immutable)
  {

    return self;
  }

  else
  {
    [(_UIBarAppearanceData *)self replicate:a3];
    return objc_claimAutoreleasedReturnValue();
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && [(_UIBarAppearanceData *)v4 isMemberOfClass:objc_opt_class()]&& [(_UIBarAppearanceData *)self checkEqualTo:v5];
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

- (void)assertMutable:(SEL)a3
{
  if (self->_immutable)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D930];
    v7 = NSStringFromSelector(a3);
    [v5 raise:v6 format:{@"Attempt to mutate immutable instance %@ (selector %@)", self, v7}];
  }
}

@end