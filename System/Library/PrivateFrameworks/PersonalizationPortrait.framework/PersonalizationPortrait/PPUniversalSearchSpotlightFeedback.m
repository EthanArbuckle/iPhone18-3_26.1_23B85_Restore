@interface PPUniversalSearchSpotlightFeedback
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPPUniversalSearchSpotlightFeedback:(id)a3;
- (PPUniversalSearchSpotlightFeedback)initWithCoder:(id)a3;
- (PPUniversalSearchSpotlightFeedback)initWithOfferedCSSICount:(unsigned int)a3 engagedCSSICount:(unsigned int)a4 timestamp:(id)a5 clientIdentifier:(id)a6 clientBundleId:(id)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PPUniversalSearchSpotlightFeedback

- (id)description
{
  v3 = objc_opt_new();
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"%@: {", v5];

  [v3 appendFormat:@"  engagedCSSICount : %u ", self->_engagedCSSICount];
  [v3 appendFormat:@"  offeredCSSICount : %u ", self->_offeredCSSICount];
  [v3 appendFormat:@"  clientIdentifier : %@, ", self->_clientIdentifier];
  [v3 appendFormat:@"  clientBundleId : %@, ", self->_clientBundleId];
  [v3 appendFormat:@"  timestamp : %@, ", self->_timestamp];
  v6 = [v3 copy];

  return v6;
}

- (BOOL)isEqualToPPUniversalSearchSpotlightFeedback:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_offeredCSSICount != *(v4 + 2) || self->_engagedCSSICount != *(v4 + 3))
  {
    goto LABEL_10;
  }

  v6 = self->_timestamp;
  v7 = v6;
  if (v6 == v5[4])
  {
  }

  else
  {
    v8 = [(NSDate *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v9 = self->_clientIdentifier;
  v10 = v9;
  if (v9 == v5[2])
  {
  }

  else
  {
    v11 = [(NSString *)v9 isEqual:?];

    if ((v11 & 1) == 0)
    {
LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }
  }

  v14 = self->_clientBundleId;
  v15 = v14;
  if (v14 == v5[3])
  {
    v12 = 1;
  }

  else
  {
    v12 = [(NSString *)v14 isEqual:?];
  }

LABEL_11:
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPUniversalSearchSpotlightFeedback *)self isEqualToPPUniversalSearchSpotlightFeedback:v5];
  }

  return v6;
}

- (PPUniversalSearchSpotlightFeedback)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 decodeInt32ForKey:@"offeredCSSICount"];
  v6 = [v4 decodeInt32ForKey:@"engagedCSSICount"];
  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_default_log_handle();
  v10 = [v7 robustDecodeObjectOfClass:v8 forKey:@"timestamp" withCoder:v4 expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  if (v10)
  {
    v11 = [v4 error];

    if (!v11)
    {
      v14 = MEMORY[0x1E69C5D78];
      v15 = objc_opt_class();
      v16 = pp_default_log_handle();
      v12 = [v14 robustDecodeObjectOfClass:v15 forKey:@"clientIdentifier" withCoder:v4 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v16];

      if (v12 || ([v4 error], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
      {
        v17 = MEMORY[0x1E69C5D78];
        v18 = objc_opt_class();
        v19 = pp_default_log_handle();
        v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"clientBundleId" withCoder:v4 expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v19];

        if (v20 || ([v4 error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
        {
          self = [(PPUniversalSearchSpotlightFeedback *)self initWithOfferedCSSICount:v5 engagedCSSICount:v6 timestamp:v10 clientIdentifier:v12 clientBundleId:v20];
          v13 = self;
LABEL_17:

          goto LABEL_18;
        }

        v24 = pp_universal_search_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v28 = [v4 error];
          *buf = 138412290;
          v30 = v28;
          _os_log_error_impl(&dword_1A7FD3000, v24, OS_LOG_TYPE_ERROR, "PPUniversalSearchSpotlightFeedback: failed to decode bundle ID: %@", buf, 0xCu);
        }

        v20 = 0;
      }

      else
      {
        v20 = pp_universal_search_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v22 = [v4 error];
          *buf = 138412290;
          v30 = v22;
          _os_log_error_impl(&dword_1A7FD3000, v20, OS_LOG_TYPE_ERROR, "PPUniversalSearchSpotlightFeedback: failed to decode client identifier: %@", buf, 0xCu);
        }
      }

      v13 = 0;
      goto LABEL_17;
    }
  }

  v12 = pp_universal_search_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v27 = [v4 error];
    *buf = 138412290;
    v30 = v27;
    _os_log_error_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_ERROR, "PPUniversalSearchSpotlightFeedback: failed to decode timestamp: %@", buf, 0xCu);
  }

  v13 = 0;
LABEL_18:

  v25 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  offeredCSSICount = self->_offeredCSSICount;
  v5 = a3;
  [v5 encodeInt32:offeredCSSICount forKey:@"offeredCSSICount"];
  [v5 encodeInt32:self->_engagedCSSICount forKey:@"engagedCSSICount"];
  [v5 encodeObject:self->_timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
  [v5 encodeObject:self->_clientBundleId forKey:@"clientBundleId"];
}

- (unint64_t)hash
{
  v3 = self->_engagedCSSICount - self->_offeredCSSICount + 32 * self->_offeredCSSICount;
  v4 = [(NSDate *)self->_timestamp hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_clientIdentifier hash]- v4 + 32 * v4;
  return [(NSString *)self->_clientBundleId hash]- v5 + 32 * v5;
}

- (PPUniversalSearchSpotlightFeedback)initWithOfferedCSSICount:(unsigned int)a3 engagedCSSICount:(unsigned int)a4 timestamp:(id)a5 clientIdentifier:(id)a6 clientBundleId:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = PPUniversalSearchSpotlightFeedback;
  v16 = [(PPUniversalSearchSpotlightFeedback *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_offeredCSSICount = a3;
    v16->_engagedCSSICount = a4;
    objc_storeStrong(&v16->_timestamp, a5);
    objc_storeStrong(&v17->_clientIdentifier, a6);
    objc_storeStrong(&v17->_clientBundleId, a7);
  }

  return v17;
}

@end