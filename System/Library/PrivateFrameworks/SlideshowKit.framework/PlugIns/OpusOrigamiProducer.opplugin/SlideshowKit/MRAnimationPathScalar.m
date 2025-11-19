@interface MRAnimationPathScalar
- (MRAnimationPathScalar)initWithMCAnimationPath:(id)a3 andValue:(double)a4;
- (void)dealloc;
@end

@implementation MRAnimationPathScalar

- (MRAnimationPathScalar)initWithMCAnimationPath:(id)a3 andValue:(double)a4
{
  v8.receiver = self;
  v8.super_class = MRAnimationPathScalar;
  v6 = [(MRAnimationPathScalar *)&v8 init];
  if (v6)
  {
    *(v6 + 1) = a3;
    *(v6 + 2) = a4;
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