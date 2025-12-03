@interface RBAnimationSequencer
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (RBAnimationSequencerEffects)added;
- (RBAnimationSequencerEffects)mixed;
- (RBAnimationSequencerEffects)removed;
- (__n128)setRBSequencer:(uint64_t)sequencer;
- (id).cxx_construct;
- (void)setAdded:(id)added;
- (void)setMixed:(id)mixed;
- (void)setRemoved:(id)removed;
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

- (void)setAdded:(id)added
{
  if (added)
  {
    v3 = *(added + 1);
  }

  else
  {
    v3 = 0;
  }

  self[2].super.isa = v3;
}

- (void)setMixed:(id)mixed
{
  if (mixed)
  {
    v3 = *(mixed + 1);
  }

  else
  {
    v3 = 0;
  }

  self[2]._seq = v3;
}

- (void)setRemoved:(id)removed
{
  if (removed)
  {
    v3 = *(removed + 1);
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

- (__n128)setRBSequencer:(uint64_t)sequencer
{
  if (sequencer)
  {
    result = *a2;
    v3 = *(a2 + 16);
    *(sequencer + 40) = *(a2 + 32);
    *(sequencer + 24) = v3;
    *(sequencer + 8) = result;
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