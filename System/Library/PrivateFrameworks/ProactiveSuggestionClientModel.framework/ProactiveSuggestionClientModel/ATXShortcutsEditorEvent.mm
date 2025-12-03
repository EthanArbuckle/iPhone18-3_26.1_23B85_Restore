@interface ATXShortcutsEditorEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXShortcutsEditorEvent)initWithAbsoluteDate:(double)date eventType:(unint64_t)type blendingCacheUUID:(id)d suggestionUUIDs:(id)ds metadata:(id)metadata;
- (ATXShortcutsEditorEvent)initWithCoder:(id)coder;
- (ATXShortcutsEditorEvent)initWithDate:(id)date eventType:(unint64_t)type blendingCacheUUID:(id)d suggestionUUIDs:(id)ds metadata:(id)metadata;
- (ATXShortcutsEditorEvent)initWithProto:(id)proto;
- (ATXShortcutsEditorEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXShortcutsEditorEvent:(id)event;
- (NSDate)date;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (id)sessionProcessingOptionsForSessionType:(int64_t)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type;
@end

@implementation ATXShortcutsEditorEvent

- (ATXShortcutsEditorEvent)initWithDate:(id)date eventType:(unint64_t)type blendingCacheUUID:(id)d suggestionUUIDs:(id)ds metadata:(id)metadata
{
  metadataCopy = metadata;
  dsCopy = ds;
  dCopy = d;
  [date timeIntervalSince1970];
  v15 = [(ATXShortcutsEditorEvent *)self initWithAbsoluteDate:type eventType:dCopy blendingCacheUUID:dsCopy suggestionUUIDs:metadataCopy metadata:?];

  return v15;
}

- (ATXShortcutsEditorEvent)initWithAbsoluteDate:(double)date eventType:(unint64_t)type blendingCacheUUID:(id)d suggestionUUIDs:(id)ds metadata:(id)metadata
{
  dCopy = d;
  dsCopy = ds;
  metadataCopy = metadata;
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 2 && [dsCopy count] >= 2)
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ATXShortcutsEditorEvent initWithAbsoluteDate:dsCopy eventType:type blendingCacheUUID:v16 suggestionUUIDs:? metadata:?];
    }
  }

  v20.receiver = self;
  v20.super_class = ATXShortcutsEditorEvent;
  v17 = [(ATXShortcutsEditorEvent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_absoluteDate = date;
    v17->_eventType = type;
    objc_storeStrong(&v17->_blendingCacheUUID, d);
    objc_storeStrong(&v18->_suggestionUUIDs, ds);
    objc_storeStrong(&v18->_metadata, metadata);
  }

  return v18;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)type
{
  eventType = self->_eventType;
  if (eventType > 5)
  {
    return &unk_1F5A413A0;
  }

  else
  {
    return qword_1E86A3E98[eventType];
  }
}

- (void)updateUIFeedbackSession:(id)session uiCacheConsumerSubType:(unsigned __int8)type
{
  sessionCopy = session;
  [sessionCopy updateConsumerSubTypeIfUnset:43];
  [sessionCopy updateBlendingUICacheUpdateUUIDIfUnset:self->_blendingCacheUUID];
  sessionMetadata = [sessionCopy sessionMetadata];
  if (!sessionMetadata)
  {
    sessionMetadata = [[ATXShortcutsEditorSessionMetadata alloc] initWithNumStepsInShortcutAtStart:[(ATXShortcutsEditorEventMetadata *)self->_metadata numStepsInShortcut]];
    [sessionCopy updateSessionMetadataIfUnset:sessionMetadata];
  }

  eventType = self->_eventType;
  if (eventType <= 2)
  {
    if (eventType == 1)
    {
      suggestionUUIDs = self->_suggestionUUIDs;
      v13 = sessionCopy;
      v12 = 0;
    }

    else
    {
      if (eventType != 2)
      {
        goto LABEL_19;
      }

      mutableRejectedUUIDs = [sessionCopy mutableRejectedUUIDs];
      firstObject = [(NSArray *)self->_suggestionUUIDs firstObject];
      v9 = [mutableRejectedUUIDs containsObject:firstObject];

      if (v9)
      {
        mutableRejectedUUIDs2 = [sessionCopy mutableRejectedUUIDs];
        firstObject2 = [(NSArray *)self->_suggestionUUIDs firstObject];
        [mutableRejectedUUIDs2 removeObject:firstObject2];
      }

      v12 = self->_suggestionUUIDs;
      v13 = sessionCopy;
      suggestionUUIDs = 0;
    }

    [v13 updateEngagedUUIDs:v12 rejectedUUIDs:0 shownUUIDs:suggestionUUIDs];
  }

  else
  {
    switch(eventType)
    {
      case 3:
        mutableEngagedUUIDs = [sessionCopy mutableEngagedUUIDs];
        firstObject3 = [(NSArray *)self->_suggestionUUIDs firstObject];
        v17 = [mutableEngagedUUIDs containsObject:firstObject3];

        if (v17)
        {
          mutableEngagedUUIDs2 = [sessionCopy mutableEngagedUUIDs];
          firstObject4 = [(NSArray *)self->_suggestionUUIDs firstObject];
          [mutableEngagedUUIDs2 removeObject:firstObject4];
        }

        [sessionCopy updateEngagedUUIDs:0 rejectedUUIDs:self->_suggestionUUIDs shownUUIDs:0];
        sessionMetadata2 = [sessionCopy sessionMetadata];
        [sessionMetadata2 setIsLastSession:1];

        break;
      case 4:
        [(ATXShortcutsEditorSessionMetadata *)sessionMetadata setStepWasManuallyAdded:1];
        break;
      case 5:
        [sessionCopy updateEngagedUUIDs:0 rejectedUUIDs:0 shownUUIDs:self->_suggestionUUIDs];
        [(ATXShortcutsEditorSessionMetadata *)sessionMetadata setNumStepsInShortcutAtEnd:[(ATXShortcutsEditorEventMetadata *)self->_metadata numStepsInShortcut]];
        [(ATXShortcutsEditorSessionMetadata *)sessionMetadata setIsLastSession:1];
        break;
    }
  }

LABEL_19:
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  jsonDict = [(ATXShortcutsEditorEvent *)self jsonDict];
  v5 = [v3 initWithFormat:@"%@", jsonDict];

  return v5;
}

