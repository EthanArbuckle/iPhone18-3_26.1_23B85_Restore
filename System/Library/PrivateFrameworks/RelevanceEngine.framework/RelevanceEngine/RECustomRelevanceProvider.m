@interface RECustomRelevanceProvider
- (BOOL)isEqual:(id)a3;
- (RECustomRelevanceProvider)initWithDictionary:(id)a3;
- (RECustomRelevanceProvider)initWithFeature:(id)a3 value:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryEncoding;
- (void)dealloc;
@end

@implementation RECustomRelevanceProvider

- (RECustomRelevanceProvider)initWithFeature:(id)a3 value:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RECustomRelevanceProvider;
  v8 = [(RERelevanceProvider *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_feature, a3);
    v9->_value = a4;
    RERetainFeatureValueTaggedPointer(a4);
  }

  return v9;
}

- (void)dealloc
{
  REReleaseFeatureValueTaggedPointer(self->_value);
  v3.receiver = self;
  v3.super_class = RECustomRelevanceProvider;
  [(RECustomRelevanceProvider *)&v3 dealloc];
}

- (RECustomRelevanceProvider)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"feature_name"];
  v6 = v5;
  v7 = &stru_283B97458;
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:@"feature_type"];
  v10 = +[REFeature featureWithName:featureType:](REFeature, "featureWithName:featureType:", v8, [v9 integerValue]);

  v11 = [REFeatureValue featureValueWithDictionary:v4];

  v12 = RECreateFeatureValueTaggedPointer(v11);
  v13 = [(RECustomRelevanceProvider *)self initWithFeature:v10 value:v12];
  REReleaseFeatureValueTaggedPointer(v12);

  return v13;
}

- (id)dictionaryEncoding
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = [(REFeature *)self->_feature _dependentFeatures];
  v4 = [v3 count];

  if (v4)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"We don't currently handle encoding this feature type", v5, v6, v7, v8, v9, v10, v20);
  }

  v21[0] = @"feature_name";
  v11 = [(REFeature *)self->_feature name];
  v21[1] = @"feature_type";
  v22[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[REFeature featureType](self->_feature, "featureType")}];
  v22[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v14 = REFeatureValueForTaggedPointer(self->_value);
  v15 = [v14 dictionaryEncoding];
  v16 = [v15 mutableCopy];

  [v16 addEntriesFromDictionary:v13];
  v17 = [v16 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = RECustomRelevanceProvider;
  v4 = [(RERelevanceProvider *)&v7 copyWithZone:a3];
  objc_storeStrong(v4 + 4, self->_feature);
  value = self->_value;
  v4[5] = value;
  RERetainFeatureValueTaggedPointer(value);
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = RECustomRelevanceProvider;
    if ([(RERelevanceProvider *)&v17 isEqual:v4])
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
            goto LABEL_14;
          }
        }

        value = self->_value;
        v12 = v5->_value;
        if (value == v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = REFeatureValueTypeForTaggedPointer(value);
          if (v13 != REFeatureValueTypeForTaggedPointer(v12))
          {
LABEL_14:
            v10 = 0;
            goto LABEL_15;
          }

          v14 = REFeatureValueForTaggedPointer(value);
          v15 = REFeatureValueForTaggedPointer(v12);
          v10 = [v14 isEqual:v15];
        }

LABEL_15:

        goto LABEL_16;
      }
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = RECustomRelevanceProvider;
  v3 = [(RECustomRelevanceProvider *)&v8 description];
  feature = self->_feature;
  v5 = REDescriptionForTaggedPointer(self->_value);
  v6 = [v3 stringByAppendingFormat:@" feature=%@, value=%@", feature, v5];

  return v6;
}

@end