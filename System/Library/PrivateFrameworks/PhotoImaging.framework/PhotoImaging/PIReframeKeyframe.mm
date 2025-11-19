@interface PIReframeKeyframe
+ (id)keyframesFromDictionaryRepresentations:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (PIReframeKeyframe)initWithDictionaryRepresentation:(id)a3;
- (__n128)initWithTime:(__n128)a3 homography:(__n128)a4;
- (id)description;
@end

@implementation PIReframeKeyframe

- (NSDictionary)dictionaryRepresentation
{
  v34[2] = *MEMORY[0x1E69E9840];
  v33[0] = @"timeValue";
  v3 = MEMORY[0x1E696AD98];
  [(PIReframeKeyframe *)self time];
  v4 = [v3 numberWithLongLong:v31];
  v33[1] = @"timeScale";
  v34[0] = v4;
  v5 = MEMORY[0x1E696AD98];
  [(PIReframeKeyframe *)self time];
  v6 = [v5 numberWithInt:v30];
  v34[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];

  v8 = vandq_s8(vandq_s8(vceqq_f32(*&self[1]._time.timescale, *(MEMORY[0x1E69E9B10] + 16)), vceqq_f32(*&self[1].super.isa, *MEMORY[0x1E69E9B10])), vceqq_f32(*&self[2].super.isa, *(MEMORY[0x1E69E9B10] + 32)));
  v8.i32[3] = v8.i32[2];
  if ((vminvq_u32(v8) & 0x80000000) == 0)
  {
    v29 = [MEMORY[0x1E696AD98] numberWithFloat:?];
    v32[0] = v29;
    LODWORD(v9) = self[1]._time.timescale;
    v28 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
    v32[1] = v28;
    LODWORD(v10) = self[2].super.isa;
    v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
    v32[2] = v11;
    LODWORD(v12) = HIDWORD(self[1].super.isa);
    v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
    v32[3] = v13;
    LODWORD(v14) = self[1]._time.flags;
    v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
    v32[4] = v15;
    LODWORD(v16) = HIDWORD(self[2].super.isa);
    v17 = [MEMORY[0x1E696AD98] numberWithFloat:v16];
    v32[5] = v17;
    LODWORD(v18) = self[1]._time.value;
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    v32[6] = v19;
    LODWORD(v20) = self[1]._time.epoch;
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    v32[7] = v21;
    LODWORD(v22) = self[2]._time.value;
    v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
    v32[8] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:9];

    v25 = [v7 mutableCopy];
    [v25 setObject:v24 forKeyedSubscript:@"homography"];
    v26 = [v25 copy];

    v7 = v26;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PIReframeKeyframe *)self time];
  v5 = NUStringFromTime();
  v6 = [v3 stringWithFormat:@"<%@:%p time:%@>", v4, self, v5];

  return v6;
}

- (PIReframeKeyframe)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"timeValue"];
  v6 = [v4 objectForKeyedSubscript:@"timeScale"];
  v7 = [v4 objectForKeyedSubscript:@"homography"];

  v8 = 0;
  if (v5 && v6)
  {
    if ([v7 count] == 9 && (memset(&v32, 0, sizeof(v32)), CMTimeMake(&v32, objc_msgSend(v5, "longLongValue"), objc_msgSend(v6, "intValue")), (v32.flags & 1) != 0))
    {
      v30 = [v7 objectAtIndexedSubscript:0];
      [v30 floatValue];
      v27 = v9;
      v29 = [v7 objectAtIndexedSubscript:1];
      [v29 floatValue];
      v26 = v10;
      v28 = [v7 objectAtIndexedSubscript:2];
      [v28 floatValue];
      v25 = v11;
      v12 = [v7 objectAtIndexedSubscript:3];
      [v12 floatValue];
      v24 = v13;
      v14 = [v7 objectAtIndexedSubscript:4];
      [v14 floatValue];
      v23 = v15;
      v16 = [v7 objectAtIndexedSubscript:5];
      [v16 floatValue];
      v22 = v17;
      v18 = [v7 objectAtIndexedSubscript:6];
      [v18 floatValue];
      v19 = [v7 objectAtIndexedSubscript:7];
      [v19 floatValue];
      v20 = [v7 objectAtIndexedSubscript:8];
      [v20 floatValue];

      v31 = v32;
      self = [(PIReframeKeyframe *)self initWithTime:&v31 homography:COERCE_DOUBLE(__PAIR64__(v24, v27)), COERCE_DOUBLE(__PAIR64__(v23, v26)), COERCE_DOUBLE(__PAIR64__(v22, v25))];
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (__n128)initWithTime:(__n128)a3 homography:(__n128)a4
{
  v13.receiver = a1;
  v13.super_class = PIReframeKeyframe;
  v7 = [(PIReframeKeyframe *)&v13 init];
  v8 = *(a6 + 16);
  *(v7 + 8) = *a6;
  *(v7 + 3) = v8;
  *(v7 + 2) = a2;
  *(v7 + 3) = a3;
  result = a4;
  *(v7 + 4) = a4;
  return result;
}

+ (id)keyframesFromDictionaryRepresentations:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [PIReframeKeyframe alloc];
        v12 = [(PIReframeKeyframe *)v11 initWithDictionaryRepresentation:v10, v15];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

@end