@interface ATXProactiveSuggestionUIFeedbackSession
- (ATXProactiveSuggestionUIFeedbackSession)initWithCoder:(id)coder;
- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionIdentifier:(id)identifier;
- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionUUID:(id)d sessionIdentifier:(id)identifier consumerSubType:(unsigned __int8)type sessionStartDate:(id)date sessionEndDate:(id)endDate blendingUICacheUpdateUUID:(id)iD engagedUUIDs:(id)ds rejectedUUIDs:(id)self0 shownUUIDs:(id)self1 sessionMetadata:(id)self2;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackSession:(id)session;
- (BOOL)isValidSession;
- (NSOrderedSet)engagedUUIDs;
- (NSOrderedSet)rejectedUUIDs;
- (NSOrderedSet)shownUUIDs;
- (id)validSessionMetadataClassNames;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateBlendingUICacheUpdateUUIDIfUnset:(id)unset;
- (void)updateConsumerSubTypeIfUnset:(unsigned __int8)unset;
- (void)updateEngagedUUIDs:(id)ds rejectedUUIDs:(id)iDs shownUUIDs:(id)uIDs;
- (void)updateSessionEndDateIfUnset:(id)unset;
- (void)updateSessionMetadataIfUnset:(id)unset;
- (void)updateSessionStartDateIfUnset:(id)unset;
@end

@implementation ATXProactiveSuggestionUIFeedbackSession

- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = [(ATXProactiveSuggestionUIFeedbackSession *)self initWithSessionUUID:v5 sessionIdentifier:identifierCopy consumerSubType:0 sessionStartDate:0 sessionEndDate:0 blendingUICacheUpdateUUID:0 engagedUUIDs:v6 rejectedUUIDs:v7 shownUUIDs:v8 sessionMetadata:0];

  return v9;
}

- (ATXProactiveSuggestionUIFeedbackSession)initWithSessionUUID:(id)d sessionIdentifier:(id)identifier consumerSubType:(unsigned __int8)type sessionStartDate:(id)date sessionEndDate:(id)endDate blendingUICacheUpdateUUID:(id)iD engagedUUIDs:(id)ds rejectedUUIDs:(id)self0 shownUUIDs:(id)self1 sessionMetadata:(id)self2
{
  dCopy = d;
  identifierCopy = identifier;
  dateCopy = date;
  endDateCopy = endDate;
  iDCopy = iD;
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  metadataCopy = metadata;
  v37.receiver = self;
  v37.super_class = ATXProactiveSuggestionUIFeedbackSession;
  v22 = [(ATXProactiveSuggestionUIFeedbackSession *)&v37 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_sessionUUID, d);
    objc_storeStrong(&v23->_sessionIdentifier, identifier);
    v23->_consumerSubType = type;
    objc_storeStrong(&v23->_sessionStartDate, date);
    objc_storeStrong(&v23->_sessionEndDate, endDate);
    objc_storeStrong(&v23->_blendingUICacheUpdateUUID, iD);
    v24 = [dsCopy mutableCopy];
    engagedUUIDs = v23->_engagedUUIDs;
    v23->_engagedUUIDs = v24;

    v26 = [iDsCopy mutableCopy];
    rejectedUUIDs = v23->_rejectedUUIDs;
    v23->_rejectedUUIDs = v26;

    v28 = [uIDsCopy mutableCopy];
    shownUUIDs = v23->_shownUUIDs;
    v23->_shownUUIDs = v28;

    objc_storeStrong(&v23->_sessionMetadata, metadata);
  }

  return v23;
}

- (void)updateConsumerSubTypeIfUnset:(unsigned __int8)unset
{
  if (!self->_consumerSubType)
  {
    self->_consumerSubType = unset;
  }
}

- (void)updateSessionStartDateIfUnset:(id)unset
{
  unsetCopy = unset;
  sessionStartDate = self->_sessionStartDate;
  p_sessionStartDate = &self->_sessionStartDate;
  if (!sessionStartDate)
  {
    v8 = unsetCopy;
    objc_storeStrong(p_sessionStartDate, unset);
    unsetCopy = v8;
  }
}

- (void)updateBlendingUICacheUpdateUUIDIfUnset:(id)unset
{
  unsetCopy = unset;
  if (unsetCopy)
  {
    blendingUICacheUpdateUUID = self->_blendingUICacheUpdateUUID;
    p_blendingUICacheUpdateUUID = &self->_blendingUICacheUpdateUUID;
    if (!blendingUICacheUpdateUUID)
    {
      v8 = unsetCopy;
      objc_storeStrong(p_blendingUICacheUpdateUUID, unset);
      unsetCopy = v8;
    }
  }
}

