@interface ATXProactiveSuggestionUIFeedbackSession
- (ATXProactiveSuggestionUIFeedbackSession)initWithCoder:(id)a3;
- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionIdentifier:(id)a3;
- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionUUID:(id)a3 sessionIdentifier:(id)a4 consumerSubType:(unsigned __int8)a5 sessionStartDate:(id)a6 sessionEndDate:(id)a7 blendingUICacheUpdateUUID:(id)a8 engagedUUIDs:(id)a9 rejectedUUIDs:(id)a10 shownUUIDs:(id)a11 sessionMetadata:(id)a12;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackSession:(id)a3;
- (BOOL)isValidSession;
- (NSOrderedSet)engagedUUIDs;
- (NSOrderedSet)rejectedUUIDs;
- (NSOrderedSet)shownUUIDs;
- (id)validSessionMetadataClassNames;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateBlendingUICacheUpdateUUIDIfUnset:(id)a3;
- (void)updateConsumerSubTypeIfUnset:(unsigned __int8)a3;
- (void)updateEngagedUUIDs:(id)a3 rejectedUUIDs:(id)a4 shownUUIDs:(id)a5;
- (void)updateSessionEndDateIfUnset:(id)a3;
- (void)updateSessionMetadataIfUnset:(id)a3;
- (void)updateSessionStartDateIfUnset:(id)a3;
@end

@implementation ATXProactiveSuggestionUIFeedbackSession

- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(ATXProactiveSuggestionUIFeedbackSession *)self initWithSessionUUID:v5 sessionIdentifier:v4 consumerSubType:0 sessionStartDate:0 sessionEndDate:0 blendingUICacheUpdateUUID:0 engagedUUIDs:v6 rejectedUUIDs:v7 shownUUIDs:v8 sessionMetadata:0];

  return v9;
}

- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionUUID:(id)a3 sessionIdentifier:(id)a4 consumerSubType:(unsigned __int8)a5 sessionStartDate:(id)a6 sessionEndDate:(id)a7 blendingUICacheUpdateUUID:(id)a8 engagedUUIDs:(id)a9 rejectedUUIDs:(id)a10 shownUUIDs:(id)a11 sessionMetadata:(id)a12
{
  v36 = a3;
  v35 = a4;
  v34 = a6;
  v33 = a7;
  v32 = a8;
  v18 = a9;
  v19 = a10;
  v20 = a11;
  v21 = a12;
  v37.receiver = self;
  v37.super_class = ATXProactiveSuggestionUIFeedbackSession;
  v22 = [(ATXProactiveSuggestionUIFeedbackSession *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_sessionUUID, a3);
    objc_storeStrong(&v23->_sessionIdentifier, a4);
    v23->_consumerSubType = a5;
    objc_storeStrong(&v23->_sessionStartDate, a6);
    objc_storeStrong(&v23->_sessionEndDate, a7);
    objc_storeStrong(&v23->_blendingUICacheUpdateUUID, a8);
    v24 = [v18 mutableCopy];
    engagedUUIDs = v23->_engagedUUIDs;
    v23->_engagedUUIDs = v24;

    v26 = [v19 mutableCopy];
    rejectedUUIDs = v23->_rejectedUUIDs;
    v23->_rejectedUUIDs = v26;

    v28 = [v20 mutableCopy];
    shownUUIDs = v23->_shownUUIDs;
    v23->_shownUUIDs = v28;

    objc_storeStrong(&v23->_sessionMetadata, a12);
  }

  return v23;
}

- (void)updateConsumerSubTypeIfUnset:(unsigned __int8)a3
{
  if (!self->_consumerSubType)
  {
    self->_consumerSubType = a3;
  }
}

- (void)updateSessionStartDateIfUnset:(id)a3
{
  v5 = a3;
  sessionStartDate = self->_sessionStartDate;
  p_sessionStartDate = &self->_sessionStartDate;
  if (!sessionStartDate)
  {
    v8 = v5;
    objc_storeStrong(p_sessionStartDate, a3);
    v5 = v8;
  }
}

