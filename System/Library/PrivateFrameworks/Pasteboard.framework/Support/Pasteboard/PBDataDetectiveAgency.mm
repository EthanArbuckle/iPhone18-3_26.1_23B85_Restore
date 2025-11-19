@interface PBDataDetectiveAgency
- (PBDataDetectiveAgency)initWithDetectives:(id)a3;
- (id)detectionsForPatterns:(id)a3 inValue:(id)a4;
@end

@implementation PBDataDetectiveAgency

- (PBDataDetectiveAgency)initWithDetectives:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PBDataDetectiveAgency;
  v5 = [(PBDataDetectiveAgency *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    detectives = v5->_detectives;
    v5->_detectives = v6;
  }

  return v5;
}

- (id)detectionsForPatterns:(id)a3 inValue:(id)a4
{
  v6 = a3;
  v25 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = +[PBItemDetection detectionAbsent];
        [v7 setObject:v14 forKeyedSubscript:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = self->_detectives;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        v21 = [v20 patterns];
        v22 = [v21 intersectsSet:v8];

        if (v22)
        {
          v23 = [v20 detectedPatternValuesInValue:v25];
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100010FB0;
          v26[3] = &unk_100031870;
          v27 = v7;
          [v23 enumerateKeysAndObjectsUsingBlock:v26];
        }
      }

      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  return v7;
}

@end