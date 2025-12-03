@interface PRPosterAmbientEnvironmentImpl
- (BOOL)isDisplayStyleRedMode;
- (PRPosterAmbientEnvironmentImpl)initWithTraitCollection:(id)collection;
@end

@implementation PRPosterAmbientEnvironmentImpl

- (PRPosterAmbientEnvironmentImpl)initWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PRPosterAmbientEnvironmentImpl;
  v6 = [(PRPosterAmbientEnvironmentImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, collection);
  }

  return v7;
}

- (BOOL)isDisplayStyleRedMode
{
  ambientDisplayStyle = [(UITraitCollection *)self->_traitCollection ambientDisplayStyle];

  return MEMORY[0x1EEDEB650](ambientDisplayStyle);
}

@end