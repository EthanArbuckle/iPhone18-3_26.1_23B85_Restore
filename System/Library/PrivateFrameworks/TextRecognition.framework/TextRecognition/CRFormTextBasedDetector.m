@interface CRFormTextBasedDetector
+ (BOOL)_isTextRegion:(id)a3 aboveField:(id)a4 withTolerance:(double)a5;
+ (BOOL)_isTextRegion:(id)a3 onLeftOfField:(id)a4 withTolerance:(double)a5;
+ (id)bestFieldCandidate:(id)a3 secondCandidate:(id)a4;
- (CRFormTextBasedDetector)initWithConfiguration:(id)a3 error:(id *)a4;
- (id)detectFormFieldsInImage:(id)a3 document:(id)a4 candidateFields:(id)a5;
@end

@implementation CRFormTextBasedDetector

- (CRFormTextBasedDetector)initWithConfiguration:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CRFormTextBasedDetector;
  v7 = [(CRFormTextBasedDetector *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, a3);
  }

  return v8;
}

+ (BOOL)_isTextRegion:(id)a3 aboveField:(id)a4 withTolerance:(double)a5
{
  v7 = a4;
  v8 = [a3 boundingQuad];
  v9 = [v7 boundingQuad];
  [v8 size];
  v11 = v10;
  [v9 topRight];
  v13 = v12;
  [v8 bottomRight];
  v15 = v14;
  [v8 size];
  v17 = v16;
  [v8 topLeft];
  v19 = v18;
  [v9 topLeft];
  v21 = v20;
  [v8 topRight];
  v23 = v22;
  [v9 topRight];
  v25 = v13 - v15 < v11 * a5;
  if (fmin(vabdd_f64(v19, v21), vabdd_f64(v23, v24)) >= v17 / 5.0)
  {
    v25 = 0;
  }

  v26 = v13 - v15 > v11 * -0.5 && v25;

  return v26;
}

+ (BOOL)_isTextRegion:(id)a3 onLeftOfField:(id)a4 withTolerance:(double)a5
{
  v7 = a4;
  v8 = [a3 boundingQuad];
  v9 = [v7 boundingQuad];
  [v8 size];
  v11 = v10;
  [v9 topLeft];
  v13 = v12;
  [v8 topRight];
  v15 = v14;
  [v8 topRight];
  v17 = v16;
  [v9 topRight];
  v19 = v18;
  [v8 bottomRight];
  v21 = v20;
  [v9 bottomRight];
  v23 = fmin(vabdd_f64(v17, v19), vabdd_f64(v21, v22)) < v11 * 0.5;
  [v9 topRight];
  v25 = v24;
  [v8 topRight];
  v27 = 0;
  if (v13 - v15 > -(a5 * v11) && v13 - v15 < v11 * a5)
  {
    v27 = v25 > v26 && v23;
  }

  return v27;
}

+ (id)bestFieldCandidate:(id)a3 secondCandidate:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    if (v5)
    {
      v8 = [v5 boundingQuad];
      [v8 boundingBox];
      v10 = v9;
      v11 = [v7 boundingQuad];
      [v11 boundingBox];
      if (v10 <= v12)
      {
        v13 = v7;
      }

      else
      {
        v13 = v5;
      }

      v14 = v13;

      goto LABEL_10;
    }

    v15 = v6;
  }

  else
  {
    v15 = v5;
  }

  v14 = v15;
LABEL_10:

  return v14;
}

- (id)detectFormFieldsInImage:(id)a3 document:(id)a4 candidateFields:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v33 = a4;
  v7 = a5;
  v34 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E695DF70] array];
  [v33 contentsWithTypes:8];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v9 = v36 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v10)
  {
    v11 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [v13 text];
        v15 = [v14 _crStringEndsWithColon];

        if (v15)
        {
          [v8 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  for (j = 0; j < [v8 count]; ++j)
  {
    v17 = [v8 objectAtIndexedSubscript:j];
    for (k = 0; k < [v7 count]; ++k)
    {
      v19 = [v7 objectAtIndexedSubscript:k];
      if ([v19 fieldType] == 1)
      {
        v20 = [v17 boundingQuad];
        v21 = [v19 boundingQuad];
        [v20 boundingBoxIOUWithQuad:v21];
        v23 = v22;

        if (v23 <= 0.2)
        {
          v24 = [v19 boundingQuad];
          [v24 size];
          v26 = v25;
          v27 = [v17 boundingQuad];
          [v27 size];
          v29 = v26 < v28 * 3.0;

          if (!v29)
          {
            v30 = [CRFormTextBasedDetector _isTextRegion:v17 onLeftOfField:v19 withTolerance:1.0];
            if ((v30 | [CRFormTextBasedDetector _isTextRegion:v17 aboveField:v19 withTolerance:2.0]))
            {
              [v19 setFieldType:1];
              [v19 setFieldSource:3];
              [v34 addObject:v19];
            }
          }
        }
      }
    }
  }

  return v34;
}

@end