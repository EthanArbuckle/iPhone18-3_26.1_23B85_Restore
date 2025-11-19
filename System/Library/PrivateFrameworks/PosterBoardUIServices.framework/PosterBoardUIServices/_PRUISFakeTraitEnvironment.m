@interface _PRUISFakeTraitEnvironment
- (_PRUISFakeTraitEnvironment)initWithTraitCollection:(id)a3;
@end

@implementation _PRUISFakeTraitEnvironment

- (_PRUISFakeTraitEnvironment)initWithTraitCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _PRUISFakeTraitEnvironment;
  v6 = [(_PRUISFakeTraitEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, a3);
  }

  return v7;
}

@end