- (void)updateEngagedUUIDs:(id)ds rejectedUUIDs:(id)iDs shownUUIDs:(id)uIDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  uIDsCopy = uIDs;
  if (dsCopy)
  {
    [(NSMutableOrderedSet *)self->_engagedUUIDs addObjectsFromArray:dsCopy];
  }

  if (iDsCopy)
  {
    [(NSMutableOrderedSet *)self->_rejectedUUIDs addObjectsFromArray:iDsCopy];
  }

  if (uIDsCopy)
  {
    [(NSMutableOrderedSet *)self->_shownUUIDs addObjectsFromArray:uIDsCopy];
  }
}

- (void)updateSessionMetadataIfUnset:(id)unset
{
  unsetCopy = unset;
  sessionMetadata = self->_sessionMetadata;
  p_sessionMetadata = &self->_sessionMetadata;
  if (!sessionMetadata)
  {
    v8 = unsetCopy;
    objc_storeStrong(p_sessionMetadata, unset);
    unsetCopy = v8;
  }
}

- (void)updateSessionEndDateIfUnset:(id)unset
{
  unsetCopy = unset;
  sessionEndDate = self->_sessionEndDate;
  p_sessionEndDate = &self->_sessionEndDate;
  if (!sessionEndDate)
  {
    v8 = unsetCopy;
    objc_storeStrong(p_sessionEndDate, unset);
    unsetCopy = v8;
  }
}

- (BOOL)isValidSession
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (selfCopy->_consumerSubType)
  {
    if (selfCopy->_consumerSubType != 50)
    {
      self = selfCopy->_sessionStartDate;
      if (self)
      {
        LOBYTE(self) = selfCopy->_sessionEndDate && (-[ATXProactiveSuggestionUIFeedbackSession timeIntervalSince1970](self, "timeIntervalSince1970"), v4 = v3, -[NSDate timeIntervalSince1970](selfCopy->_sessionEndDate, "timeIntervalSince1970"), v4 <= v5) && selfCopy->_blendingUICacheUpdateUUID && ((v6 = [MEMORY[0x1E698B028] consumerTypeForSubType:selfCopy->_consumerSubType], v6 > 0xF) || ((1 << v6) & 0xC002) == 0 || selfCopy->_sessionMetadata);
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_sessionUUID forKey:@"sessionUUID"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionidentifier"];
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:self->_consumerSubType];
  [coderCopy encodeObject:v4 forKey:@"consumersubtype"];

  [coderCopy encodeObject:self->_sessionStartDate forKey:@"startdate"];
  [coderCopy encodeObject:self->_sessionEndDate forKey:@"enddate"];
  [coderCopy encodeObject:self->_blendingUICacheUpdateUUID forKey:@"blendinguuid"];
  [coderCopy encodeObject:self->_engagedUUIDs forKey:@"engaged"];
  [coderCopy encodeObject:self->_rejectedUUIDs forKey:@"rejected"];
  [coderCopy encodeObject:self->_shownUUIDs forKey:@"shown"];
  [coderCopy encodeObject:self->_sessionMetadata forKey:@"metadata"];
  if (self->_sessionMetadata)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
  }

  else
  {
    v6 = 0;
  }

  [coderCopy encodeObject:v6 forKey:@"metadataClassName"];
}

