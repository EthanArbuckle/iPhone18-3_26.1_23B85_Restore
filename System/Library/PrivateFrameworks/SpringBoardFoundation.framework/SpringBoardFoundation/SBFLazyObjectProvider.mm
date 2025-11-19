@interface SBFLazyObjectProvider
- (SBFLazyObjectProvider)initWithGenerator:(id)a3;
- (id)object;
@end

@implementation SBFLazyObjectProvider

- (SBFLazyObjectProvider)initWithGenerator:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SBFLazyObjectProvider;
  v5 = [(SBFLazyObjectProvider *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    generator = v5->_generator;
    v5->_generator = v6;
  }

  return v5;
}

- (id)object
{
  object = self->_object;
  if (!object)
  {
    object = self->_generator;
    if (object)
    {
      v4 = object[2](object, a2);
      v5 = self->_object;
      self->_object = v4;

      object = self->_object;
    }
  }

  return object;
}

@end