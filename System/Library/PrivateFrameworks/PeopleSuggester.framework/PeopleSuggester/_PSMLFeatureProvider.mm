@interface _PSMLFeatureProvider
- (_PSMLFeatureProvider)init;
- (_PSMLFeatureProvider)initWithFeatureValues:(id)values;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setNumber:(id)number forFeature:(id)feature;
- (void)setString:(id)string forFeature:(id)feature;
- (void)setValue:(id)value forFeature:(id)feature;
@end

@implementation _PSMLFeatureProvider

- (_PSMLFeatureProvider)init
{
  v8.receiver = self;
  v8.super_class = _PSMLFeatureProvider;
  v2 = [(_PSMLFeatureProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    featureValues = v2->_featureValues;
    v2->_featureValues = v3;

    v5 = objc_opt_new();
    featureNames = v2->_featureNames;
    v2->_featureNames = v5;
  }

  return v2;
}

- (_PSMLFeatureProvider)initWithFeatureValues:(id)values
{
  valuesCopy = values;
  v13.receiver = self;
  v13.super_class = _PSMLFeatureProvider;
  v5 = [(_PSMLFeatureProvider *)&v13 init];
  if (v5)
  {
    v6 = [valuesCopy copy];
    featureValues = v5->_featureValues;
    v5->_featureValues = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    allKeys = [valuesCopy allKeys];
    v10 = [v8 initWithArray:allKeys];
    featureNames = v5->_featureNames;
    v5->_featureNames = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(NSMutableDictionary *)self->_featureValues copy];
  v6 = [v4 initWithFeatureValues:v5];

  return v6;
}

- (void)setValue:(id)value forFeature:(id)feature
{
  featureValues = self->_featureValues;
  featureCopy = feature;
  [(NSMutableDictionary *)featureValues setObject:value forKeyedSubscript:featureCopy];
  [(NSMutableSet *)self->_featureNames addObject:featureCopy];
}

- (void)setNumber:(id)number forFeature:(id)feature
{
  numberCopy = number;
  v6 = numberCopy;
  featureCopy = feature;
  objCType = [numberCopy objCType];
  if (*objCType == 105 && !objCType[1])
  {
    v13 = MEMORY[0x1E695FE60];
    intValue = [numberCopy intValue];
LABEL_14:
    v16 = [v13 featureValueWithInt64:intValue];
    goto LABEL_15;
  }

  objCType2 = [numberCopy objCType];
  if (*objCType2 != 100 || objCType2[1])
  {
    objCType3 = [numberCopy objCType];
    if (*objCType3 == 99 && !objCType3[1])
    {
      v13 = MEMORY[0x1E695FE60];
      intValue = [numberCopy BOOLValue];
    }

    else
    {
      objCType4 = [numberCopy objCType];
      if (*objCType4 != 113 || objCType4[1])
      {
        v12 = 0;
        goto LABEL_16;
      }

      v13 = MEMORY[0x1E695FE60];
      intValue = [numberCopy longValue];
    }

    goto LABEL_14;
  }

  v15 = MEMORY[0x1E695FE60];
  [numberCopy doubleValue];
  v16 = [v15 featureValueWithDouble:?];
LABEL_15:
  v12 = v16;
LABEL_16:
  [(NSMutableDictionary *)self->_featureValues setObject:v12 forKeyedSubscript:featureCopy];
  [(NSMutableSet *)self->_featureNames addObject:featureCopy];
}

- (void)setString:(id)string forFeature:(id)feature
{
  v6 = MEMORY[0x1E695FE60];
  featureCopy = feature;
  v7 = [v6 featureValueWithString:string];
  [(NSMutableDictionary *)self->_featureValues setObject:v7 forKeyedSubscript:featureCopy];

  [(NSMutableSet *)self->_featureNames addObject:featureCopy];
}

@end