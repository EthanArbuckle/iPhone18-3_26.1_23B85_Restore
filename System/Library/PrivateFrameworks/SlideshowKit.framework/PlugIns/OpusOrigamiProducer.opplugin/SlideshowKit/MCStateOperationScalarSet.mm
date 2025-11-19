@interface MCStateOperationScalarSet
+ (id)stateOperationForTargetPlugObjectID:(id)a3 withStateKey:(id)a4 andScalar:(double)a5;
- (MCStateOperationScalarSet)initWithImprint:(id)a3;
- (id)description;
- (id)imprint;
- (void)_copySelfToSnapshot:(id)a3;
@end

@implementation MCStateOperationScalarSet

+ (id)stateOperationForTargetPlugObjectID:(id)a3 withStateKey:(id)a4 andScalar:(double)a5
{
  result = [MCStateOperationScalarSet stateOperationForTargetPlugObjectID:a3 withStateKey:a4];
  *(result + 4) = a5;
  return result;
}

- (MCStateOperationScalarSet)initWithImprint:(id)a3
{
  v7.receiver = self;
  v7.super_class = MCStateOperationScalarSet;
  v4 = [(MCStateOperation *)&v7 initWithImprint:?];
  if (v4)
  {
    [objc_msgSend(a3 objectForKey:{@"scalar", "floatValue"}];
    v4->_scalar = v5;
  }

  return v4;
}

- (id)imprint
{
  v6.receiver = self;
  v6.super_class = MCStateOperationScalarSet;
  v3 = [(MCStateOperation *)&v6 imprint];
  scalar = self->_scalar;
  if (scalar != 0.0)
  {
    *&scalar = scalar;
    [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", scalar), @"scalar"}];
  }

  return v3;
}

- (void)_copySelfToSnapshot:(id)a3
{
  v5.receiver = self;
  v5.super_class = MCStateOperationScalarSet;
  [(MCStateOperation *)&v5 _copySelfToSnapshot:?];
  *(a3 + 4) = *&self->_scalar;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MCStateOperationScalarSet;
  return [-[MCStateOperation description](&v3 "description")];
}

@end