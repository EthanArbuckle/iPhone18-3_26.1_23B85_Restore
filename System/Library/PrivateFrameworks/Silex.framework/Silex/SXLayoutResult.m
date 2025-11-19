@interface SXLayoutResult
- (SXLayoutResult)initWithLayoutBlueprint:(id)a3 DOM:(id)a4 duration:(double)a5;
@end

@implementation SXLayoutResult

- (SXLayoutResult)initWithLayoutBlueprint:(id)a3 DOM:(id)a4 duration:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = SXLayoutResult;
  v11 = [(SXLayoutResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_blueprint, a3);
    objc_storeStrong(&v12->_DOM, a4);
    v12->_duration = a5;
  }

  return v12;
}

@end