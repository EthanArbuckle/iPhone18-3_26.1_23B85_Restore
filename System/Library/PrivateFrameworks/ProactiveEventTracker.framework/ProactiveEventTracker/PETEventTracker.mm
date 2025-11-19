@interface PETEventTracker
- (BOOL)_validatePropertyValues:(id)a3;
- (PETEventTracker)initWithFeatureId:(id)a3 registerProperties:(id)a4 propertySubsets:(id)a5;
- (id)_stringifiedPropertiesForEvent:(id)a3 propertyValueArray:(id)a4;
- (id)getKeyValueDict;
- (id)getValueForKey:(id)a3;
- (void)_checkCardinalityForEvent:(id)a3;
- (void)_checkInTestingMode;
- (void)_checkKeyLengthForEvent:(id)a3 metaData:(id)a4;
- (void)_checkPropertySubsets:(id)a3;
- (void)_logValue:(id)a3 forEvent:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6;
- (void)_setValue:(id)a3 forEvent:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6;
- (void)_trackEvent:(id)a3 withPropertyValues:(id)a4 value:(id)a5 overwrite:(BOOL)a6;
- (void)disableTestingMode;
- (void)enableTestingMode;
@end

@implementation PETEventTracker

- (void)disableTestingMode
{
  self->_testingMode = 0;
  v3 = [(PETEventTracker *)self _defaultLoggingOutlet];
  loggingOutlet = self->_loggingOutlet;
  self->_loggingOutlet = v3;

  MEMORY[0x1EEE66BB8]();
}

- (id)getValueForKey:(id)a3
{
  v4 = a3;
  [(PETEventTracker *)self _checkInTestingMode];
  v5 = [(PETLoggingOutlet *)self->_loggingOutlet getValueForKey:v4];

  return v5;
}

- (id)getKeyValueDict
{
  [(PETEventTracker *)self _checkInTestingMode];
  loggingOutlet = self->_loggingOutlet;

  return [(PETLoggingOutlet *)loggingOutlet keyValues];
}

- (void)_checkInTestingMode
{
  if (!self->_testingMode)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:@"PETEventTrackingException" reason:@"Testing mode is not enabled. Call enableTestingMode() first" userInfo:0];
    [v3 raise];
  }
}

- (void)enableTestingMode
{
  self->_testingMode = 1;
  v3 = objc_alloc_init(PETTestLoggingOutlet);
  loggingOutlet = self->_loggingOutlet;
  self->_loggingOutlet = v3;

  MEMORY[0x1EEE66BB8]();
}

- (id)_stringifiedPropertiesForEvent:(id)a3 propertyValueArray:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_registeredProperties, "count")}];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_registeredProperties, "count")}];
  v8 = [(PETEventTracker *)self registeredProperties];
  if ([v5 count])
  {
    v9 = 0;
    do
    {
      v10 = [v5 objectAtIndexedSubscript:v9];
      v11 = [v8 objectAtIndexedSubscript:v9];
      v12 = [v11 name];
      [v6 addObject:v12];

      v13 = [v8 objectAtIndexedSubscript:v9];
      v14 = [v13 _loggingKeyStringRepresentationForValue:v10];
      [v7 addObject:v14];

      ++v9;
    }

    while (v9 < [v5 count]);
  }

  v15 = [[PETStringPairs alloc] initWithKeys:v6 values:v7];

  return v15;
}

- (BOOL)_validatePropertyValues:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5 != [(NSArray *)self->_registeredProperties count])
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"passed number of properties %tu is not equal to the defined number %tu", objc_msgSend(v4, "count"), -[NSArray count](self->_registeredProperties, "count")];
    v8 = [v6 exceptionWithName:@"PETEventTrackingException" reason:v7 userInfo:0];

    [v8 raise];
  }

  if ([v4 count])
  {
    v9 = 0;
    do
    {
      v10 = [(NSArray *)self->_registeredProperties objectAtIndexedSubscript:v9];
      v11 = [v4 objectAtIndexedSubscript:v9];
      v12 = [v10 isValidValue:v11];

      if ((v12 & 1) == 0)
      {
        break;
      }

      ++v9;
    }

    while ([v4 count] > v9);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_setValue:(id)a3 forEvent:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Subclasses must implement setValueforEvent", v6, 2u);
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Subclasses must implement setValueforEvent"];
}

