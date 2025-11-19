@interface PMLModelWeights
+ (id)constWeightsOfLength:(int)a3 value:(float)a4;
+ (id)modelWeightsFromFloats:(id)a3;
+ (id)modelWeightsOfLength:(int)a3 rng:(id)a4;
+ (id)weightsFromNumbers:(id)a3;
+ (id)zeroWeightsOfLength:(int)a3;
- (PMLModelWeights)initWithCount:(int)a3;
- (PMLModelWeights)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)initFromDictionary:(id)a3;
- (id)initModelWeightsFromFloats:(id)a3;
- (id)migrateDenseDoubleVectorToDenseFloatVector:(id)a3;
- (id)toDictionary;
- (id)toPlistWithChunks:(id)a3;
- (id)weightsByAppendingWeights:(id)a3;
@end

@implementation PMLModelWeights

- (PMLModelWeights)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    __assert_rtn("[PMLModelWeights(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 137, "[__expr isKindOfClass:[NSNumber class]]");
  }

  v12 = [v9 objectAtIndex:{objc_msgSend(v11, "unsignedIntegerValue")}];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = [v9 objectAtIndexedSubscript:{objc_msgSend(v11, "unsignedIntegerValue")}];
  if (isKindOfClass)
  {
    v15 = [(PMLModelWeights *)self migrateDenseDoubleVectorToDenseFloatVector:v14];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[PMLModelWeights(PMLPlistAndChunksSerialization) initWithPlist:chunks:context:]", "PMLDictionaryParameters.m", 146, "[__expr isKindOfClass:[PMLDataChunkDenseFloatVector class]]");
    }

    v16 = [v14 toVec];
    self = [(PMLModelWeights *)self initModelWeightsFromFloats:v16];

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
  v11 = [(PMLModelWeights *)v9 initModelWeightsFromFloats:v10];

  return v11;
}

- (id)toPlistWithChunks:(id)a3
{
  v5 = self;
  v6 = a3;
  v7 = [PMLDataChunkDenseFloatVector chunkWithVector:[(PMLModelWeights *)self values] count:[(PMLModelWeights *)self length]];
  v8 = internChunk(v7, v6);

  return v8;
}

- (id)toDictionary
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(PMLModelWeights *)self length]>= 1)
  {
    v4 = 0;
    do
    {
      v5 = MEMORY[0x277CCABB0];
      LODWORD(v6) = [(PMLModelWeights *)self values][4 * v4];
      v7 = [v5 numberWithFloat:v6];
      [v3 addObject:v7];

      ++v4;
    }

    while (v4 < [(PMLModelWeights *)self length]);
  }

  v15[0] = @"VALUES";
  v8 = arrayFromFloats([(PMLModelWeights *)self values], [(PMLModelWeights *)self length]);
  v15[1] = @"SHAPE";
  v16[0] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{-[PMLModelWeights length](self, "length")}];
  v14[0] = v9;
  v14[1] = &unk_287357EF0;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)initFromDictionary:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"VALUES"];
  v6 = [v4 objectForKeyedSubscript:@"SHAPE"];
  v7 = [v5 count];
  v8 = [v6 objectAtIndexedSubscript:0];
  if (v7 != [v8 unsignedIntegerValue])
  {
    __assert_rtn("[PMLModelWeights(PMLMobileAssetParameterGetStrategy) initFromDictionary:]", "PMLDictionaryParameters.m", 51, "weightArray.count == [shapeArray[0] unsignedIntegerValue]");
  }

  v9 = v5;
  v10 = -[PMLDenseVector initWithCount:]([PMLMutableDenseVector alloc], "initWithCount:", [v9 count]);
  v11 = [(PMLMutableDenseVector *)v10 mutablePtr];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v21 + 1) + 8 * v16) floatValue];
        *v11++ = v17;
        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [(PMLModelWeights *)self initModelWeightsFromFloats:v10];
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)weightsByAppendingWeights:(id)a3
{
  v3 = [(PMLDenseVector *)self->_data vecByAppendingVec:*(a3 + 1)];
  v4 = [PMLModelWeights modelWeightsFromFloats:v3];

  return v4;
}

