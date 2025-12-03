@interface ATXShortcutsEditorSessionMetadata
- (ATXShortcutsEditorSessionMetadata)initWithCoder:(id)coder;
- (ATXShortcutsEditorSessionMetadata)initWithNumStepsInShortcutAtStart:(unint64_t)start;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXShortcutsEditorSessionMetadata:(id)metadata;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXShortcutsEditorSessionMetadata

- (ATXShortcutsEditorSessionMetadata)initWithNumStepsInShortcutAtStart:(unint64_t)start
{
  v5.receiver = self;
  v5.super_class = ATXShortcutsEditorSessionMetadata;
  result = [(ATXShortcutsEditorSessionMetadata *)&v5 init];
  if (result)
  {
    result->_numStepsInShortcutAtStart = start;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  numStepsInShortcutAtStart = self->_numStepsInShortcutAtStart;
  coderCopy = coder;
  v7 = [v4 numberWithUnsignedInteger:numStepsInShortcutAtStart];
  [coderCopy encodeObject:v7 forKey:@"numStepsInShortcutAtStart"];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_numStepsInShortcutAtEnd];
  [coderCopy encodeObject:v8 forKey:@"numStepsInShortcutAtEnd"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_stepWasManuallyAdded];
  [coderCopy encodeObject:v9 forKey:@"stepWasManuallyAdded"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isLastSession];
  [coderCopy encodeObject:v10 forKey:@"isLastSession"];
}

- (ATXShortcutsEditorSessionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E69C5D78];
  v6 = objc_opt_class();
  v7 = __atxlog_handle_feedback();
  v8 = [v5 robustDecodeObjectOfClass:v6 forKey:@"numStepsInShortcutAtStart" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v7];

  if (v8 || ([coderCopy error], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
  {
    v9 = MEMORY[0x1E69C5D78];
    v10 = objc_opt_class();
    v11 = __atxlog_handle_feedback();
    v12 = [v9 robustDecodeObjectOfClass:v10 forKey:@"numStepsInShortcutAtEnd" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v11];

    if (!v12)
    {
      error = [coderCopy error];

      if (error)
      {
        v16 = __atxlog_handle_feedback();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [ATXShortcutsEditorSessionMetadata initWithCoder:coderCopy];
        }

        selfCopy = 0;
        goto LABEL_23;
      }
    }

    v13 = MEMORY[0x1E69C5D78];
    v14 = objc_opt_class();
    v15 = __atxlog_handle_feedback();
    v16 = [v13 robustDecodeObjectOfClass:v14 forKey:@"stepWasManuallyAdded" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v15];

    if (v16 || ([coderCopy error], v24 = objc_claimAutoreleasedReturnValue(), v24, !v24))
    {
      v17 = MEMORY[0x1E69C5D78];
      v18 = objc_opt_class();
      v19 = __atxlog_handle_feedback();
      v20 = [v17 robustDecodeObjectOfClass:v18 forKey:@"isLastSession" withCoder:coderCopy expectNonNull:1 errorDomain:@"com.apple.ATXFeedbackSessionMetadata" errorCode:-1 logHandle:v19];

      if (v20 || ([coderCopy error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
      {
        self = -[ATXShortcutsEditorSessionMetadata initWithNumStepsInShortcutAtStart:](self, "initWithNumStepsInShortcutAtStart:", [v8 unsignedIntegerValue]);
        [(ATXShortcutsEditorSessionMetadata *)self setNumStepsInShortcutAtEnd:[v12 unsignedIntegerValue]];
        [(ATXShortcutsEditorSessionMetadata *)self setStepWasManuallyAdded:[v16 BOOLValue]];
        [(ATXShortcutsEditorSessionMetadata *)self setIsLastSession:[v20 BOOLValue]];
        selfCopy = self;
LABEL_22:

LABEL_23:
        goto LABEL_24;
      }

      v26 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        [ATXShortcutsEditorSessionMetadata initWithCoder:coderCopy];
      }
    }

    else
    {
      v20 = __atxlog_handle_feedback();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [ATXShortcutsEditorSessionMetadata initWithCoder:coderCopy];
      }
    }

    selfCopy = 0;
    goto LABEL_22;
  }

  v12 = __atxlog_handle_feedback();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [ATXShortcutsEditorSessionMetadata initWithCoder:coderCopy];
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

- (unint64_t)hash
{
  v2 = self->_numStepsInShortcutAtEnd - self->_numStepsInShortcutAtStart + 32 * self->_numStepsInShortcutAtStart;
  v3 = self->_stepWasManuallyAdded - v2 + 32 * v2;
  return self->_isLastSession - v3 + 32 * v3;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsEditorSessionMetadata *)self isEqualToATXShortcutsEditorSessionMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXShortcutsEditorSessionMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = *&self->_numStepsInShortcutAtStart == *(metadataCopy + 1) && self->_stepWasManuallyAdded == metadataCopy[8] && self->_isLastSession == metadataCopy[9];

  return v5;
}

- (NSString)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 initWithFormat:@"%@: \nnumStepsInShortcutAtStart: %lu \nnumStepsInShortcutAtEnd: %lu \nstepWasManaullyAdded: %{BOOL}d \nisLastSession: %{BOOL}d \n", v6, self->_numStepsInShortcutAtStart, self->_numStepsInShortcutAtEnd, self->_stepWasManuallyAdded, self->_isLastSession];

  objc_autoreleasePoolPop(v3);

  return v7;
}

- (void)initWithCoder:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_11(&dword_1DEFC4000, v2, v3, "Unable to deserialize numStepsInShortcutAtStart in ATXFeedbackSessionMetadata. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a1 .cold.2(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_11(&dword_1DEFC4000, v2, v3, "Unable to deserialize boxedNumStepsInShortcutAtEnd in ATXFeedbackSessionMetadata. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a1 .cold.3(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_11(&dword_1DEFC4000, v2, v3, "Unable to deserialize boxedStepWasManuallyAdded in ATXFeedbackSessionMetadata. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithCoder:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [a1 error];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0_11(&dword_1DEFC4000, v2, v3, "Unable to deserialize boxedIsLastSession in ATXFeedbackSessionMetadata. Error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end