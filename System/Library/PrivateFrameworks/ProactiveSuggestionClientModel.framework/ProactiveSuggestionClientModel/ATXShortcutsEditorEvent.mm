@interface ATXShortcutsEditorEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (ATXShortcutsEditorEvent)initWithAbsoluteDate:(double)a3 eventType:(unint64_t)a4 blendingCacheUUID:(id)a5 suggestionUUIDs:(id)a6 metadata:(id)a7;
- (ATXShortcutsEditorEvent)initWithCoder:(id)a3;
- (ATXShortcutsEditorEvent)initWithDate:(id)a3 eventType:(unint64_t)a4 blendingCacheUUID:(id)a5 suggestionUUIDs:(id)a6 metadata:(id)a7;
- (ATXShortcutsEditorEvent)initWithProto:(id)a3;
- (ATXShortcutsEditorEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXShortcutsEditorEvent:(id)a3;
- (NSDate)date;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (id)sessionProcessingOptionsForSessionType:(int64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4;
@end

@implementation ATXShortcutsEditorEvent

- (ATXShortcutsEditorEvent)initWithDate:(id)a3 eventType:(unint64_t)a4 blendingCacheUUID:(id)a5 suggestionUUIDs:(id)a6 metadata:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  [a3 timeIntervalSince1970];
  v15 = [(ATXShortcutsEditorEvent *)self initWithAbsoluteDate:a4 eventType:v14 blendingCacheUUID:v13 suggestionUUIDs:v12 metadata:?];

  return v15;
}

- (ATXShortcutsEditorEvent)initWithAbsoluteDate:(double)a3 eventType:(unint64_t)a4 blendingCacheUUID:(id)a5 suggestionUUIDs:(id)a6 metadata:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) == 2 && [v14 count] >= 2)
  {
    v16 = __atxlog_handle_blending();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [ATXShortcutsEditorEvent initWithAbsoluteDate:v14 eventType:a4 blendingCacheUUID:v16 suggestionUUIDs:? metadata:?];
    }
  }

  v20.receiver = self;
  v20.super_class = ATXShortcutsEditorEvent;
  v17 = [(ATXShortcutsEditorEvent *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_absoluteDate = a3;
    v17->_eventType = a4;
    objc_storeStrong(&v17->_blendingCacheUUID, a5);
    objc_storeStrong(&v18->_suggestionUUIDs, a6);
    objc_storeStrong(&v18->_metadata, a7);
  }

  return v18;
}

- (NSDate)date
{
  v2 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:self->_absoluteDate];

  return v2;
}

- (id)sessionProcessingOptionsForSessionType:(int64_t)a3
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

- (void)updateUIFeedbackSession:(id)a3 uiCacheConsumerSubType:(unsigned __int8)a4
{
  v21 = a3;
  [v21 updateConsumerSubTypeIfUnset:43];
  [v21 updateBlendingUICacheUpdateUUIDIfUnset:self->_blendingCacheUUID];
  v5 = [v21 sessionMetadata];
  if (!v5)
  {
    v5 = [[ATXShortcutsEditorSessionMetadata alloc] initWithNumStepsInShortcutAtStart:[(ATXShortcutsEditorEventMetadata *)self->_metadata numStepsInShortcut]];
    [v21 updateSessionMetadataIfUnset:v5];
  }

  eventType = self->_eventType;
  if (eventType <= 2)
  {
    if (eventType == 1)
    {
      suggestionUUIDs = self->_suggestionUUIDs;
      v13 = v21;
      v12 = 0;
    }

    else
    {
      if (eventType != 2)
      {
        goto LABEL_19;
      }

      v7 = [v21 mutableRejectedUUIDs];
      v8 = [(NSArray *)self->_suggestionUUIDs firstObject];
      v9 = [v7 containsObject:v8];

      if (v9)
      {
        v10 = [v21 mutableRejectedUUIDs];
        v11 = [(NSArray *)self->_suggestionUUIDs firstObject];
        [v10 removeObject:v11];
      }

      v12 = self->_suggestionUUIDs;
      v13 = v21;
      suggestionUUIDs = 0;
    }

    [v13 updateEngagedUUIDs:v12 rejectedUUIDs:0 shownUUIDs:suggestionUUIDs];
  }

  else
  {
    switch(eventType)
    {
      case 3:
        v15 = [v21 mutableEngagedUUIDs];
        v16 = [(NSArray *)self->_suggestionUUIDs firstObject];
        v17 = [v15 containsObject:v16];

        if (v17)
        {
          v18 = [v21 mutableEngagedUUIDs];
          v19 = [(NSArray *)self->_suggestionUUIDs firstObject];
          [v18 removeObject:v19];
        }

        [v21 updateEngagedUUIDs:0 rejectedUUIDs:self->_suggestionUUIDs shownUUIDs:0];
        v20 = [v21 sessionMetadata];
        [v20 setIsLastSession:1];

        break;
      case 4:
        [(ATXShortcutsEditorSessionMetadata *)v5 setStepWasManuallyAdded:1];
        break;
      case 5:
        [v21 updateEngagedUUIDs:0 rejectedUUIDs:0 shownUUIDs:self->_suggestionUUIDs];
        [(ATXShortcutsEditorSessionMetadata *)v5 setNumStepsInShortcutAtEnd:[(ATXShortcutsEditorEventMetadata *)self->_metadata numStepsInShortcut]];
        [(ATXShortcutsEditorSessionMetadata *)v5 setIsLastSession:1];
        break;
    }
  }

LABEL_19:
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(ATXShortcutsEditorEvent *)self jsonDict];
  v5 = [v3 initWithFormat:@"%@", v4];

  return v5;
}

