@interface _REHasFeatureRuleCondition
- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5;
- (BOOL)isEqual:(id)a3;
- (_REHasFeatureRuleCondition)initWithFeature:(id)a3 contains:(BOOL)a4;
- (id)_notCondition;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _REHasFeatureRuleCondition

- (id)_notCondition
{
  v2 = [[_REHasFeatureRuleCondition alloc] initWithFeature:self->_feature contains:!self->_contains];

  return v2;
}

- (_REHasFeatureRuleCondition)initWithFeature:(id)a3 contains:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _REHasFeatureRuleCondition;
  v8 = [(_REHasFeatureRuleCondition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_feature, a3);
    v9->_contains = a4;
  }

  return v9;
}

- (BOOL)_acceptsFeatureMap:(id)a3 predictionSet:(id)a4 explanation:(id *)a5
{
  v7 = [a3 hasValueForFeature:{self->_feature, a4}];
  v8 = v7;
  contains = self->_contains;
  if (a5 && contains == v7)
  {
    *a5 = [REMLExplanation explanationForCondition:self];
  }

  return contains == v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      feature = v5->_feature;
      v7 = self->_feature;
      v8 = v7;
      if (v7 == feature)
      {
      }

      else
      {
        v9 = [(REFeature *)v7 isEqual:feature];

        if (!v9)
        {
          v10 = 0;
LABEL_10:

          goto LABEL_11;
        }
      }

      v10 = self->_contains == v5->_contains;
      goto LABEL_10;
    }

    v10 = 0;
  }

LABEL_11:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  feature = self->_feature;
  contains = self->_contains;

  return [v4 initWithFeature:feature contains:contains];
}

@end