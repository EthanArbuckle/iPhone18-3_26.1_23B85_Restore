@interface PMLModelRegressor
+ (id)modelRegressorFromFloat:(float)float;
+ (id)modelRegressorFromFloats:(id)floats;
+ (id)regressorVectorFrom:(id)from;
- (PMLModelRegressor)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (PMLModelRegressor)initWithRegressorFromFloat:(float)float;
- (id)initFromDictionary:(id)dictionary;
- (id)initModelRegressorFromFloats:(id)floats;
- (id)migrateDenseDoubleVectorToDenseFloatVector:(id)vector;
- (id)regressorFor:(int)for;
- (id)toDictionary;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLModelRegressor

- (PMLModelRegressor)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v11 = plistCopy;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[PMLModelRegressor(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 178, "[__expr isKindOfClass:[NSNumber class]]");
  }

  v12 = [chunksCopy objectAtIndex:{objc_msgSend(v11, "unsignedIntegerValue")}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = [chunksCopy objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];
  if (isKindOfClass)
  {
    selfCopy = [(PMLModelRegressor *)self migrateDenseDoubleVectorToDenseFloatVector:v14];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[PMLModelRegressor(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 186, "[__expr isKindOfClass:[PMLDataChunkDenseFloatVector class]]");
    }

    toVec = [v14 toVec];
    self = [(PMLModelRegressor *)self initModelRegressorFromFloats:toVec];

    selfCopy = self;
  }

  return selfCopy;
}

- (id)migrateDenseDoubleVectorToDenseFloatVector:(id)vector
{
  vectorCopy = vector;
  v5 = malloc_type_malloc(4 * [vectorCopy count], 0x100004052888210uLL);
  if ([vectorCopy count] >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *([vectorCopy vector] + 8 * v6);
      v5[v6++] = v7;
    }

    while (v6 < [vectorCopy count]);
  }

  v8 = +[PMLDataChunkDenseFloatVector chunkWithVector:count:](PMLDataChunkDenseFloatVector, "chunkWithVector:count:", v5, [vectorCopy count]);
  free(v5);
  selfCopy = self;
  toVec = [v8 toVec];
  v11 = [(PMLModelRegressor *)selfCopy initModelRegressorFromFloats:toVec];

  return v11;
}

- (id)toPlistWithChunks:(id)chunks
{
  selfCopy = self;
  chunksCopy = chunks;
  v7 = [PMLDataChunkDenseFloatVector chunkWithVector:[(PMLModelRegressor *)self values] count:[(PMLModelRegressor *)self count]];
  v8 = internChunk(v7, chunksCopy);

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

- (id)initFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"VALUES"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"SHAPE"];
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

- (id)regressorFor:(int)for
{
  LODWORD(v3) = [(PMLModelRegressor *)self values][4 * for];

  return [PMLModelRegressor modelRegressorFromFloat:v3];
}

- (PMLModelRegressor)initWithRegressorFromFloat:(float)float
{
  floatCopy = float;
  v4 = [[PMLDenseVector alloc] initWithFloats:&floatCopy count:1];
  v5 = [(PMLModelRegressor *)self initModelRegressorFromFloats:v4];

  return v5;
}

- (id)initModelRegressorFromFloats:(id)floats
{
  floatsCopy = floats;
  v9.receiver = self;
  v9.super_class = PMLModelRegressor;
  v6 = [(PMLModelRegressor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, floats);
  }

  return v7;
}

+ (id)regressorVectorFrom:(id)from
{
  fromCopy = from;
  v5 = -[PMLDenseVector initWithCount:]([PMLMutableDenseVector alloc], "initWithCount:", [fromCopy count]);
  if ([fromCopy count])
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [fromCopy objectAtIndexedSubscript:v6];
      [v8 floatValue];
      *([(PMLMutableDenseVector *)v5 mutablePtr]+ 4 * v6) = v9;

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while (v6 < [fromCopy count]);
  }

  v10 = [self modelRegressorFromFloats:v5];

  return v10;
}

+ (id)modelRegressorFromFloat:(float)float
{
  v4 = [PMLModelRegressor alloc];
  *&v5 = float;
  v6 = [(PMLModelRegressor *)v4 initWithRegressorFromFloat:v5];

  return v6;
}

+ (id)modelRegressorFromFloats:(id)floats
{
  floatsCopy = floats;
  v4 = [[PMLModelRegressor alloc] initModelRegressorFromFloats:floatsCopy];

  return v4;
}

@end