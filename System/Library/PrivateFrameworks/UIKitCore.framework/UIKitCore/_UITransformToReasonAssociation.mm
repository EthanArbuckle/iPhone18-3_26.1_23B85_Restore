@interface _UITransformToReasonAssociation
+ (id)association:(id)association reason:(id)reason;
- (BOOL)isEqual:(id)equal;
- (_UITransformToReasonAssociation)initWithTransform:(id)transform reason:(id)reason;
@end

@implementation _UITransformToReasonAssociation

+ (id)association:(id)association reason:(id)reason
{
  reasonCopy = reason;
  associationCopy = association;
  v7 = [[_UITransformToReasonAssociation alloc] initWithTransform:associationCopy reason:reasonCopy];

  return v7;
}

- (_UITransformToReasonAssociation)initWithTransform:(id)transform reason:(id)reason
{
  transformCopy = transform;
  reasonCopy = reason;
  v12.receiver = self;
  v12.super_class = _UITransformToReasonAssociation;
  v9 = [(_UITransformToReasonAssociation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transform, transform);
    objc_storeStrong(&v10->_reason, reason);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_6;
  }

  if (self == equalCopy)
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