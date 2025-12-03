@interface SXLayoutResult
- (SXLayoutResult)initWithLayoutBlueprint:(id)blueprint DOM:(id)m duration:(double)duration;
@end

@implementation SXLayoutResult

- (SXLayoutResult)initWithLayoutBlueprint:(id)blueprint DOM:(id)m duration:(double)duration
{
  blueprintCopy = blueprint;
  mCopy = m;
  v14.receiver = self;
  v14.super_class = SXLayoutResult;
  v11 = [(SXLayoutResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_blueprint, blueprint);
    objc_storeStrong(&v12->_DOM, m);
    v12->_duration = duration;
  }

  return v12;
}

@end