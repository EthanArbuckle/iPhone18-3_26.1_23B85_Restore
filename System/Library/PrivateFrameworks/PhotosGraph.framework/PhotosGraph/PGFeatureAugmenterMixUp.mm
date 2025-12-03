@interface PGFeatureAugmenterMixUp
+ (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message;
+ (id)instanceWithParameters:(id)parameters error:(id *)error;
+ (id)mixupOfFloatVector:(id)vector withFloatVector:(id)floatVector lambda:(float)lambda;
- (PGFeatureAugmenterMixUp)initWithCount:(unint64_t)count alpha:(float)alpha error:(id *)error;
- (id)_randomIndicesWithUpperBound:(unint64_t)bound count:(unint64_t)count;
- (id)floatVectorsWithFloatVectors:(id)vectors error:(id *)error;
@end

@implementation PGFeatureAugmenterMixUp

- (id)_randomIndicesWithUpperBound:(unint64_t)bound count:(unint64_t)count
{
  v4 = 0;
  if (bound)
  {
    boundCopy = bound;
    if (bound >= count)
    {
      if (bound == count)
      {
        v4 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, bound}];
      }

      else
      {
        v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v4 = v7;
        if (count)
        {
          v8 = 0;
          do
          {
            do
            {
              v9 = arc4random_uniform(boundCopy);
            }

            while ([v4 containsIndex:v9]);
            [v4 addIndex:v9];
            ++v8;
          }

          while (v8 != count);
        }
      }
    }
  }

  return v4;
}

- (id)floatVectorsWithFloatVectors:(id)vectors error:(id *)error
{
  vectorsCopy = vectors;
  v6 = [vectorsCopy count];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  for (i = 0; ; ++i)
  {
    if (i >= [(PGFeatureAugmenterMixUp *)self count])
    {
      v16 = v7;
      goto LABEL_9;
    }

    v9 = [(PGFeatureAugmenterMixUp *)self _randomIndicesWithUpperBound:v6 count:2];
    if (!v9)
    {
      break;
    }

    [(PGFeatureAugmenterMixUp *)self alpha];
    [(PGFeatureAugmenterMixUp *)self alpha];
    v10 = arc4random();
    v11 = [vectorsCopy objectsAtIndexes:v9];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v11 objectAtIndexedSubscript:1];
    v14 = v10 / 4294967300.0;
    *&v14 = v14;
    v15 = [PGFeatureAugmenterMixUp mixupOfFloatVector:v12 withFloatVector:v13 lambda:v14];
    [v7 addObject:v15];
  }

  if (error)
  {
    [PGFeatureAugmenterMixUp _generateErrorWithErrorCode:0 andMessage:@"MixUp requires at least 2 original samples."];
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_9:

  return v16;
}

- (PGFeatureAugmenterMixUp)initWithCount:(unint64_t)count alpha:(float)alpha error:(id *)error
{
  v12.receiver = self;
  v12.super_class = PGFeatureAugmenterMixUp;
  v8 = [(PGFeatureAugmenterMixUp *)&v12 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  if (alpha != 0.0)
  {
    v8->_count = count;
    v8->_alpha = alpha;
LABEL_6:
    v10 = v8;
    goto LABEL_7;
  }

  if (error)
  {
    [PGFeatureAugmenterMixUp _generateErrorWithErrorCode:1 andMessage:@"MixUp can not be initialized with alpha = 0."];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

+ (id)_generateErrorWithErrorCode:(int64_t)code andMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = messageCopy;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureAugmenterMixUp" code:code userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)mixupOfFloatVector:(id)vector withFloatVector:(id)floatVector lambda:(float)lambda
{
  vectorCopy = vector;
  floatVectorCopy = floatVector;
  v9 = objc_alloc_init(MEMORY[0x277D22C68]);
  v10 = [vectorCopy count];
  if (v10 >= 1)
  {
    v12 = 0;
    LODWORD(v11) = 1.0;
    do
    {
      [vectorCopy floatAtIndex:{v12, v11}];
      v14 = v13;
      [floatVectorCopy floatAtIndex:v12];
      *&v16 = ((1.0 - lambda) * v15) + (lambda * v14);
      [v9 appendFloat:v16];
      ++v12;
    }

    while (v10 != v12);
  }

  return v9;
}

+ (id)instanceWithParameters:(id)parameters error:(id *)error
{
  v15[2] = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v7 = [PGFeatureTransformerHelper validParameters:parametersCopy ofTypes:v6];

  if (v7)
  {
    v8 = [parametersCopy objectAtIndexedSubscript:0];
    v9 = [parametersCopy objectAtIndexedSubscript:1];
    v10 = objc_alloc(objc_opt_class());
    unsignedIntValue = [v8 unsignedIntValue];
    [v9 floatValue];
    v12 = [v10 initWithCount:unsignedIntValue alpha:error error:?];
  }

  else if (error)
  {
    [PGFeatureAugmenterMixUp _generateErrorWithErrorCode:2 andMessage:@"Failed to instantiate PGFeatureAugmenterMixUp: incorrect parameters."];
    *error = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end