- (PMLModelWeights)initWithCount:(int)a3
{
  v4 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:a3];
  v5 = [(PMLModelWeights *)self initModelWeightsFromFloats:v4];

  return v5;
}

- (id)initModelWeightsFromFloats:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLModelWeights;
  v6 = [(PMLModelWeights *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

+ (id)weightsFromNumbers:(id)a3
{
  v3 = a3;
  v4 = malloc_type_calloc([v3 count], 4uLL, 0x100004052888210uLL);
  if (!v4)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v12);
  }

  v5 = v4;
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndexedSubscript:v6];
      [v7 floatValue];
      v5[v6] = v8;

      ++v6;
    }

    while (v6 < [v3 count]);
  }

  v9 = -[PMLDenseVector initWithFloatsNoCopy:count:freeWhenDone:]([PMLMutableDenseVector alloc], "initWithFloatsNoCopy:count:freeWhenDone:", v5, [v3 count], 1);
  v10 = [PMLModelWeights modelWeightsFromFloats:v9];

  return v10;
}

+ (id)constWeightsOfLength:(int)a3 value:(float)a4
{
  v6 = [a1 alloc];
  v7 = [PMLMutableDenseVector alloc];
  v8 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
  if (!v8)
  {
    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v19);
  }

  if (a3 >= 1)
  {
    v9 = (a3 + 3) & 0xFFFFFFFC;
    v10 = vdupq_n_s64(a3 - 1);
    v11 = xmmword_260DB2880;
    v12 = xmmword_260DB2860;
    v13 = (v8 + 8);
    v14 = vdupq_n_s64(4uLL);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v10, v12));
      if (vuzp1_s16(v15, *v10.i8).u8[0])
      {
        *(v13 - 2) = a4;
      }

      if (vuzp1_s16(v15, *&v10).i8[2])
      {
        *(v13 - 1) = a4;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, *&v11))).i32[1])
      {
        *v13 = a4;
        v13[1] = a4;
      }

      v11 = vaddq_s64(v11, v14);
      v12 = vaddq_s64(v12, v14);
      v13 += 4;
      v9 -= 4;
    }

    while (v9);
  }

  v16 = [(PMLDenseVector *)v7 initWithFloatsNoCopy:v8 count:a3 freeWhenDone:1];
  v17 = [v6 initModelWeightsFromFloats:v16];

  return v17;
}

+ (id)zeroWeightsOfLength:(int)a3
{
  v4 = [a1 alloc];
  v5 = [(PMLDenseVector *)[PMLMutableDenseVector alloc] initWithCount:a3];
  v6 = [v4 initModelWeightsFromFloats:v5];

  return v6;
}

+ (id)modelWeightsOfLength:(int)a3 rng:(id)a4
{
  v6 = a4;
  v7 = [a1 alloc];
  v8 = [PMLMutableDenseVector alloc];
  v9 = v6;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;
  v13 = malloc_type_malloc(4 * a3, 0x100004052888210uLL);
  if (!v13)
  {
    v27 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v27);
  }

  v14 = v13;
  v15 = a3;
  if (a3 >= 1)
  {
    v16 = 0;
    v17 = a3;
    do
    {
      v18 = v12;
      do
      {
        do
        {
          v19 = vcvts_n_f32_u64([v18 next], 0x40uLL) * 2.0 + -1.0;
          v20 = vcvts_n_f32_u64([v18 next], 0x40uLL) * 2.0 + -1.0;
          v21 = (v20 * v20) + (v19 * v19);
        }

        while (v21 >= 1.0);
      }

      while (v21 < 7.81e-306);
      v22 = logf(v21) * -2.0 / v21;
      v23 = sqrtf(v22) * v19;

      v14[v16++] = v23;
    }

    while (v16 != v17);
  }

  v24 = [(PMLDenseVector *)v8 initWithFloatsNoCopy:v14 count:v15 freeWhenDone:1];
  v25 = [v7 initModelWeightsFromFloats:v24];

  return v25;
}

+ (id)modelWeightsFromFloats:(id)a3
{
  v3 = a3;
  v4 = [[PMLModelWeights alloc] initModelWeightsFromFloats:v3];

  return v4;
}

@end