- (id)jsonDict
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_suggestionUUIDs _pas_mappedArrayWithTransform:&__block_literal_global_1];
  v15[0] = @"date";
  v4 = MEMORY[0x1E696AD98];
  date = [(ATXShortcutsEditorEvent *)self date];
  [date timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  v16[0] = v6;
  v15[1] = @"eventType";
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", self->_eventType];
  v16[1] = v7;
  v15[2] = @"blendingCacheUUID";
  uUIDString = [(NSUUID *)self->_blendingCacheUUID UUIDString];
  v9 = uUIDString;
  v10 = @"nil";
  if (uUIDString)
  {
    v11 = uUIDString;
  }

  else
  {
    v11 = @"nil";
  }

  v15[3] = @"suggestionUUIDs";
  if (v3)
  {
    v10 = v3;
  }

  v16[2] = v11;
  v16[3] = v10;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXShortcutsEditorEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXShortcutsEditorEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXShortcutsEditorEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXShortcutsEditorEvent *)self initWithProtoData:v5];
  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 1)
  {
    dataCopy = data;
    v6 = [[self alloc] initWithProtoData:dataCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  proto = [(ATXShortcutsEditorEvent *)self proto];
  data = [proto data];

  return data;
}

- (ATXShortcutsEditorEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_10:
    selfCopy = 0;
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = __atxlog_handle_default();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [(ATXShortcutsEditorEvent *)self initWithProto:v12];
    }

    goto LABEL_10;
  }

  v5 = protoCopy;
  if ([v5 hasDate] && (objc_msgSend(v5, "date"), v7 = v6, objc_msgSend(v5, "hasEventType")))
  {
    eventType = [v5 eventType];
    if ([v5 hasBlendingCacheId])
    {
      v9 = objc_alloc(MEMORY[0x1E696AFB0]);
      blendingCacheId = [v5 blendingCacheId];
      v11 = [v9 initWithUUIDString:blendingCacheId];
    }

    else
    {
      v11 = 0;
    }

    suggestionUUIDs = [v5 suggestionUUIDs];
    v15 = [suggestionUUIDs _pas_mappedArrayWithTransform:&__block_literal_global_57];

    v16 = [ATXShortcutsEditorEventMetadata alloc];
    metadata = [v5 metadata];
    v18 = [(ATXShortcutsEditorEventMetadata *)v16 initWithProto:metadata];

    self = [(ATXShortcutsEditorEvent *)self initWithAbsoluteDate:eventType eventType:v11 blendingCacheUUID:v15 suggestionUUIDs:v18 metadata:v7];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

LABEL_15:
  return selfCopy;
}

id __41__ATXShortcutsEditorEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (ATXShortcutsEditorEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBShortcutsEditorEvent alloc] initWithData:dataCopy];

    self = [(ATXShortcutsEditorEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setDate:self->_absoluteDate];
  [v3 setEventType:self->_eventType];
  blendingCacheUUID = self->_blendingCacheUUID;
  if (blendingCacheUUID)
  {
    uUIDString = [(NSUUID *)blendingCacheUUID UUIDString];
    [v3 setBlendingCacheId:uUIDString];
  }

  if (self->_suggestionUUIDs)
  {
    v6 = objc_opt_new();
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_suggestionUUIDs;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          uUIDString2 = [*(*(&v15 + 1) + 8 * i) UUIDString];
          [v6 addObject:uUIDString2];
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [v3 setSuggestionUUIDs:v6];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = self->_eventType - self->_absoluteDate + 32 * self->_absoluteDate;
  v4 = [(NSUUID *)self->_blendingCacheUUID hash]- v3 + 32 * v3;
  return [(NSArray *)self->_suggestionUUIDs hash]- v4 + 32 * v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsEditorEvent *)self isEqualToATXShortcutsEditorEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXShortcutsEditorEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  v6 = self->_absoluteDate - *(eventCopy + 1);
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 2.22044605e-16 || self->_eventType != eventCopy[3])
  {
    goto LABEL_7;
  }

  v7 = self->_blendingCacheUUID;
  v8 = v7;
  if (v7 == v5[4])
  {
  }

  else
  {
    v9 = [(NSUUID *)v7 isEqual:?];

    if ((v9 & 1) == 0)
    {
LABEL_7:
      v10 = 0;
      goto LABEL_8;
    }
  }

  v12 = self->_suggestionUUIDs;
  v13 = v12;
  if (v12 == v5[5])
  {
    v10 = 1;
  }

  else
  {
    v10 = [(NSArray *)v12 isEqual:?];
  }

LABEL_8:
  return v10;
}

- (void)initWithAbsoluteDate:(os_log_t)log eventType:blendingCacheUUID:suggestionUUIDs:metadata:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2112;
  v7 = a1;
  _os_log_fault_impl(&dword_1DEFC4000, log, OS_LOG_TYPE_FAULT, "Encountered more than 1 suggestionUUID for event type %lu. Expected 1, received: %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v6 = 138412290;
  v7 = v4;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBShortcutsEditorEvent proto", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end