- (void)updateBlendingUICacheUpdateUUIDIfUnset:(id)a3
{
  v5 = a3;
  if (v5)
  {
    blendingUICacheUpdateUUID = self->_blendingUICacheUpdateUUID;
    p_blendingUICacheUpdateUUID = &self->_blendingUICacheUpdateUUID;
    if (!blendingUICacheUpdateUUID)
    {
      v8 = v5;
      objc_storeStrong(p_blendingUICacheUpdateUUID, a3);
      v5 = v8;
    }
  }
}

- (void)updateEngagedUUIDs:(id)a3 rejectedUUIDs:(id)a4 shownUUIDs:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = a5;
  if (v10)
  {
    [(NSMutableOrderedSet *)self->_engagedUUIDs addObjectsFromArray:v10];
  }

  if (v8)
  {
    [(NSMutableOrderedSet *)self->_rejectedUUIDs addObjectsFromArray:v8];
  }

  if (v9)
  {
    [(NSMutableOrderedSet *)self->_shownUUIDs addObjectsFromArray:v9];
  }
}

- (void)updateSessionMetadataIfUnset:(id)a3
{
  v5 = a3;
  sessionMetadata = self->_sessionMetadata;
  p_sessionMetadata = &self->_sessionMetadata;
  if (!sessionMetadata)
  {
    v8 = v5;
    objc_storeStrong(p_sessionMetadata, a3);
    v5 = v8;
  }
}

- (void)updateSessionEndDateIfUnset:(id)a3
{
  v5 = a3;
  sessionEndDate = self->_sessionEndDate;
  p_sessionEndDate = &self->_sessionEndDate;
  if (!sessionEndDate)
  {
    v8 = v5;
    objc_storeStrong(p_sessionEndDate, a3);
    v5 = v8;
  }
}

- (BOOL)isValidSession
{
  v2 = self;
  LOBYTE(self) = 0;
  if (v2->_consumerSubType)
  {
    if (v2->_consumerSubType != 50)
    {
      self = v2->_sessionStartDate;
      if (self)
      {
        LOBYTE(self) = v2->_sessionEndDate && (-[ATXProactiveSuggestionUIFeedbackSession timeIntervalSince1970](self, "timeIntervalSince1970"), v4 = v3, -[NSDate timeIntervalSince1970](v2->_sessionEndDate, "timeIntervalSince1970"), v4 <= v5) && v2->_blendingUICacheUpdateUUID && ((v6 = [MEMORY[0x1E698B028] consumerTypeForSubType:v2->_consumerSubType], v6 > 0xF) || ((1 << v6) & 0xC002) == 0 || v2->_sessionMetadata);
      }
    }
  }

  return self;
}

- (id)validSessionMetadataClassNames
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ATXSpotlightSessionMetadata", @"ATXFakeSessionMetadata", @"ATXHomeScreenSessionMetadata", @"ATXAppDirectorySessionMetadata", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (NSOrderedSet)engagedUUIDs
{
  v2 = [(NSMutableOrderedSet *)self->_engagedUUIDs copy];

  return v2;
}

- (NSOrderedSet)rejectedUUIDs
{
  v2 = [(NSMutableOrderedSet *)self->_rejectedUUIDs copy];

  return v2;
}

- (NSOrderedSet)shownUUIDs
{
  v2 = [(NSMutableOrderedSet *)self->_shownUUIDs copy];

  return v2;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  [v7 encodeObject:self->_sessionUUID forKey:@"sessionUUID"];
  [v7 encodeObject:self->_sessionIdentifier forKey:@"sessionidentifier"];
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [v7 encodeObject:v4 forKey:@"consumersubtype"];

  [v7 encodeObject:self->_sessionStartDate forKey:@"startdate"];
  [v7 encodeObject:self->_sessionEndDate forKey:@"enddate"];
  [v7 encodeObject:self->_blendingUICacheUpdateUUID forKey:@"blendinguuid"];
  [v7 encodeObject:self->_engagedUUIDs forKey:@"engaged"];
  [v7 encodeObject:self->_rejectedUUIDs forKey:@"rejected"];
  [v7 encodeObject:self->_shownUUIDs forKey:@"shown"];
  [v7 encodeObject:self->_sessionMetadata forKey:@"metadata"];
  if (self->_sessionMetadata)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v6 = 0;
  }

  [v7 encodeObject:v6 forKey:@"metadataClassName"];
}

