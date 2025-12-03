@interface MCStateOperationScalarSet
+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key andScalar:(double)scalar;
- (MCStateOperationScalarSet)initWithImprint:(id)imprint;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)snapshot;
@end

@implementation MCStateOperationScalarSet

+ (id)stateOperationForTargetPlugObjectID:(id)d withStateKey:(id)key andScalar:(double)scalar
{
  result = [MCStateOperationScalarSet stateOperationForTargetPlugObjectID:d withStateKey:key];
  *(result + 4) = scalar;
  return result;
}

- (MCStateOperationScalarSet)initWithImprint:(id)imprint
{
  v7.receiver = self;
  v7.super_class = MCStateOperationScalarSet;
  v4 = [(MCStateOperation *)&v7 initWithImprint:?];
  if (v4)
  {
    [objc_msgSend(imprint objectForKey:{@"scalar", "floatValue"}];
    v4->_scalar = v5;
  }

  return v4;
}

- (id)imprint
{
  v6.receiver = self;
  v6.super_class = MCStateOperationScalarSet;
  imprint = [(MCStateOperation *)&v6 imprint];
  scalar = self->_scalar;
  if (scalar != 0.0)
  {
    *&scalar = scalar;
    [imprint setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", scalar), @"scalar"}];
  }

  return imprint;
}

- (void)_copySelfToSnapshot:(id)snapshot
{
  v5.receiver = self;
  v5.super_class = MCStateOperationScalarSet;
  [(MCStateOperation *)&v5 _copySelfToSnapshot:?];
  *(snapshot + 4) = *&self->_scalar;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCStateOperationScalarSet;
  return [-[MCStateOperation description](&v3 "description")];
}

@end