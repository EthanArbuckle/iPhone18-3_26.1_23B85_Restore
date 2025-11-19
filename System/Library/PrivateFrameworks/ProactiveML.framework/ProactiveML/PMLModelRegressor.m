@interface PMLModelRegressor
+ (id)modelRegressorFromFloat:(float)a3;
+ (id)modelRegressorFromFloats:(id)a3;
+ (id)regressorVectorFrom:(id)a3;
- (PMLModelRegressor)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (PMLModelRegressor)initWithRegressorFromFloat:(float)a3;
- (id)initFromDictionary:(id)a3;
- (id)initModelRegressorFromFloats:(id)a3;
- (id)migrateDenseDoubleVectorToDenseFloatVector:(id)a3;
- (id)regressorFor:(int)a3;
- (id)toDictionary;
- (id)toPlistWithChunks:(id)a3;
@end

@implementation PMLModelRegressor

- (PMLModelRegressor)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[PMLModelRegressor(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 178, "[__expr isKindOfClass:[NSNumber class]]");
  }

  v12 = [v9 objectAtIndex:{objc_msgSend(v11, "unsignedIntegerValue")}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = [v9 objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];
  if (isKindOfClass)
  {
    v15 = [(PMLModelRegressor *)self migrateDenseDoubleVectorToDenseFloatVector:v14];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[PMLModelRegressor(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 186, "[__expr isKindOfClass:[PMLDataChunkDenseFloatVector class]]");
    }

    v16 = [v14 toVec];
    self = [(PMLModelRegressor *)self initModelRegressorFromFloats:v16];

    v15 = self;
  }

  return v15;
}

- (id)migrateDenseDoubleVectorToDenseFloatVector:(id)a3
{
  v4 = a3;
  v5 = malloc_type_malloc(4 * [v4 count], 0x100004052888210uLL);
  if ([v4 count] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *([v4 vector] + 8 * v6);
      v5[v6++] = v7;
    }

    while (v6 < [v4 count]);
  }

  v8 = +[PMLDataChunkDenseFloatVector chunkWithVector:count:](PMLDataChunkDenseFloatVector, "chunkWithVector:count:", v5, [v4 count]);
  free(v5);
  v9 = self;
  v10 = [v8 toVec];
  v11 = [(PMLModelRegressor *)v9 initModelRegressorFromFloats:v10];

  return v11;
}

- (id)toPlistWithChunks:(id)a3
{
  v5 = self;
  v6 = a3;
  v7 = [PMLDataChunkDenseFloatVector chunkWithVector:[(PMLModelRegressor *)self values] count:[(PMLModelRegressor *)self count]];
  v8 = internChunk(v7, v6);

  return v8;
}

- (id)toDictionary
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"VALUES";
  v3 = arrayFromFloats([(PMLModelRegressor *)self values], [(PMLModelRegressor *)self count]);
  v10[1] = @"SHAPE";
  v11[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[PMLModelRegressor count](self, "count")}];
  v9[0] = v4;
  v9[1] = &unk_287357EF0;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v11[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)initFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"VALUES"];
  v6 = [v4 objectForKeyedSubscript:@"SHAPE"];
  v7 = [v5 count];
  v8 = [v6 objectAtIndexedSubscript:0];
  if (v7 != [v8 unsignedIntegerValue])
  {
    __assert_rtn("[PMLModelRegressor(PMLMobileAssetParameterGetStrategy) initFromDictionary:]", "PMLDictionaryParameters.m", 73, "regressorArray.count == [shapeArray[0] unsignedIntegerValue]");
  }

  v9 = v5;
  v10 = malloc_type_malloc(4 * [v9 count], 0x100004052888210uLL);
  if ([v9 count])
  {
    v11 = 0;
    do
    {
      v12 = [v9 objectAtIndex:v11];
      [v12 floatValue];
      v10[v11] = v13;

      ++v11;
    }

    while (v11 < [v9 count]);
  }

  v14 = -[PMLDenseVector initWithFloatsNoCopy:count:freeWhenDone:]([PMLDenseVector alloc], "initWithFloatsNoCopy:count:freeWhenDone:", v10, [v9 count], 1);

  v15 = [(PMLModelRegressor *)self initModelRegressorFromFloats:v14];
  return v15;
}

- (id)regressorFor:(int)a3
{
  LODWORD(v3) = [(PMLModelRegressor *)self values][4 * a3];

  return [PMLModelRegressor modelRegressorFromFloat:v3];
}

- (PMLModelRegressor)initWithRegressorFromFloat:(float)a3
{
  v7 = a3;
  v4 = [[PMLDenseVector alloc] initWithFloats:&v7 count:1];
  v5 = [(PMLModelRegressor *)self initModelRegressorFromFloats:v4];

  return v5;
}

- (id)initModelRegressorFromFloats:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLModelRegressor;
  v6 = [(PMLModelRegressor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

+ (id)regressorVectorFrom:(id)a3
{
  v4 = a3;
  v5 = -[PMLDenseVector initWithCount:]([PMLMutableDenseVector alloc], "initWithCount:", [v4 count]);
  if ([v4 count])
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [v4 objectAtIndexedSubscript:v6];
      [v8 floatValue];
      *([(PMLMutableDenseVector *)v5 mutablePtr]+ 4 * v6) = v9;

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while (v6 < [v4 count]);
  }

  v10 = [a1 modelRegressorFromFloats:v5];

  return v10;
}

+ (id)modelRegressorFromFloat:(float)a3
{
  v4 = [PMLModelRegressor alloc];
  *&v5 = a3;
  v6 = [(PMLModelRegressor *)v4 initWithRegressorFromFloat:v5];

  return v6;
}

+ (id)modelRegressorFromFloats:(id)a3
{
  v3 = a3;
  v4 = [[PMLModelRegressor alloc] initModelRegressorFromFloats:v3];

  return v4;
}

@end