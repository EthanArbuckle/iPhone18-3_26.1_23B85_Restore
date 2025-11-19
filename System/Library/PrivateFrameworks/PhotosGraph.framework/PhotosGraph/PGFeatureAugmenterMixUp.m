@interface PGFeatureAugmenterMixUp
+ (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4;
+ (id)instanceWithParameters:(id)a3 error:(id *)a4;
+ (id)mixupOfFloatVector:(id)a3 withFloatVector:(id)a4 lambda:(float)a5;
- (PGFeatureAugmenterMixUp)initWithCount:(unint64_t)a3 alpha:(float)a4 error:(id *)a5;
- (id)_randomIndicesWithUpperBound:(unint64_t)a3 count:(unint64_t)a4;
- (id)floatVectorsWithFloatVectors:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureAugmenterMixUp

- (id)_randomIndicesWithUpperBound:(unint64_t)a3 count:(unint64_t)a4
{
  v4 = 0;
  if (a3)
  {
    v6 = a3;
    if (a3 >= a4)
    {
      if (a3 == a4)
      {
        v4 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, a3}];
      }

      else
      {
        v7 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v4 = v7;
        if (a4)
        {
          v8 = 0;
          do
          {
            do
            {
              v9 = arc4random_uniform(v6);
            }

            while ([v4 containsIndex:v9]);
            [v4 addIndex:v9];
            ++v8;
          }

          while (v8 != a4);
        }
      }
    }
  }

  return v4;
}

- (id)floatVectorsWithFloatVectors:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 count];
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
    v11 = [v5 objectsAtIndexes:v9];
    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [v11 objectAtIndexedSubscript:1];
    v14 = v10 / 4294967300.0;
    *&v14 = v14;
    v15 = [PGFeatureAugmenterMixUp mixupOfFloatVector:v12 withFloatVector:v13 lambda:v14];
    [v7 addObject:v15];
  }

  if (a4)
  {
    [PGFeatureAugmenterMixUp _generateErrorWithErrorCode:0 andMessage:@"MixUp requires at least 2 original samples."];
    *a4 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_9:

  return v16;
}

- (PGFeatureAugmenterMixUp)initWithCount:(unint64_t)a3 alpha:(float)a4 error:(id *)a5
{
  v12.receiver = self;
  v12.super_class = PGFeatureAugmenterMixUp;
  v8 = [(PGFeatureAugmenterMixUp *)&v12 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  if (a4 != 0.0)
  {
    v8->_count = a3;
    v8->_alpha = a4;
LABEL_6:
    v10 = v8;
    goto LABEL_7;
  }

  if (a5)
  {
    [PGFeatureAugmenterMixUp _generateErrorWithErrorCode:1 andMessage:@"MixUp can not be initialized with alpha = 0."];
    *a5 = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_7:

  return v10;
}

+ (id)_generateErrorWithErrorCode:(int64_t)a3 andMessage:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [v6 errorWithDomain:@"com.apple.PhotosGraph.PGFeatureAugmenterMixUp" code:a3 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)mixupOfFloatVector:(id)a3 withFloatVector:(id)a4 lambda:(float)a5
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x277D22C68]);
  v10 = [v7 count];
  if (v10 >= 1)
  {
    v12 = 0;
    LODWORD(v11) = 1.0;
    do
    {
      [v7 floatAtIndex:{v12, v11}];
      v14 = v13;
      [v8 floatAtIndex:v12];
      *&v16 = ((1.0 - a5) * v15) + (a5 * v14);
      [v9 appendFloat:v16];
      ++v12;
    }

    while (v10 != v12);
  }

  return v9;
}

+ (id)instanceWithParameters:(id)a3 error:(id *)a4
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v7 = [PGFeatureTransformerHelper validParameters:v5 ofTypes:v6];

  if (v7)
  {
    v8 = [v5 objectAtIndexedSubscript:0];
    v9 = [v5 objectAtIndexedSubscript:1];
    v10 = objc_alloc(objc_opt_class());
    v11 = [v8 unsignedIntValue];
    [v9 floatValue];
    v12 = [v10 initWithCount:v11 alpha:a4 error:?];
  }

  else if (a4)
  {
    [PGFeatureAugmenterMixUp _generateErrorWithErrorCode:2 andMessage:@"Failed to instantiate PGFeatureAugmenterMixUp: incorrect parameters."];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end