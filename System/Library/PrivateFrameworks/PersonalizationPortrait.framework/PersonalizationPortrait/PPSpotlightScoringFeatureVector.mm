@interface PPSpotlightScoringFeatureVector
+ (id)decodeFeatureVectorFromData:(id)a3 version:(id)a4;
- (BOOL)containsQidString:(id)a3;
- (PPSpotlightScoringFeatureVector)init;
- (id)encodeAsData;
- (id)qidStrings;
- (void)addQidString:(id)a3;
@end

@implementation PPSpotlightScoringFeatureVector

- (id)qidStrings
{
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = [(NSMutableSet *)self->_features allObjects];
  v5 = [v4 _pas_mappedArrayWithTransform:&__block_literal_global_4632];
  v6 = [v3 initWithArray:v5];

  return v6;
}

id __45__PPSpotlightScoringFeatureVector_qidStrings__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 unsignedIntValue];

  v6 = [v4 initWithFormat:@"Q%u", v5];

  return v6;
}

- (BOOL)containsQidString:(id)a3
{
  v4 = qidStringToNumeric(a3);
  features = self->_features;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  LOBYTE(features) = [(NSMutableSet *)features containsObject:v6];

  return features;
}

- (void)addQidString:(id)a3
{
  v4 = qidStringToNumeric(a3);
  features = self->_features;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
  [(NSMutableSet *)features addObject:v6];
}

- (id)encodeAsData
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [(NSMutableSet *)self->_features count];
  if (v4 >= 0xC8)
  {
    v5 = 200;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4 * v5];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = self->_features;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v17 = [*(*(&v18 + 1) + 8 * i) unsignedIntValue];
        [v6 appendBytes:&v17 length:4];
      }

      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  if (([v6 length] & 3) != 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [v6 length];
    v16 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:@"PPSpotlightScoringFeatureVector.m" lineNumber:38 description:{@"Invalid NSData size of %tu in %@", v15, v16}];
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (PPSpotlightScoringFeatureVector)init
{
  v6.receiver = self;
  v6.super_class = PPSpotlightScoringFeatureVector;
  v2 = [(PPSpotlightScoringFeatureVector *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    features = v2->_features;
    v2->_features = v3;
  }

  return v2;
}

+ (id)decodeFeatureVectorFromData:(id)a3 version:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (![v7 length])
  {
    v12 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      *buf = 138412290;
      v38 = v13;
      _os_log_debug_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_DEBUG, "%@: attempt to decode empty feature vector", buf, 0xCu);
      goto LABEL_13;
    }

LABEL_14:

    v21 = 0;
    goto LABEL_15;
  }

  [v8 doubleValue];
  if (v9 == 1.0)
  {
    v10 = pp_universal_search_log_handle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v33 = NSStringFromSelector(a2);
      [v8 doubleValue];
      *buf = 138412546;
      v38 = v33;
      v39 = 2048;
      v40 = v34;
      _os_log_debug_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_DEBUG, "%@: decoding feature vector of deprecated version: %f", buf, 0x16u);
    }

    v11 = [v7 length];
    if (__ROR8__(0xAAAAAAAAAAAAAAABLL * [v7 length], 1) >= 0x2AAAAAAAAAAAAAABuLL)
    {
      v12 = pp_default_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        v13 = NSStringFromSelector(a2);
        v14 = [v7 length];
        *buf = 138412546;
        v38 = v13;
        v39 = 2048;
        v40 = v14;
        _os_log_fault_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_FAULT, "%@: Invalid V1 NSData size of %tu", buf, 0x16u);
LABEL_13:

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v21 = objc_opt_new();
    if (v11 >= 6)
    {
      v24 = 0;
      v25 = 6 * (v11 / 6uLL);
      do
      {
        *buf = 0;
        [v7 getBytes:buf range:{v24, 4}];
        v26 = v21[1];
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*buf];
        [v26 addObject:v27];

        v24 += 6;
      }

      while (v25 != v24);
    }
  }

  else
  {
    [v8 doubleValue];
    v16 = v15;
    v17 = +[PPSpotlightScoringFeatureVector featureVectorVersion];
    [v17 doubleValue];
    v19 = v18;

    if (v16 != v19)
    {
      v12 = pp_universal_search_log_handle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = NSStringFromSelector(a2);
        [v8 doubleValue];
        *buf = 138412546;
        v38 = v13;
        v39 = 2048;
        v40 = v20;
        _os_log_error_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_ERROR, "%@: attempt to decode feature vector of unsupported version: %f", buf, 0x16u);
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v28 = [v7 length];
    if (([v7 length] & 3) != 0)
    {
      v35 = [MEMORY[0x1E696AAA8] currentHandler];
      v36 = NSStringFromSelector(a2);
      [v35 handleFailureInMethod:a2 object:a1 file:@"PPSpotlightScoringFeatureVector.m" lineNumber:81 description:{@"%@: Invalid NSData size of %tu", v36, objc_msgSend(v7, "length")}];
    }

    v21 = objc_opt_new();
    if (v28 >> 2)
    {
      v29 = 0;
      v30 = 4 * (v28 >> 2);
      do
      {
        *buf = 0;
        [v7 getBytes:buf range:{v29, 4}];
        v31 = v21[1];
        v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*buf];
        [v31 addObject:v32];

        v29 += 4;
      }

      while (v30 != v29);
    }
  }

LABEL_15:

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

@end