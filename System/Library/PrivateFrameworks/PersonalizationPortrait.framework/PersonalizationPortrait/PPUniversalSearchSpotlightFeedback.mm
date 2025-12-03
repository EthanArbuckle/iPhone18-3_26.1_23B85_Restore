@interface PPUniversalSearchSpotlightFeedback
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPPUniversalSearchSpotlightFeedback:(id)feedback;
- (PPUniversalSearchSpotlightFeedback)initWithCoder:(id)coder;
- (PPUniversalSearchSpotlightFeedback)initWithOfferedCSSICount:(unsigned int)count engagedCSSICount:(unsigned int)iCount timestamp:(id)timestamp clientIdentifier:(id)identifier clientBundleId:(id)id;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqualToPPUniversalSearchSpotlightFeedback:(id)feedback
{
  feedbackCopy = feedback;
  v5 = feedbackCopy;
  if (!feedbackCopy || self->_offeredCSSICount != *(feedbackCopy + 2) || self->_engagedCSSICount != *(feedbackCopy + 3))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PPUniversalSearchSpotlightFeedback *)self isEqualToPPUniversalSearchSpotlightFeedback:v5];
  }

  return v6;
}

- (PPUniversalSearchSpotlightFeedback)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeInt32ForKey:@"offeredCSSICount"];
  v6 = [coderCopy decodeInt32ForKey:@"engagedCSSICount"];
  v7 = MEMORY[0x1E69C5D78];
  v8 = objc_opt_class();
  v9 = pp_default_log_handle();
  v10 = [v7 robustDecodeObjectOfClass:v8 forKey:@"timestamp" withCoder:coderCopy expectNonNull:1 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v9];

  if (v10)
  {
    error = [coderCopy error];

    if (!error)
    {
      v14 = MEMORY[0x1E69C5D78];
      v15 = objc_opt_class();
      v16 = pp_default_log_handle();
      v12 = [v14 robustDecodeObjectOfClass:v15 forKey:@"clientIdentifier" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v16];

      if (v12 || ([coderCopy error], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
      {
        v17 = MEMORY[0x1E69C5D78];
        v18 = objc_opt_class();
        v19 = pp_default_log_handle();
        v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"clientBundleId" withCoder:coderCopy expectNonNull:0 errorDomain:@"PPErrorDomain" errorCode:23 logHandle:v19];

        if (v20 || ([coderCopy error], v23 = objc_claimAutoreleasedReturnValue(), v23, !v23))
        {
          self = [(PPUniversalSearchSpotlightFeedback *)self initWithOfferedCSSICount:v5 engagedCSSICount:v6 timestamp:v10 clientIdentifier:v12 clientBundleId:v20];
          selfCopy = self;
LABEL_17:

          goto LABEL_18;
        }

        v24 = pp_universal_search_log_handle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          error2 = [coderCopy error];
          *buf = 138412290;
          v30 = error2;
          _os_log_error_impl(&dword_1A7FD3000, v24, OS_LOG_TYPE_ERROR, "PPUniversalSearchSpotlightFeedback: failed to decode bundle ID: %@", buf, 0xCu);
        }

        v20 = 0;
      }

      else
      {
        v20 = pp_universal_search_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          error3 = [coderCopy error];
          *buf = 138412290;
          v30 = error3;
          _os_log_error_impl(&dword_1A7FD3000, v20, OS_LOG_TYPE_ERROR, "PPUniversalSearchSpotlightFeedback: failed to decode client identifier: %@", buf, 0xCu);
        }
      }

      selfCopy = 0;
      goto LABEL_17;
    }
  }

  v12 = pp_universal_search_log_handle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    error4 = [coderCopy error];
    *buf = 138412290;
    v30 = error4;
    _os_log_error_impl(&dword_1A7FD3000, v12, OS_LOG_TYPE_ERROR, "PPUniversalSearchSpotlightFeedback: failed to decode timestamp: %@", buf, 0xCu);
  }

  selfCopy = 0;
LABEL_18:

  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  offeredCSSICount = self->_offeredCSSICount;
  coderCopy = coder;
  [coderCopy encodeInt32:offeredCSSICount forKey:@"offeredCSSICount"];
  [coderCopy encodeInt32:self->_engagedCSSICount forKey:@"engagedCSSICount"];
  [coderCopy encodeObject:self->_timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"clientIdentifier"];
  [coderCopy encodeObject:self->_clientBundleId forKey:@"clientBundleId"];
}

- (unint64_t)hash
{
  v3 = self->_engagedCSSICount - self->_offeredCSSICount + 32 * self->_offeredCSSICount;
  v4 = [(NSDate *)self->_timestamp hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_clientIdentifier hash]- v4 + 32 * v4;
  return [(NSString *)self->_clientBundleId hash]- v5 + 32 * v5;
}

- (PPUniversalSearchSpotlightFeedback)initWithOfferedCSSICount:(unsigned int)count engagedCSSICount:(unsigned int)iCount timestamp:(id)timestamp clientIdentifier:(id)identifier clientBundleId:(id)id
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  idCopy = id;
  v19.receiver = self;
  v19.super_class = PPUniversalSearchSpotlightFeedback;
  v16 = [(PPUniversalSearchSpotlightFeedback *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_offeredCSSICount = count;
    v16->_engagedCSSICount = iCount;
    objc_storeStrong(&v16->_timestamp, timestamp);
    objc_storeStrong(&v17->_clientIdentifier, identifier);
    objc_storeStrong(&v17->_clientBundleId, id);
  }

  return v17;
}

@end