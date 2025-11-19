@interface SBUISystemApertureSecureFlipBookClientDescription
- (CGRect)_captureBoundsFromDescription:(id)a3;
- (CGRect)captureBounds;
- (SBUISystemApertureSecureFlipBookClientDescription)initWithBSXPCCoder:(id)a3;
- (SBUISystemApertureSecureFlipBookClientDescription)initWithClientDescription:(id)a3;
- (SBUISystemApertureSecureFlipBookClientDescription)initWithFlipBookName:(id)a3 states:(id)a4 stateToAllowedNextStates:(id)a5 initialState:(id)a6 stateToSecureSequence:(id)a7 stateToDelayedSequence:(id)a8 captureBounds:(CGRect)a9 stateToMaximumExitLatency:(id)a10 stateToSupportedConcurrentComposedSequences:(id)a11;
- (id)_stateToAllowedNextStatesFromDescription:(id)a3;
- (id)_stateToDelayedSequenceFromDescription:(id)a3;
- (id)_stateToMaximumExitLatencyFromDescription:(id)a3;
- (id)_stateToSecureSequenceFromDescription:(id)a3;
- (id)_supportedConcurrentComposedSequencesFromDescription:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SBUISystemApertureSecureFlipBookClientDescription

- (SBUISystemApertureSecureFlipBookClientDescription)initWithClientDescription:(id)a3
{
  v4 = a3;
  v5 = [v4 flipBookName];
  v6 = [v5 copy];

  v7 = [v4 states];
  v8 = [v7 copy];

  v9 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToAllowedNextStatesFromDescription:v4];
  v10 = [v4 initialState];
  v11 = [v10 copy];

  v12 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToSecureSequenceFromDescription:v4];
  v13 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToDelayedSequenceFromDescription:v4];
  v14 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToMaximumExitLatencyFromDescription:v4];
  [(SBUISystemApertureSecureFlipBookClientDescription *)self _captureBoundsFromDescription:v4];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _supportedConcurrentComposedSequencesFromDescription:v4];

  v24 = [(SBUISystemApertureSecureFlipBookClientDescription *)self initWithFlipBookName:v6 states:v8 stateToAllowedNextStates:v9 initialState:v11 stateToSecureSequence:v12 stateToDelayedSequence:v13 captureBounds:v16 stateToMaximumExitLatency:v18 stateToSupportedConcurrentComposedSequences:v20, v22, v14, v23];
  return v24;
}

- (SBUISystemApertureSecureFlipBookClientDescription)initWithFlipBookName:(id)a3 states:(id)a4 stateToAllowedNextStates:(id)a5 initialState:(id)a6 stateToSecureSequence:(id)a7 stateToDelayedSequence:(id)a8 captureBounds:(CGRect)a9 stateToMaximumExitLatency:(id)a10 stateToSupportedConcurrentComposedSequences:(id)a11
{
  height = a9.size.height;
  width = a9.size.width;
  y = a9.origin.y;
  x = a9.origin.x;
  v21 = a3;
  v34 = a4;
  v33 = a5;
  v22 = a6;
  v32 = a7;
  v31 = a8;
  v30 = a10;
  v23 = a11;
  v35.receiver = self;
  v35.super_class = SBUISystemApertureSecureFlipBookClientDescription;
  v24 = [(SBUISystemApertureSecureFlipBookClientDescription *)&v35 init];
  if (v24)
  {
    v25 = [v21 copy];
    flipBookName = v24->_flipBookName;
    v24->_flipBookName = v25;

    objc_storeStrong(&v24->_states, a4);
    objc_storeStrong(&v24->_stateToAllowedNextStates, a5);
    v27 = [v22 copy];
    initialState = v24->_initialState;
    v24->_initialState = v27;

    objc_storeStrong(&v24->_stateToSecureSequence, a7);
    objc_storeStrong(&v24->_stateToDelayedSequence, a8);
    objc_storeStrong(&v24->_stateToMaximumExitLatency, a10);
    v24->_captureBounds.origin.x = x;
    v24->_captureBounds.origin.y = y;
    v24->_captureBounds.size.width = width;
    v24->_captureBounds.size.height = height;
    objc_storeStrong(&v24->_stateToSupportedConcurrentComposedSequences, a11);
  }

  return v24;
}

