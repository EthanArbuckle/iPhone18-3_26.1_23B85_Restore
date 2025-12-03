@interface SBUISystemApertureSecureFlipBookClientDescription
- (CGRect)_captureBoundsFromDescription:(id)description;
- (CGRect)captureBounds;
- (SBUISystemApertureSecureFlipBookClientDescription)initWithBSXPCCoder:(id)coder;
- (SBUISystemApertureSecureFlipBookClientDescription)initWithClientDescription:(id)description;
- (SBUISystemApertureSecureFlipBookClientDescription)initWithFlipBookName:(id)name states:(id)states stateToAllowedNextStates:(id)nextStates initialState:(id)state stateToSecureSequence:(id)sequence stateToDelayedSequence:(id)delayedSequence captureBounds:(CGRect)bounds stateToMaximumExitLatency:(id)self0 stateToSupportedConcurrentComposedSequences:(id)self1;
- (id)_stateToAllowedNextStatesFromDescription:(id)description;
- (id)_stateToDelayedSequenceFromDescription:(id)description;
- (id)_stateToMaximumExitLatencyFromDescription:(id)description;
- (id)_stateToSecureSequenceFromDescription:(id)description;
- (id)_supportedConcurrentComposedSequencesFromDescription:(id)description;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SBUISystemApertureSecureFlipBookClientDescription

- (SBUISystemApertureSecureFlipBookClientDescription)initWithClientDescription:(id)description
{
  descriptionCopy = description;
  flipBookName = [descriptionCopy flipBookName];
  v6 = [flipBookName copy];

  states = [descriptionCopy states];
  v8 = [states copy];

  v9 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToAllowedNextStatesFromDescription:descriptionCopy];
  initialState = [descriptionCopy initialState];
  v11 = [initialState copy];

  v12 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToSecureSequenceFromDescription:descriptionCopy];
  v13 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToDelayedSequenceFromDescription:descriptionCopy];
  v14 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _stateToMaximumExitLatencyFromDescription:descriptionCopy];
  [(SBUISystemApertureSecureFlipBookClientDescription *)self _captureBoundsFromDescription:descriptionCopy];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [(SBUISystemApertureSecureFlipBookClientDescription *)self _supportedConcurrentComposedSequencesFromDescription:descriptionCopy];

  v24 = [(SBUISystemApertureSecureFlipBookClientDescription *)self initWithFlipBookName:v6 states:v8 stateToAllowedNextStates:v9 initialState:v11 stateToSecureSequence:v12 stateToDelayedSequence:v13 captureBounds:v16 stateToMaximumExitLatency:v18 stateToSupportedConcurrentComposedSequences:v20, v22, v14, v23];
  return v24;
}

- (SBUISystemApertureSecureFlipBookClientDescription)initWithFlipBookName:(id)name states:(id)states stateToAllowedNextStates:(id)nextStates initialState:(id)state stateToSecureSequence:(id)sequence stateToDelayedSequence:(id)delayedSequence captureBounds:(CGRect)bounds stateToMaximumExitLatency:(id)self0 stateToSupportedConcurrentComposedSequences:(id)self1
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  nameCopy = name;
  statesCopy = states;
  nextStatesCopy = nextStates;
  stateCopy = state;
  sequenceCopy = sequence;
  delayedSequenceCopy = delayedSequence;
  latencyCopy = latency;
  sequencesCopy = sequences;
  v35.receiver = self;
  v35.super_class = SBUISystemApertureSecureFlipBookClientDescription;
  v24 = [(SBUISystemApertureSecureFlipBookClientDescription *)&v35 init];
  if (v24)
  {
    v25 = [nameCopy copy];
    flipBookName = v24->_flipBookName;
    v24->_flipBookName = v25;

    objc_storeStrong(&v24->_states, states);
    objc_storeStrong(&v24->_stateToAllowedNextStates, nextStates);
    v27 = [stateCopy copy];
    initialState = v24->_initialState;
    v24->_initialState = v27;

    objc_storeStrong(&v24->_stateToSecureSequence, sequence);
    objc_storeStrong(&v24->_stateToDelayedSequence, delayedSequence);
    objc_storeStrong(&v24->_stateToMaximumExitLatency, latency);
    v24->_captureBounds.origin.x = x;
    v24->_captureBounds.origin.y = y;
    v24->_captureBounds.size.width = width;
    v24->_captureBounds.size.height = height;
    objc_storeStrong(&v24->_stateToSupportedConcurrentComposedSequences, sequences);
  }

  return v24;
}

