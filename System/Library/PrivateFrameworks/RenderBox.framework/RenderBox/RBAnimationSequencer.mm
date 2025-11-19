@interface RBAnimationSequencer
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (RBAnimationSequencerEffects)added;
- (RBAnimationSequencerEffects)mixed;
- (RBAnimationSequencerEffects)removed;
- (__n128)setRBSequencer:(uint64_t)a1;
- (id).cxx_construct;
- (void)setAdded:(id)a3;
- (void)setMixed:(id)a3;
- (void)setRemoved:(id)a3;
@end

@implementation RBAnimationSequencer

- (CGPoint)startPoint
{
  v2 = vcvtq_f64_f32(self[1].super.isa);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (CGPoint)endPoint
{
  v2 = vcvtq_f64_f32(self[1]._seq);
  v3 = v2.f64[1];
  result.x = v2.f64[0];
  result.y = v3;
  return result;
}

- (void)setAdded:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 1);
  }

  else
  {
    v3 = 0;
  }

  self[2].super.isa = v3;
}

- (void)setMixed:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 1);
  }

  else
  {
    v3 = 0;
  }

  self[2]._seq = v3;
}

- (void)setRemoved:(id)a3
{
  if (a3)
  {
    v3 = *(a3 + 1);
  }

  else
  {
    v3 = 0;
  }

  self[3].super.isa = v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0;
  return self;
}

- (__n128)setRBSequencer:(uint64_t)a1
{
  if (a1)
  {
    result = *a2;
    v3 = *(a2 + 16);
    *(a1 + 40) = *(a2 + 32);
    *(a1 + 24) = v3;
    *(a1 + 8) = result;
  }

  return result;
}

- (RBAnimationSequencerEffects)added
{
  v3 = objc_opt_new();
  if (v3)
  {
    v3[1] = self[2].super.isa;
  }

  return v3;
}

- (RBAnimationSequencerEffects)mixed
{
  v3 = objc_opt_new();
  if (v3)
  {
    v3[1] = self[2]._seq;
  }

  return v3;
}

- (RBAnimationSequencerEffects)removed
{
  v3 = objc_opt_new();
  if (v3)
  {
    v3[1] = self[3].super.isa;
  }

  return v3;
}

@end