- (id)jsonDict
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_suggestionUUIDs _pas_mappedArrayWithTransform:&__block_literal_global_1];
  v15[0] = @"date";
  v4 = MEMORY[0x1E696AD98];
  v5 = [(ATXShortcutsEditorEvent *)self date];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];
  v16[0] = v6;
  v15[1] = @"eventType";
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu", self->_eventType];
  v16[1] = v7;
  v15[2] = @"blendingCacheUUID";
  v8 = [(NSUUID *)self->_blendingCacheUUID UUIDString];
  v9 = v8;
  v10 = @"nil";
  if (v8)
  {
    v11 = v8;
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
  v3 = [(ATXShortcutsEditorEvent *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXShortcutsEditorEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXShortcutsEditorEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXShortcutsEditorEvent *)self initWithProtoData:v5];
  return v6;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 1)
  {
    v5 = a3;
    v6 = [[a1 alloc] initWithProtoData:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXShortcutsEditorEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXShortcutsEditorEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_10:
    v13 = 0;
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

  v5 = v4;
  if ([v5 hasDate] && (objc_msgSend(v5, "date"), v7 = v6, objc_msgSend(v5, "hasEventType")))
  {
    v8 = [v5 eventType];
    if ([v5 hasBlendingCacheId])
    {
      v9 = objc_alloc(MEMORY[0x1E696AFB0]);
      v10 = [v5 blendingCacheId];
      v11 = [v9 initWithUUIDString:v10];
    }

    else
    {
      v11 = 0;
    }

    v14 = [v5 suggestionUUIDs];
    v15 = [v14 _pas_mappedArrayWithTransform:&__block_literal_global_57];

    v16 = [ATXShortcutsEditorEventMetadata alloc];
    v17 = [v5 metadata];
    v18 = [(ATXShortcutsEditorEventMetadata *)v16 initWithProto:v17];

    self = [(ATXShortcutsEditorEvent *)self initWithAbsoluteDate:v8 eventType:v11 blendingCacheUUID:v15 suggestionUUIDs:v18 metadata:v7];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

LABEL_15:
  return v13;
}

id __41__ATXShortcutsEditorEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (ATXShortcutsEditorEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBShortcutsEditorEvent alloc] initWithData:v4];

    self = [(ATXShortcutsEditorEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
    v5 = [(NSUUID *)blendingCacheUUID UUIDString];
    [v3 setBlendingCacheId:v5];
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

          v12 = [*(*(&v15 + 1) + 8 * i) UUIDString];
          [v6 addObject:v12];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsEditorEvent *)self isEqualToATXShortcutsEditorEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXShortcutsEditorEvent:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = self->_absoluteDate - *(v4 + 1);
  if (v6 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 2.22044605e-16 || self->_eventType != v4[3])
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