- (ATXProactiveSuggestionUIFeedbackSession)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"sessionUUID" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v7];

  if (v8)
  {
    v9 = [v4 error];

    if (!v9)
    {
      v11 = MEMORY[0x1E69C5D78];
      v12 = objc_opt_class();
      v13 = __atxlog_handle_blending_ecosystem();
      v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"sessionidentifier" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v13];

      if (!v14 || ([v4 error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
      {
        v10 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_blending_ecosystem();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"consumersubtype" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v18];

      if (!v19 || ([v4 error], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
      {
        v10 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v71 = 0;
      v21 = [MEMORY[0x1E698B028] consumerSubtypeForString:v19 found:&v71];
      if (v71 != 1 || v21 == 50)
      {
        goto LABEL_10;
      }

      v69 = v21;
      v70 = v19;
      v22 = MEMORY[0x1E69C5D78];
      v23 = objc_opt_class();
      v24 = __atxlog_handle_blending_ecosystem();
      v25 = [v22 robustDecodeObjectOfClass:v23 forKey:@"startdate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v24];

      v26 = [v4 error];

      if (v26)
      {
        v10 = 0;
        v19 = v70;
LABEL_49:

        goto LABEL_10;
      }

      v67 = v25;
      v27 = MEMORY[0x1E69C5D78];
      v28 = objc_opt_class();
      v29 = __atxlog_handle_blending_ecosystem();
      v68 = [v27 robustDecodeObjectOfClass:v28 forKey:@"enddate" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v29];

      v30 = [v4 error];

      if (v30)
      {
        v10 = 0;
        v19 = v70;
        v25 = v67;
LABEL_48:

        goto LABEL_49;
      }

      v31 = MEMORY[0x1E69C5D78];
      v32 = objc_opt_class();
      v33 = __atxlog_handle_blending_ecosystem();
      v66 = [v31 robustDecodeObjectOfClass:v32 forKey:@"blendinguuid" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v33];

      v34 = [v4 error];

      if (v34)
      {
        v10 = 0;
        v19 = v70;
        v25 = v67;
LABEL_47:

        goto LABEL_48;
      }

      v35 = objc_autoreleasePoolPush();
      v36 = objc_alloc(MEMORY[0x1E695DFD8]);
      v37 = objc_opt_class();
      v38 = [v36 initWithObjects:{v37, objc_opt_class(), 0}];
      objc_autoreleasePoolPop(v35);
      v39 = MEMORY[0x1E69C5D78];
      v40 = __atxlog_handle_blending_ecosystem();
      v10 = [v39 robustDecodeObjectOfClasses:v38 forKey:@"engaged" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v40];

      v41 = v10;
      v65 = v38;
      if (!v10)
      {
        v19 = v70;
        goto LABEL_25;
      }

      v42 = [v4 error];

      v19 = v70;
      if (v42)
      {
        v10 = 0;
LABEL_25:
        v25 = v67;
LABEL_46:

        goto LABEL_47;
      }

      v64 = v41;
      v43 = MEMORY[0x1E69C5D78];
      v44 = __atxlog_handle_blending_ecosystem();
      v45 = [v43 robustDecodeObjectOfClasses:v38 forKey:@"rejected" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v44];

      if (!v45 || ([v4 error], v46 = objc_claimAutoreleasedReturnValue(), v46, v46))
      {
        v10 = 0;
LABEL_45:

        v19 = v70;
        v25 = v67;
        v41 = v64;
        goto LABEL_46;
      }

      v47 = MEMORY[0x1E69C5D78];
      v48 = __atxlog_handle_blending_ecosystem();
      v49 = [v47 robustDecodeObjectOfClasses:v38 forKey:@"shown" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v48];

      if (!v49 || ([v4 error], v50 = objc_claimAutoreleasedReturnValue(), v50, v50))
      {
        v10 = 0;
LABEL_44:

        goto LABEL_45;
      }

      v51 = MEMORY[0x1E69C5D78];
      v52 = objc_opt_class();
      v53 = __atxlog_handle_blending_ecosystem();
      aClassName = [v51 robustDecodeObjectOfClass:v52 forKey:@"metadataClassName" withCoder:v4 expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v53];

      v54 = [v4 error];

      if (v54)
      {
        v10 = 0;
LABEL_43:

        goto LABEL_44;
      }

      if (aClassName && (-[ATXProactiveSuggestionUIFeedbackSession validSessionMetadataClassNames](self, "validSessionMetadataClassNames"), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 containsObject:aClassName], v55, v56) && (v57 = NSClassFromString(aClassName)) != 0)
      {
        v58 = v57;
        v59 = MEMORY[0x1E69C5D78];
        v60 = __atxlog_handle_blending_ecosystem();
        v61 = [v59 robustDecodeObjectOfClass:v58 forKey:@"metadata" withCoder:v4 expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v60];

        if (!v61 || ([v4 error], v62 = objc_claimAutoreleasedReturnValue(), v62, v62))
        {
          v10 = 0;
LABEL_42:

          goto LABEL_43;
        }
      }

      else
      {
        v61 = 0;
      }

      self = [(ATXProactiveSuggestionUIFeedbackSession *)self initWithSessionUUID:v8 sessionIdentifier:v14 consumerSubType:v69 sessionStartDate:v67 sessionEndDate:v68 blendingUICacheUpdateUUID:v66 engagedUUIDs:v64 rejectedUUIDs:v45 shownUUIDs:v49 sessionMetadata:v61];
      v10 = self;
      goto LABEL_42;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sessionUUID hash];
  v4 = [(NSString *)self->_sessionIdentifier hash];
  v5 = self->_consumerSubType - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  v6 = [(NSDate *)self->_sessionStartDate hash]- v5 + 32 * v5;
  v7 = [(NSDate *)self->_sessionEndDate hash]- v6 + 32 * v6;
  v8 = [(NSUUID *)self->_blendingUICacheUpdateUUID hash]- v7 + 32 * v7;
  v9 = [(NSMutableOrderedSet *)self->_engagedUUIDs hash]- v8 + 32 * v8;
  v10 = [(NSMutableOrderedSet *)self->_rejectedUUIDs hash]- v9 + 32 * v9;
  v11 = [(NSMutableOrderedSet *)self->_shownUUIDs hash]- v10 + 32 * v10;
  return [(ATXProactiveSuggestionUIFeedbackSessionMetadataProtocol *)self->_sessionMetadata hash]- v11 + 32 * v11;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionUIFeedbackSession *)self isEqualToATXProactiveSuggestionUIFeedbackSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackSession:(id)a3
{
  v4 = a3;
  v5 = self->_sessionUUID;
  v6 = v5;
  if (v5 == v4[5])
  {
  }

  else
  {
    v7 = [(NSUUID *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v8 = self->_sessionIdentifier;
  v9 = v8;
  if (v8 == v4[6])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  if (self->_consumerSubType != *(v4 + 32))
  {
LABEL_32:
    v29 = 0;
    goto LABEL_33;
  }

  v11 = self->_sessionStartDate;
  v12 = v11;
  if (v11 == v4[7])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v14 = self->_sessionEndDate;
  v15 = v14;
  if (v14 == v4[8])
  {
  }

  else
  {
    v16 = [(NSDate *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v17 = self->_blendingUICacheUpdateUUID;
  v18 = v17;
  if (v17 == v4[9])
  {
  }

  else
  {
    v19 = [(NSUUID *)v17 isEqual:?];

    if ((v19 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v20 = self->_engagedUUIDs;
  v21 = v20;
  if (v20 == v4[1])
  {
  }

  else
  {
    v22 = [(NSMutableOrderedSet *)v20 isEqual:?];

    if ((v22 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v23 = self->_rejectedUUIDs;
  v24 = v23;
  if (v23 == v4[2])
  {
  }

  else
  {
    v25 = [(NSMutableOrderedSet *)v23 isEqual:?];

    if ((v25 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v26 = self->_shownUUIDs;
  v27 = v26;
  if (v26 == v4[3])
  {
  }

  else
  {
    v28 = [(NSMutableOrderedSet *)v26 isEqual:?];

    if ((v28 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  v31 = self->_sessionMetadata;
  v32 = v31;
  if (v31 == v4[10])
  {
    v29 = 1;
  }

  else
  {
    v29 = [(ATXProactiveSuggestionUIFeedbackSessionMetadataProtocol *)v31 isEqual:?];
  }

LABEL_33:
  return v29;
}

@end