- (ATXProactiveSuggestionUIFeedbackSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_blending_ecosystem();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"sessionUUID" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v7];

  if (v8)
  {
    error = [coderCopy error];

    if (!error)
    {
      v11 = MEMORY[0x1E69C5D78];
      v12 = objc_opt_class();
      v13 = __atxlog_handle_blending_ecosystem();
      v14 = [v11 robustDecodeObjectOfClass:v12 forKey:@"sessionidentifier" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v13];

      if (!v14 || ([coderCopy error], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
      {
        selfCopy = 0;
LABEL_11:

        goto LABEL_12;
      }

      v16 = MEMORY[0x1E69C5D78];
      v17 = objc_opt_class();
      v18 = __atxlog_handle_blending_ecosystem();
      v19 = [v16 robustDecodeObjectOfClass:v17 forKey:@"consumersubtype" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v18];

      if (!v19 || ([coderCopy error], selfCopy = objc_claimAutoreleasedReturnValue(), selfCopy, selfCopy))
      {
        selfCopy = 0;
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
      v25 = [v22 robustDecodeObjectOfClass:v23 forKey:@"startdate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v24];

      error2 = [coderCopy error];

      if (error2)
      {
        selfCopy = 0;
        v19 = v70;
LABEL_49:

        goto LABEL_10;
      }

      v67 = v25;
      v27 = MEMORY[0x1E69C5D78];
      v28 = objc_opt_class();
      v29 = __atxlog_handle_blending_ecosystem();
      v68 = [v27 robustDecodeObjectOfClass:v28 forKey:@"enddate" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v29];

      error3 = [coderCopy error];

      if (error3)
      {
        selfCopy = 0;
        v19 = v70;
        v25 = v67;
LABEL_48:

        goto LABEL_49;
      }

      v31 = MEMORY[0x1E69C5D78];
      v32 = objc_opt_class();
      v33 = __atxlog_handle_blending_ecosystem();
      v66 = [v31 robustDecodeObjectOfClass:v32 forKey:@"blendinguuid" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v33];

      error4 = [coderCopy error];

      if (error4)
      {
        selfCopy = 0;
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
      selfCopy = [v39 robustDecodeObjectOfClasses:v38 forKey:@"engaged" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v40];

      v41 = selfCopy;
      v65 = v38;
      if (!selfCopy)
      {
        v19 = v70;
        goto LABEL_25;
      }

      error5 = [coderCopy error];

      v19 = v70;
      if (error5)
      {
        selfCopy = 0;
LABEL_25:
        v25 = v67;
LABEL_46:

        goto LABEL_47;
      }

      v64 = v41;
      v43 = MEMORY[0x1E69C5D78];
      v44 = __atxlog_handle_blending_ecosystem();
      v45 = [v43 robustDecodeObjectOfClasses:v38 forKey:@"rejected" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v44];

      if (!v45 || ([coderCopy error], v46 = objc_claimAutoreleasedReturnValue(), v46, v46))
      {
        selfCopy = 0;
LABEL_45:

        v19 = v70;
        v25 = v67;
        v41 = v64;
        goto LABEL_46;
      }

      v47 = MEMORY[0x1E69C5D78];
      v48 = __atxlog_handle_blending_ecosystem();
      v49 = [v47 robustDecodeObjectOfClasses:v38 forKey:@"shown" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v48];

      if (!v49 || ([coderCopy error], v50 = objc_claimAutoreleasedReturnValue(), v50, v50))
      {
        selfCopy = 0;
LABEL_44:

        goto LABEL_45;
      }

      v51 = MEMORY[0x1E69C5D78];
      v52 = objc_opt_class();
      v53 = __atxlog_handle_blending_ecosystem();
      aClassName = [v51 robustDecodeObjectOfClass:v52 forKey:@"metadataClassName" withCoder:coderCopy expectNonNull:0 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v53];

      error6 = [coderCopy error];

      if (error6)
      {
        selfCopy = 0;
LABEL_43:

        goto LABEL_44;
      }

      if (aClassName && (-[ATXProactiveSuggestionUIFeedbackSession validSessionMetadataClassNames](self, "validSessionMetadataClassNames"), v55 = objc_claimAutoreleasedReturnValue(), v56 = [v55 containsObject:aClassName], v55, v56) && (v57 = NSClassFromString(aClassName)) != 0)
      {
        v58 = v57;
        v59 = MEMORY[0x1E69C5D78];
        v60 = __atxlog_handle_blending_ecosystem();
        v61 = [v59 robustDecodeObjectOfClass:v58 forKey:@"metadata" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.proactive.ATXProactiveSuggestionUIFeedbackSession" errorCode:-1 logHandle:v60];

        if (!v61 || ([coderCopy error], v62 = objc_claimAutoreleasedReturnValue(), v62, v62))
        {
          selfCopy = 0;
LABEL_42:

          goto LABEL_43;
        }
      }

      else
      {
        v61 = 0;
      }

      self = [(ATXProactiveSuggestionUIFeedbackSession *)self initWithSessionUUID:v8 sessionIdentifier:v14 consumerSubType:v69 sessionStartDate:v67 sessionEndDate:v68 blendingUICacheUpdateUUID:v66 engagedUUIDs:v64 rejectedUUIDs:v45 shownUUIDs:v49 sessionMetadata:v61];
      selfCopy = self;
      goto LABEL_42;
    }
  }

  selfCopy = 0;
LABEL_12:

  return selfCopy;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionUIFeedbackSession *)self isEqualToATXProactiveSuggestionUIFeedbackSession:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXProactiveSuggestionUIFeedbackSession:(id)session
{
  sessionCopy = session;
  v5 = self->_sessionUUID;
  v6 = v5;
  if (v5 == sessionCopy[5])
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
  if (v8 == sessionCopy[6])
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

  if (self->_consumerSubType != *(sessionCopy + 32))
  {
LABEL_32:
    v29 = 0;
    goto LABEL_33;
  }

  v11 = self->_sessionStartDate;
  v12 = v11;
  if (v11 == sessionCopy[7])
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
  if (v14 == sessionCopy[8])
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
  if (v17 == sessionCopy[9])
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
  if (v20 == sessionCopy[1])
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
  if (v23 == sessionCopy[2])
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
  if (v26 == sessionCopy[3])
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
  if (v31 == sessionCopy[10])
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