- (void)_logValue:(id)a3 forEvent:(id)a4 stringifiedProperties:(id)a5 metaData:(id)a6
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Subclasses must implement logValueforEvent", v6, 2u);
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Subclasses must implement logValueforEvent"];
}

- (void)_trackEvent:(id)a3 withPropertyValues:(id)a4 value:(id)a5 overwrite:(BOOL)a6
{
  v30 = a6;
  v43 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v31 = a5;
  v11 = objc_autoreleasePoolPush();
  if (![v9 length])
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:@"PETEventTrackingException" reason:@"Parameter 'event' must have a valid non-zero length value" userInfo:0];
    [v12 raise];
  }

  if ([(PETEventTracker *)self _validatePropertyValues:v10])
  {
    v13 = [(PETEventTracker *)self _stringifiedPropertiesForEvent:v9 propertyValueArray:v10];
    v14 = [(PETEventTracker *)self _keyMetadataForEvent:v9];
    v27 = v11;
    v28 = v10;
    v15 = v9;
    if (v30)
    {
      [(PETEventTracker *)self _setValue:v31 forEvent:v9 stringifiedProperties:v13 metaData:v14];
    }

    else
    {
      [(PETEventTracker *)self _logValue:v31 forEvent:v9 stringifiedProperties:v13 metaData:v14];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v17 = self;
    obj = self->_propertySubsets;
    v18 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v32 + 1) + 8 * i);
          v23 = objc_autoreleasePoolPush();
          v24 = [v13 subsetForKeys:v22];
          v25 = [[PETStringPairs alloc] initWithKeys:&unk_1F5AB6D20 values:&unk_1F5AB6D38];
          if (v30)
          {
            [(PETEventTracker *)v17 _setValue:v31 forEvent:v15 stringifiedProperties:v24 metaData:v25];
          }

          else
          {
            [(PETEventTracker *)v17 _logValue:v31 forEvent:v15 stringifiedProperties:v24 metaData:v25];
          }

          objc_autoreleasePoolPop(v23);
        }

        v19 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v19);
    }

    v9 = v15;
    v11 = v27;
    v10 = v28;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      registeredProperties = self->_registeredProperties;
      *buf = 138412802;
      v38 = v9;
      v39 = 2112;
      v40 = v10;
      v41 = 2112;
      v42 = registeredProperties;
      _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Invalid property values passed in for event: %@, values: %@, registeredProperties: %@", buf, 0x20u);
    }

    [(PETLoggingOutlet *)self->_loggingOutlet logErrorForEvent:v9 featureId:self->_featureId reason:@"bad_prop"];
  }

  objc_autoreleasePoolPop(v11);

  v26 = *MEMORY[0x1E69E9840];
}

