@interface MRAnimationPathScalar
- (MRAnimationPathScalar)initWithMCAnimationPath:(id)path andValue:(double)value;
- (void)dealloc;
@end

@implementation MRAnimationPathScalar

- (MRAnimationPathScalar)initWithMCAnimationPath:(id)path andValue:(double)value
{
  v8.receiver = self;
  v8.super_class = MRAnimationPathScalar;
  v6 = [(MRAnimationPathScalar *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = path;
    *(v6 + 2) = value;
    *(v6 + 24) = xmmword_163840;
  }

  return v6;
}

- (void)dealloc
{
  self->animationPath = 0;
  v3.receiver = self;
  v3.super_class = MRAnimationPathScalar;
  [(MRAnimationPathScalar *)&v3 dealloc];
}

@end