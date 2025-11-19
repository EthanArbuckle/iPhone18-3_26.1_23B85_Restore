@interface _UITextInputSessionMetaAccumulator
+ (id)accumulatorWithName:(id)a3 accumulators:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)increaseWithActions:(id)a3;
- (void)reset;
@end

@implementation _UITextInputSessionMetaAccumulator

- (void)reset
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = _UITextInputSessionMetaAccumulator;
  [(_UITextInputSessionAccumulator *)&v12 reset];
  self->_lastSuccessfulIndex = -1;
  self->_actionCountWithoutIncrease = 0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_accumulators;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) reset];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (id)accumulatorWithName:(id)a3 accumulators:(id)a4
{
  v5 = a3;
  v6 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v7 = [v6 firstObject];
  v8 = [v7 depthRange];
  v10 = v9;

  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = v8;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = v8 + v10;
  v11 = [v6 firstObject];
  v12 = [v11 type];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __71___UITextInputSessionMetaAccumulator_accumulatorWithName_accumulators___block_invoke;
  v18[3] = &unk_1E7125388;
  v18[4] = &v23;
  v18[5] = &v19;
  v18[6] = &v27;
  v18[7] = v12;
  [v6 enumerateObjectsUsingBlock:v18];
  if (*(v28 + 24) == 1 && [v6 count])
  {
    v13 = objc_alloc_init(objc_opt_class());
    v14 = [v5 copy];
    [v13 setName:v14];

    [v13 setType:v12];
    [v13 setDepthRange:{v24[3], v20[3] - v24[3]}];
    v15 = [v6 copy];
    v16 = v13[15];
    v13[15] = v15;

    [v13 reset];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_class();
  v5 = [(_UITextInputSessionAccumulator *)self name];
  v6 = [v4 accumulatorWithName:v5 accumulators:self->_accumulators];

  return v6;
}

- (void)increaseWithActions:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  accumulators = self->_accumulators;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __58___UITextInputSessionMetaAccumulator_increaseWithActions___block_invoke;
  v18 = &unk_1E71253B0;
  v22 = v5;
  v7 = v4;
  v20 = self;
  v21 = &v23;
  v19 = v7;
  [(NSArray *)accumulators enumerateObjectsWithOptions:2 usingBlock:&v15];
  if (v24[3])
  {
    goto LABEL_7;
  }

  ++self->_actionCountWithoutIncrease;
  lastSuccessfulIndex = self->_lastSuccessfulIndex;
  v9 = [(NSArray *)self->_accumulators count:v15];
  if (lastSuccessfulIndex + 1 < v9 - 1)
  {
    v10 = lastSuccessfulIndex + 1;
  }

  else
  {
    v10 = v9 - 1;
  }

  v11 = [(NSArray *)self->_accumulators objectAtIndex:v10];
  v12 = [v11 depthRange];
  v14 = v12 + v13;

  if (self->_actionCountWithoutIncrease >= v14)
  {
    self->_lastSuccessfulIndex = -1;
LABEL_7:
    self->_actionCountWithoutIncrease = 0;
  }

  _Block_object_dispose(&v23, 8);
}

@end