- (void)_checkPropertySubsets:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = a3;
  v28 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v28)
  {
    v27 = *v42;
    do
    {
      v3 = 0;
      do
      {
        if (*v42 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v3;
        v4 = *(*(&v41 + 1) + 8 * v3);
        context = objc_autoreleasePoolPush();
        v5 = [v4 count];
        v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
        v7 = [v6 count];

        if (v5 != v7)
        {
          v8 = MEMORY[0x1E695DF30];
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Duplicate elements found in property subset array: %@", v4];
          v10 = [v8 exceptionWithName:@"PETEventTrackingException" reason:v9 userInfo:0];

          [v10 raise];
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v31 = v4;
        v11 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v38;
          do
          {
            v14 = 0;
            do
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v31);
              }

              v15 = *(*(&v37 + 1) + 8 * v14);
              v33 = 0u;
              v34 = 0u;
              v35 = 0u;
              v36 = 0u;
              v16 = self->_registeredProperties;
              v17 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v34;
LABEL_15:
                v20 = 0;
                while (1)
                {
                  if (*v34 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = [*(*(&v33 + 1) + 8 * v20) name];
                  v22 = [v15 isEqualToString:v21];

                  if (v22)
                  {
                    break;
                  }

                  if (v18 == ++v20)
                  {
                    v18 = [(NSArray *)v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
                    if (v18)
                    {
                      goto LABEL_15;
                    }

                    goto LABEL_21;
                  }
                }
              }

              else
              {
LABEL_21:

                v23 = MEMORY[0x1E695DF30];
                v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid property name found in subset array: %@", v15];
                v16 = [v23 exceptionWithName:@"PETEventTrackingException" reason:v24 userInfo:0];

                [(NSArray *)v16 raise];
              }

              ++v14;
            }

            while (v14 != v12);
            v12 = [v31 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v12);
        }

        objc_autoreleasePoolPop(context);
        v3 = v30 + 1;
      }

      while (v30 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v28);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_checkKeyLengthForEvent:(id)a3 metaData:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v24 = v7;
    context = objc_autoreleasePoolPush();
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_registeredProperties, "count")}];
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_registeredProperties, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = self->_registeredProperties;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [v15 name];
          [v8 addObject:v16];

          v17 = [v15 longestValueString];
          [v9 addObject:v17];
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v12);
    }

    v18 = [[PETStringPairs alloc] initWithKeys:v8 values:v9];
    v7 = v24;
    v19 = [PETLoggingUtils keyStringForEvent:v6 featureId:self->_featureId stringifiedProperties:v18 metaData:v24];
    if ([v19 length] >= 0x100 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      featureId = self->_featureId;
      v21 = [v19 length];
      *buf = 138413058;
      v30 = v6;
      v31 = 2112;
      v32 = featureId;
      v33 = 2048;
      v34 = v21;
      v35 = 1024;
      v36 = 255;
      _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "aggd key length may exceed the limit - event: %@, featureId: %@, longestKeyLength: %lu, keyLengthLimit: %d. try to shorten the event/property names", buf, 0x26u);
    }

    objc_autoreleasePoolPop(context);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_checkCardinalityForEvent:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E69C5CF8] isInternalBuild])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = self->_registeredProperties;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      v9 = 1;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 *= [*(*(&v13 + 1) + 8 * i) cardinality];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v23 count:16];
      }

      while (v7);

      if (v9 >= 0x65 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        featureId = self->_featureId;
        *buf = 138412802;
        v18 = v4;
        v19 = 2112;
        v20 = featureId;
        v21 = 2048;
        v22 = v9;
        _os_log_impl(&dword_1DF726000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "high cardinality event found: %@, featureId: %@, cardinality: %lu. try to reduce the number of dimensions, or reduce the number of possbile values of properties", buf, 0x20u);
      }
    }

    else
    {
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (PETEventTracker)initWithFeatureId:(id)a3 registerProperties:(id)a4 propertySubsets:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = PETEventTracker;
  v11 = [(PETEventTracker *)&v24 init];
  if (v11)
  {
    if (![PETEventStringValidator stringIsValid:v8])
    {
      v12 = MEMORY[0x1E695DF30];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"featureId may only contain [a-zA-Z0-9_] and may not be prefixed with _: %@", v8];
      v14 = [v12 exceptionWithName:@"PETEventTrackingException" reason:v13 userInfo:0];

      [v14 raise];
    }

    v15 = [v8 copy];
    featureId = v11->_featureId;
    v11->_featureId = v15;

    v17 = [v9 copy];
    registeredProperties = v11->_registeredProperties;
    v11->_registeredProperties = v17;

    [(PETEventTracker *)v11 _checkPropertySubsets:v10];
    v19 = [v10 copy];
    propertySubsets = v11->_propertySubsets;
    v11->_propertySubsets = v19;

    v21 = [(PETEventTracker *)v11 _defaultLoggingOutlet];
    loggingOutlet = v11->_loggingOutlet;
    v11->_loggingOutlet = v21;

    v11->_testingMode = 0;
  }

  return v11;
}

@end