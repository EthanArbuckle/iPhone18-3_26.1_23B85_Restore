@interface _UIContextBinderSubstrate
- (_UIContextBinderSubstrate)initWithScene:(id)scene;
- (void)attachContext:(id)context;
- (void)detachContext:(id)context;
@end

@implementation _UIContextBinderSubstrate

- (_UIContextBinderSubstrate)initWithScene:(id)scene
{
  sceneCopy = scene;
  v9.receiver = self;
  v9.super_class = _UIContextBinderSubstrate;
  v6 = [(_UIContextBinderSubstrate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_scene, scene);
  }

  return v7;
}

- (void)attachContext:(id)context
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

- (void)detachContext:(id)context
{
  objc_opt_class();

  NSRequestConcreteImplementation();
}

@end