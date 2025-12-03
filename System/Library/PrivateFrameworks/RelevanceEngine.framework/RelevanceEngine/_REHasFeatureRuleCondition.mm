@interface _REHasFeatureRuleCondition
- (BOOL)_acceptsFeatureMap:(id)map predictionSet:(id)set explanation:(id *)explanation;
- (BOOL)isEqual:(id)equal;
- (_REHasFeatureRuleCondition)initWithFeature:(id)feature contains:(BOOL)contains;
- (id)_notCondition;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _REHasFeatureRuleCondition

- (id)_notCondition
{
  v2 = [[_REHasFeatureRuleCondition alloc] initWithFeature:self->_feature contains:!self->_contains];

  return v2;
}

- (_REHasFeatureRuleCondition)initWithFeature:(id)feature contains:(BOOL)contains
{
  featureCopy = feature;
  v11.receiver = self;
  v11.super_class = _REHasFeatureRuleCondition;
  v8 = [(_REHasFeatureRuleCondition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_feature, feature);
    v9->_contains = contains;
  }

  return v9;
}

- (BOOL)_acceptsFeatureMap:(id)map predictionSet:(id)set explanation:(id *)explanation
{
  v7 = [map hasValueForFeature:{self->_feature, set}];
  v8 = v7;
  contains = self->_contains;
  if (explanation && contains == v7)
  {
    *explanation = [REMLExplanation explanationForCondition:self];
  }

  return contains == v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  feature = self->_feature;
  contains = self->_contains;

  return [v4 initWithFeature:feature contains:contains];
}

@end