- (id)_stateToAllowedNextStatesFromDescription:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 states];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v3 allowedNextStatesForState:v10];
        if (v11)
        {
          [v4 setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (id)_stateToSecureSequenceFromDescription:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v19 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v3 states];
  v5 = [v4 copy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v20 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695DF70] array];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v6;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              if ([v3 isSequenceSecure:v8 toState:v15])
              {
                [v9 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        [v19 setObject:v9 forKeyedSubscript:v8];
      }

      v20 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v16 = [v19 copy];

  return v16;
}

- (id)_stateToDelayedSequenceFromDescription:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v19 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [v3 states];
  v5 = [v4 copy];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v20 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v20)
  {
    v18 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v6);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [MEMORY[0x1E695DF70] array];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v10 = v6;
        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v21 + 1) + 8 * j);
              if ([v3 isSequenceDelayed:v8 toState:v15])
              {
                [v9 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        [v19 setObject:v9 forKeyedSubscript:v8];
      }

      v20 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v16 = [v19 copy];

  return v16;
}

- (id)_stateToMaximumExitLatencyFromDescription:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v3 states];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v3 maximumLatencyToExitLoopingState:v10];
        v11 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (CGRect)_captureBoundsFromDescription:(id)a3
{
  v3 = a3;
  v4 = [v3 referenceView];
  [v3 captureBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v4 window];
  v14 = [v13 windowScene];
  v15 = [v14 coordinateSpace];
  [v15 convertRect:v4 fromCoordinateSpace:{v6, v8, v10, v12}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (id)_supportedConcurrentComposedSequencesFromDescription:(id)a3
{
  v92[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v92[0] = @"hidden";
  v92[1] = @"presented";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v58 = v3;
  v52 = [v3 states];
  v5 = [MEMORY[0x1E695DF70] array];
  v59 = [MEMORY[0x1E695DF70] array];
  v54 = [MEMORY[0x1E695DF70] array];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v6)
  {
    v7 = v6;
    v55 = *v81;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v81 != v55)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v80 + 1) + 8 * i);
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v10 = obj;
        v11 = [v10 countByEnumeratingWithState:&v76 objects:v90 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v77;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v77 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v76 + 1) + 8 * j);
              v89[0] = v9;
              v89[1] = v15;
              v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
              [v5 addObject:v16];
            }

            v12 = [v10 countByEnumeratingWithState:&v76 objects:v90 count:16];
          }

          while (v12);
        }
      }

      v7 = [v10 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v7);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v50 = v52;
  v17 = [v50 countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v17)
  {
    v18 = v17;
    v56 = *v73;
    do
    {
      for (k = 0; k != v18; ++k)
      {
        if (*v73 != v56)
        {
          objc_enumerationMutation(v50);
        }

        v20 = *(*(&v72 + 1) + 8 * k);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v21 = v50;
        v22 = [v21 countByEnumeratingWithState:&v68 objects:v87 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v69;
          do
          {
            for (m = 0; m != v23; ++m)
            {
              if (*v69 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v68 + 1) + 8 * m);
              v86[0] = v20;
              v86[1] = v26;
              v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:2];
              [v59 addObject:v27];
            }

            v23 = [v21 countByEnumeratingWithState:&v68 objects:v87 count:16];
          }

          while (v23);
        }
      }

      v18 = [v21 countByEnumeratingWithState:&v72 objects:v88 count:16];
    }

    while (v18);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v47 = v5;
  v49 = [v47 countByEnumeratingWithState:&v64 objects:v85 count:16];
  if (v49)
  {
    v48 = *v65;
    do
    {
      v28 = 0;
      do
      {
        if (*v65 != v48)
        {
          objc_enumerationMutation(v47);
        }

        v53 = v28;
        v29 = *(*(&v64 + 1) + 8 * v28);
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v57 = v59;
        v30 = [v57 countByEnumeratingWithState:&v60 objects:v84 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v61;
          do
          {
            for (n = 0; n != v31; ++n)
            {
              if (*v61 != v32)
              {
                objc_enumerationMutation(v57);
              }

              v34 = *(*(&v60 + 1) + 8 * n);
              v35 = [v34 objectAtIndexedSubscript:0];
              v36 = [v34 objectAtIndexedSubscript:1];
              v37 = [v29 objectAtIndexedSubscript:0];
              v38 = [v29 objectAtIndexedSubscript:1];
              v39 = [v58 isSequenceFrom:v35 to:v36 supportedConcurrentlyWithContainerSequence:v37 toContainerState:v38];

              if (v39)
              {
                v40 = [v34 objectAtIndexedSubscript:0];
                v41 = [v34 objectAtIndexedSubscript:1];
                v42 = [v29 objectAtIndexedSubscript:0];
                v43 = [v29 objectAtIndexedSubscript:1];
                v44 = SBUISystemApertureSecureFlipBookClientComposedSequence(v40, v41, v42, v43);

                [v54 addObject:v44];
              }
            }

            v31 = [v57 countByEnumeratingWithState:&v60 objects:v84 count:16];
          }

          while (v31);
        }

        v28 = v53 + 1;
      }

      while (v53 + 1 != v49);
      v49 = [v47 countByEnumeratingWithState:&v64 objects:v85 count:16];
    }

    while (v49);
  }

  v45 = [v54 copy];

  return v45;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  flipBookName = self->_flipBookName;
  v6 = a3;
  [v6 encodeObject:flipBookName forKey:@"flipBookName"];
  [v6 encodeCollection:self->_states forKey:@"states"];
  [v6 encodeDictionary:self->_stateToAllowedNextStates forKey:@"stateToAllowedNextStates"];
  v5 = [(NSString *)self->_initialState copy];
  [v6 encodeObject:v5 forKey:@"initialState"];

  [v6 encodeDictionary:self->_stateToSecureSequence forKey:@"stateToSecureSequence"];
  [v6 encodeDictionary:self->_stateToDelayedSequence forKey:@"stateToDelayedSequence"];
  [v6 encodeDictionary:self->_stateToMaximumExitLatency forKey:@"stateToMaximumExitLatency"];
  [v6 encodeCGRect:@"captureBounds" forKey:{self->_captureBounds.origin.x, self->_captureBounds.origin.y, self->_captureBounds.size.width, self->_captureBounds.size.height}];
  [v6 encodeCollection:self->_stateToSupportedConcurrentComposedSequences forKey:@"stateToSupportedConcurrentComposedSequences"];
}

