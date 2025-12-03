@interface _PRUISFakeTraitEnvironment
- (_PRUISFakeTraitEnvironment)initWithTraitCollection:(id)collection;
@end

@implementation _PRUISFakeTraitEnvironment

- (_PRUISFakeTraitEnvironment)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = _PRUISFakeTraitEnvironment;
  v6 = [(_PRUISFakeTraitEnvironment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, collection);
  }

  return v7;
}

@end