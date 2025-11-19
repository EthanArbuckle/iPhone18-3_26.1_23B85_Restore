@interface PRPosterAmbientEnvironmentImpl
- (BOOL)isDisplayStyleRedMode;
- (PRPosterAmbientEnvironmentImpl)initWithTraitCollection:(id)a3;
@end

@implementation PRPosterAmbientEnvironmentImpl

- (PRPosterAmbientEnvironmentImpl)initWithTraitCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PRPosterAmbientEnvironmentImpl;
  v6 = [(PRPosterAmbientEnvironmentImpl *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_traitCollection, a3);
  }

  return v7;
}

- (BOOL)isDisplayStyleRedMode
{
  v2 = [(UITraitCollection *)self->_traitCollection ambientDisplayStyle];

  return MEMORY[0x1EEDEB650](v2);
}

@end