- (SBUISystemApertureSecureFlipBookClientDescription)initWithBSXPCCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeStringForKey:@"flipBookName"];
  v5 = objc_opt_class();
  v6 = [v3 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"states"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"stateToAllowedNextStates"];
  v8 = [v3 decodeStringForKey:@"initialState"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"stateToSecureSequence"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"stateToDelayedSequence"];
  v11 = [v3 decodeDictionaryOfClass:objc_opt_class() forKey:@"stateToMaximumExitLatency"];
  [v3 decodeCGRectForKey:@"captureBounds"];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = objc_opt_class();
  v21 = [v3 decodeCollectionOfClass:v20 containingClass:objc_opt_class() forKey:@"stateToSupportedConcurrentComposedSequences"];

  v22 = [(SBUISystemApertureSecureFlipBookClientDescription *)self initWithFlipBookName:v4 states:v6 stateToAllowedNextStates:v7 initialState:v8 stateToSecureSequence:v9 stateToDelayedSequence:v10 captureBounds:v13 stateToMaximumExitLatency:v15 stateToSupportedConcurrentComposedSequences:v17, v19, v11, v21];
  return v22;
}

- (CGRect)captureBounds
{
  x = self->_captureBounds.origin.x;
  y = self->_captureBounds.origin.y;
  width = self->_captureBounds.size.width;
  height = self->_captureBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end