- (id)_stateToAllowedNextStatesFromDescription:(id)description
{
  v19 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  states = [descriptionCopy states];
  v6 = [states countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(states);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [descriptionCopy allowedNextStatesForState:v10];
        if (v11)
        {
          [dictionary setObject:v11 forKeyedSubscript:v10];
        }
      }

      v7 = [states countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];

  return v12;
}

- (id)_stateToSecureSequenceFromDescription:(id)description
{
  v31 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  states = [descriptionCopy states];
  v5 = [states copy];

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
        array = [MEMORY[0x1E695DF70] array];
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
              if ([descriptionCopy isSequenceSecure:v8 toState:v15])
              {
                [array addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        [dictionary setObject:array forKeyedSubscript:v8];
      }

      v20 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v16 = [dictionary copy];

  return v16;
}

- (id)_stateToDelayedSequenceFromDescription:(id)description
{
  v31 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  states = [descriptionCopy states];
  v5 = [states copy];

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
        array = [MEMORY[0x1E695DF70] array];
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
              if ([descriptionCopy isSequenceDelayed:v8 toState:v15])
              {
                [array addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        [dictionary setObject:array forKeyedSubscript:v8];
      }

      v20 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v20);
  }

  v16 = [dictionary copy];

  return v16;
}

- (id)_stateToMaximumExitLatencyFromDescription:(id)description
{
  v19 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  states = [descriptionCopy states];
  v6 = [states countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(states);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [descriptionCopy maximumLatencyToExitLoopingState:v10];
        v11 = [MEMORY[0x1E696AD98] numberWithDouble:?];
        [dictionary setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [states countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];

  return v12;
}

- (CGRect)_captureBoundsFromDescription:(id)description
{
  descriptionCopy = description;
  referenceView = [descriptionCopy referenceView];
  [descriptionCopy captureBounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  window = [referenceView window];
  windowScene = [window windowScene];
  coordinateSpace = [windowScene coordinateSpace];
  [coordinateSpace convertRect:referenceView fromCoordinateSpace:{v6, v8, v10, v12}];
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

- (id)_supportedConcurrentComposedSequencesFromDescription:(id)description
{
  v92[2] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v92[0] = @"hidden";
  v92[1] = @"presented";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v58 = descriptionCopy;
  states = [descriptionCopy states];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
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
              [array addObject:v16];
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
  v50 = states;
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
              [array2 addObject:v27];
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
  v47 = array;
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
        v57 = array2;
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

                [array3 addObject:v44];
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

  v45 = [array3 copy];

  return v45;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  flipBookName = self->_flipBookName;
  coderCopy = coder;
  [coderCopy encodeObject:flipBookName forKey:@"flipBookName"];
  [coderCopy encodeCollection:self->_states forKey:@"states"];
  [coderCopy encodeDictionary:self->_stateToAllowedNextStates forKey:@"stateToAllowedNextStates"];
  v5 = [(NSString *)self->_initialState copy];
  [coderCopy encodeObject:v5 forKey:@"initialState"];

  [coderCopy encodeDictionary:self->_stateToSecureSequence forKey:@"stateToSecureSequence"];
  [coderCopy encodeDictionary:self->_stateToDelayedSequence forKey:@"stateToDelayedSequence"];
  [coderCopy encodeDictionary:self->_stateToMaximumExitLatency forKey:@"stateToMaximumExitLatency"];
  [coderCopy encodeCGRect:@"captureBounds" forKey:{self->_captureBounds.origin.x, self->_captureBounds.origin.y, self->_captureBounds.size.width, self->_captureBounds.size.height}];
  [coderCopy encodeCollection:self->_stateToSupportedConcurrentComposedSequences forKey:@"stateToSupportedConcurrentComposedSequences"];
}

- (SBUISystemApertureSecureFlipBookClientDescription)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeStringForKey:@"flipBookName"];
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"states"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateToAllowedNextStates"];
  v8 = [coderCopy decodeStringForKey:@"initialState"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateToSecureSequence"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stateToDelayedSequence"];
  v11 = [coderCopy decodeDictionaryOfClass:objc_opt_class() forKey:@"stateToMaximumExitLatency"];
  [coderCopy decodeCGRectForKey:@"captureBounds"];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = objc_opt_class();
  v21 = [coderCopy decodeCollectionOfClass:v20 containingClass:objc_opt_class() forKey:@"stateToSupportedConcurrentComposedSequences"];

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