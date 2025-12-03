@interface CRFormTextBasedDetector
+ (BOOL)_isTextRegion:(id)region aboveField:(id)field withTolerance:(double)tolerance;
+ (BOOL)_isTextRegion:(id)region onLeftOfField:(id)field withTolerance:(double)tolerance;
+ (id)bestFieldCandidate:(id)candidate secondCandidate:(id)secondCandidate;
- (CRFormTextBasedDetector)initWithConfiguration:(id)configuration error:(id *)error;
- (id)detectFormFieldsInImage:(id)image document:(id)document candidateFields:(id)fields;
@end

@implementation CRFormTextBasedDetector

- (CRFormTextBasedDetector)initWithConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  v10.receiver = self;
  v10.super_class = CRFormTextBasedDetector;
  v7 = [(CRFormTextBasedDetector *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_configuration, configuration);
  }

  return v8;
}

+ (BOOL)_isTextRegion:(id)region aboveField:(id)field withTolerance:(double)tolerance
{
  fieldCopy = field;
  boundingQuad = [region boundingQuad];
  boundingQuad2 = [fieldCopy boundingQuad];
  [boundingQuad size];
  v11 = v10;
  [boundingQuad2 topRight];
  v13 = v12;
  [boundingQuad bottomRight];
  v15 = v14;
  [boundingQuad size];
  v17 = v16;
  [boundingQuad topLeft];
  v19 = v18;
  [boundingQuad2 topLeft];
  v21 = v20;
  [boundingQuad topRight];
  v23 = v22;
  [boundingQuad2 topRight];
  v25 = v13 - v15 < v11 * tolerance;
  if (fmin(vabdd_f64(v19, v21), vabdd_f64(v23, v24)) >= v17 / 5.0)
  {
    v25 = 0;
  }

  v26 = v13 - v15 > v11 * -0.5 && v25;

  return v26;
}

+ (BOOL)_isTextRegion:(id)region onLeftOfField:(id)field withTolerance:(double)tolerance
{
  fieldCopy = field;
  boundingQuad = [region boundingQuad];
  boundingQuad2 = [fieldCopy boundingQuad];
  [boundingQuad size];
  v11 = v10;
  [boundingQuad2 topLeft];
  v13 = v12;
  [boundingQuad topRight];
  v15 = v14;
  [boundingQuad topRight];
  v17 = v16;
  [boundingQuad2 topRight];
  v19 = v18;
  [boundingQuad bottomRight];
  v21 = v20;
  [boundingQuad2 bottomRight];
  v23 = fmin(vabdd_f64(v17, v19), vabdd_f64(v21, v22)) < v11 * 0.5;
  [boundingQuad2 topRight];
  v25 = v24;
  [boundingQuad topRight];
  v27 = 0;
  if (v13 - v15 > -(tolerance * v11) && v13 - v15 < v11 * tolerance)
  {
    v27 = v25 > v26 && v23;
  }

  return v27;
}

+ (id)bestFieldCandidate:(id)candidate secondCandidate:(id)secondCandidate
{
  candidateCopy = candidate;
  secondCandidateCopy = secondCandidate;
  v7 = secondCandidateCopy;
  if (secondCandidateCopy)
  {
    if (candidateCopy)
    {
      boundingQuad = [candidateCopy boundingQuad];
      [boundingQuad boundingBox];
      v10 = v9;
      boundingQuad2 = [v7 boundingQuad];
      [boundingQuad2 boundingBox];
      if (v10 <= v12)
      {
        v13 = v7;
      }

      else
      {
        v13 = candidateCopy;
      }

      v14 = v13;

      goto LABEL_10;
    }

    v15 = secondCandidateCopy;
  }

  else
  {
    v15 = candidateCopy;
  }

  v14 = v15;
LABEL_10:

  return v14;
}

- (id)detectFormFieldsInImage:(id)image document:(id)document candidateFields:(id)fields
{
  v40 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  documentCopy = document;
  fieldsCopy = fields;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  [documentCopy contentsWithTypes:8];
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
        text = [v13 text];
        _crStringEndsWithColon = [text _crStringEndsWithColon];

        if (_crStringEndsWithColon)
        {
          [array2 addObject:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v10);
  }

  for (j = 0; j < [array2 count]; ++j)
  {
    v17 = [array2 objectAtIndexedSubscript:j];
    for (k = 0; k < [fieldsCopy count]; ++k)
    {
      v19 = [fieldsCopy objectAtIndexedSubscript:k];
      if ([v19 fieldType] == 1)
      {
        boundingQuad = [v17 boundingQuad];
        boundingQuad2 = [v19 boundingQuad];
        [boundingQuad boundingBoxIOUWithQuad:boundingQuad2];
        v23 = v22;

        if (v23 <= 0.2)
        {
          boundingQuad3 = [v19 boundingQuad];
          [boundingQuad3 size];
          v26 = v25;
          boundingQuad4 = [v17 boundingQuad];
          [boundingQuad4 size];
          v29 = v26 < v28 * 3.0;

          if (!v29)
          {
            v30 = [CRFormTextBasedDetector _isTextRegion:v17 onLeftOfField:v19 withTolerance:1.0];
            if ((v30 | [CRFormTextBasedDetector _isTextRegion:v17 aboveField:v19 withTolerance:2.0]))
            {
              [v19 setFieldType:1];
              [v19 setFieldSource:3];
              [array addObject:v19];
            }
          }
        }
      }
    }
  }

  return array;
}

@end