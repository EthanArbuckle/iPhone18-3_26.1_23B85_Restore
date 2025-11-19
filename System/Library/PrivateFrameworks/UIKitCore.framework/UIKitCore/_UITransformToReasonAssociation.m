@interface _UITransformToReasonAssociation
+ (id)association:(id)a3 reason:(id)a4;
- (BOOL)isEqual:(id)a3;
- (_UITransformToReasonAssociation)initWithTransform:(id)a3 reason:(id)a4;
@end

@implementation _UITransformToReasonAssociation

+ (id)association:(id)a3 reason:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_UITransformToReasonAssociation alloc] initWithTransform:v6 reason:v5];

  return v7;
}

- (_UITransformToReasonAssociation)initWithTransform:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _UITransformToReasonAssociation;
  v9 = [(_UITransformToReasonAssociation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transform, a3);
    objc_storeStrong(&v10->_reason, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  if (self == v4)
  {
    v6 = 1;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && BSEqualObjects())
  {
    v6 = BSEqualObjects();
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

LABEL_8:

  return v6;
}

@end