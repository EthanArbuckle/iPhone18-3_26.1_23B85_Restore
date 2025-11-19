@interface _REFeatureSet
- (_REFeatureSet)initWithFeature:(id)a3;
- (_REFeatureSet)initWithFeatures:(id)a3;
- (id)featureWithName:(id)a3;
@end

@implementation _REFeatureSet

- (_REFeatureSet)initWithFeatures:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    if (initWithFeatures__onceToken != -1)
    {
      [_REFeatureSet initWithFeatures:];
    }

    v8 = initWithFeatures__EmptyFeatureSet;
    goto LABEL_9;
  }

  if ([v4 count] == 1)
  {
    v5 = [_RESingleFeatureSet alloc];
    v6 = [v4 firstObject];
    v7 = [(_RESingleFeatureSet *)v5 initWithFeature:v6];

    goto LABEL_25;
  }

  if ([v4 count] <= 3)
  {
    v8 = [[_RESmallFeatureSet alloc] initWithFeatures:v4];
LABEL_9:
    v7 = v8;
    goto LABEL_25;
  }

  v30 = self;
  v9 = [MEMORY[0x277CBEB58] set];
  v10 = [MEMORY[0x277CBEB58] set];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v31 = v4;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    v15 = *MEMORY[0x277CBE660];
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        if (([v10 containsObject:v17] & 1) == 0)
        {
          v18 = [v17 name];
          if ([v9 containsObject:v18])
          {
            RERaiseInternalException(v15, @"Features as duplicate feature with name %@", v19, v20, v21, v22, v23, v24, v18);
          }

          else
          {
            [v9 addObject:v18];
            [v10 addObject:v17];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v32.receiver = v30;
  v32.super_class = _REFeatureSet;
  v25 = [(REFeatureSet *)&v32 init];
  if (v25)
  {
    v26 = [v10 copy];
    features = v25->_features;
    v25->_features = v26;
  }

  self = v25;

  v7 = self;
  v4 = v31;
LABEL_25:

  v28 = *MEMORY[0x277D85DE8];
  return v7;
}

- (_REFeatureSet)initWithFeature:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v10 count:1];

  v7 = [(_REFeatureSet *)self initWithFeatures:v6, v10, v11];
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)featureWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_features;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end