@interface _PSMLFeatureProvider
- (_PSMLFeatureProvider)init;
- (_PSMLFeatureProvider)initWithFeatureValues:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setNumber:(id)a3 forFeature:(id)a4;
- (void)setString:(id)a3 forFeature:(id)a4;
- (void)setValue:(id)a3 forFeature:(id)a4;
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

- (_PSMLFeatureProvider)initWithFeatureValues:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = _PSMLFeatureProvider;
  v5 = [(_PSMLFeatureProvider *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    featureValues = v5->_featureValues;
    v5->_featureValues = v6;

    v8 = objc_alloc(MEMORY[0x1E695DFA8]);
    v9 = [v4 allKeys];
    v10 = [v8 initWithArray:v9];
    featureNames = v5->_featureNames;
    v5->_featureNames = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(NSMutableDictionary *)self->_featureValues copy];
  v6 = [v4 initWithFeatureValues:v5];

  return v6;
}

- (void)setValue:(id)a3 forFeature:(id)a4
{
  featureValues = self->_featureValues;
  v7 = a4;
  [(NSMutableDictionary *)featureValues setObject:a3 forKeyedSubscript:v7];
  [(NSMutableSet *)self->_featureNames addObject:v7];
}

- (void)setNumber:(id)a3 forFeature:(id)a4
{
  v17 = a3;
  v6 = v17;
  v7 = a4;
  v8 = [v17 objCType];
  if (*v8 == 105 && !v8[1])
  {
    v13 = MEMORY[0x1E695FE60];
    v14 = [v17 intValue];
LABEL_14:
    v16 = [v13 featureValueWithInt64:v14];
    goto LABEL_15;
  }

  v9 = [v17 objCType];
  if (*v9 != 100 || v9[1])
  {
    v10 = [v17 objCType];
    if (*v10 == 99 && !v10[1])
    {
      v13 = MEMORY[0x1E695FE60];
      v14 = [v17 BOOLValue];
    }

    else
    {
      v11 = [v17 objCType];
      if (*v11 != 113 || v11[1])
      {
        v12 = 0;
        goto LABEL_16;
      }

      v13 = MEMORY[0x1E695FE60];
      v14 = [v17 longValue];
    }

    goto LABEL_14;
  }

  v15 = MEMORY[0x1E695FE60];
  [v17 doubleValue];
  v16 = [v15 featureValueWithDouble:?];
LABEL_15:
  v12 = v16;
LABEL_16:
  [(NSMutableDictionary *)self->_featureValues setObject:v12 forKeyedSubscript:v7];
  [(NSMutableSet *)self->_featureNames addObject:v7];
}

- (void)setString:(id)a3 forFeature:(id)a4
{
  v6 = MEMORY[0x1E695FE60];
  v8 = a4;
  v7 = [v6 featureValueWithString:a3];
  [(NSMutableDictionary *)self->_featureValues setObject:v7 forKeyedSubscript:v8];

  [(NSMutableSet *)self->_featureNames addObject:v8];
}

@end