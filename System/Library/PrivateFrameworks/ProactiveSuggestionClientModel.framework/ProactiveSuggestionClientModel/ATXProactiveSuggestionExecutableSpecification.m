@interface ATXProactiveSuggestionExecutableSpecification
+ (id)stringForExecutableType:(int64_t)a3;
- (ATXProactiveSuggestionExecutableSpecification)initWithCoder:(id)a3;
- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)a3 executableObjectHash:(unint64_t)a4 expectedExecutableClassString:(id)a5 executableDescription:(id)a6 executableIdentifier:(id)a7 suggestionExecutableType:(int64_t)a8;
- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)a3 expectedExecutableClassString:(id)a4 executableDescription:(id)a5 executableIdentifier:(id)a6 suggestionExecutableType:(int64_t)a7;
- (ATXProactiveSuggestionExecutableSpecification)initWithExecutableObject:(id)a3 executableDescription:(id)a4 executableIdentifier:(id)a5 suggestionExecutableType:(int64_t)a6;
- (ATXProactiveSuggestionExecutableSpecification)initWithProto:(id)a3;
- (ATXProactiveSuggestionExecutableSpecification)initWithProtoData:(id)a3;
- (ATXSuggestionExecutableProtocol)executableObject;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForNSUInteger:(unint64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)fuzzyIsEqualToExecutableSpecification:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)allowedExecutableClasses;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)executableDataFromExecutableObject:(id)a3 executableClassStringFromObject:(id)a4;
- (id)executableObjectFromData:(id)a3 executableClassString:(id)a4;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXProactiveSuggestionExecutableSpecification

- (ATXSuggestionExecutableProtocol)executableObject
{
  v2 = self;
  objc_sync_enter(v2);
  executableObject = v2->_executableObject;
  if (!executableObject)
  {
    v4 = [(ATXProactiveSuggestionExecutableSpecification *)v2 executableObjectFromData:v2->_executable executableClassString:v2->_executableClassString];
    v5 = v2->_executableObject;
    v2->_executableObject = v4;

    executableObject = v2->_executableObject;
  }

  v6 = executableObject;
  objc_sync_exit(v2);

  return v6;
}

- (id)allowedExecutableClasses
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"ATXAction", @"NSString", @"ATXHeroData", @"ATXInfoSuggestion", @"_PSSuggestion", @"CAXContextualAction", @"ATXSpotlightAction", @"ATXShortcutsAction", @"ATXLinkActionContainer", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutable:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableObjectHash:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableClassString:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableDescription:?];
  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableIdentifier:?];
  executableType = self->_executableType;
  if (executableType >= 0xC)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", self->_executableType];
  }

  else
  {
    v5 = off_1E86A48A8[executableType];
  }

  v6 = v5;
  if (([(__CFString *)v6 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v7 = 0;
  }

  else if (([(__CFString *)v6 isEqualToString:@"App"]& 1) != 0)
  {
    v7 = 1;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Action"]& 1) != 0)
  {
    v7 = 2;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Widget"]& 1) != 0)
  {
    v7 = 3;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Tip"]& 1) != 0)
  {
    v7 = 4;
  }

  else if (([(__CFString *)v6 isEqualToString:@"AppClip"]& 1) != 0)
  {
    v7 = 5;
  }

  else if (([(__CFString *)v6 isEqualToString:@"Interaction"]& 1) != 0)
  {
    v7 = 6;
  }

  else if (([(__CFString *)v6 isEqualToString:@"ContextualAction"]& 1) != 0)
  {
    v7 = 7;
  }

  else if (([(__CFString *)v6 isEqualToString:@"SpotlightAction"]& 1) != 0)
  {
    v7 = 8;
  }

  else if (([(__CFString *)v6 isEqualToString:@"ShortcutsAction"]& 1) != 0)
  {
    v7 = 9;
  }

  else if ([(__CFString *)v6 isEqualToString:@"LinkAction"])
  {
    v7 = 10;
  }

  else
  {
    v7 = 0;
  }

  [(ATXPBProactiveSuggestionExecutableSpecification *)v3 setExecutableType:v7];

  return v3;
}

- (unint64_t)hash
{
  executableObjectHash = self->_executableObjectHash;
  v4 = [(NSString *)self->_executableClassString hash]- executableObjectHash + 32 * executableObjectHash;
  v5 = [(NSString *)self->_executableIdentifier hash];
  return self->_executableType - (v5 - v4 + 32 * v4) + 32 * (v5 - v4 + 32 * v4);
}

+ (id)stringForExecutableType:(int64_t)a3
{
  if (a3 >= 0xC)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %li)", a3];
  }

  else
  {
    v4 = off_1E86A48A8[a3];
  }

  return v4;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)a3 expectedExecutableClassString:(id)a4 executableDescription:(id)a5 executableIdentifier:(id)a6 suggestionExecutableType:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(ATXProactiveSuggestionExecutableSpecification *)self allowedExecutableClasses];
  v17 = [v16 containsObject:v13];

  if (v17)
  {
    self = [(ATXProactiveSuggestionExecutableSpecification *)self initWithExecutable:v12 executableObjectHash:0 expectedExecutableClassString:v13 executableDescription:v14 executableIdentifier:v15 suggestionExecutableType:a7];
    v18 = self;
  }

  else
  {
    v19 = __atxlog_handle_blending();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionExecutableSpecification initWithExecutable:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:];
    }

    v18 = 0;
  }

  return v18;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithExecutableObject:(id)a3 executableDescription:(id)a4 executableIdentifier:(id)a5 suggestionExecutableType:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  objc_opt_class();
  objc_opt_isKindOfClass();
  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  v15 = [(ATXProactiveSuggestionExecutableSpecification *)self allowedExecutableClasses];
  v16 = [v15 containsObject:v14];

  if (v16)
  {
    v17 = [(ATXProactiveSuggestionExecutableSpecification *)self executableDataFromExecutableObject:v10 executableClassStringFromObject:v14];
    self = -[ATXProactiveSuggestionExecutableSpecification initWithExecutable:executableObjectHash:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:](self, "initWithExecutable:executableObjectHash:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:", v17, [v10 hash], v14, v11, v12, a6);

    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithExecutable:(id)a3 executableObjectHash:(unint64_t)a4 expectedExecutableClassString:(id)a5 executableDescription:(id)a6 executableIdentifier:(id)a7 suggestionExecutableType:(int64_t)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v28.receiver = self;
  v28.super_class = ATXProactiveSuggestionExecutableSpecification;
  v18 = [(ATXProactiveSuggestionExecutableSpecification *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    executable = v18->_executable;
    v18->_executable = v19;

    v18->_executableObjectHash = a4;
    v21 = [v15 copy];
    executableClassString = v18->_executableClassString;
    v18->_executableClassString = v21;

    v23 = [v16 copy];
    executableDescription = v18->_executableDescription;
    v18->_executableDescription = v23;

    v25 = [v17 copy];
    executableIdentifier = v18->_executableIdentifier;
    v18->_executableIdentifier = v25;

    v18->_executableType = a8;
  }

  return v18;
}

- (id)executableDataFromExecutableObject:(id)a3 executableClassStringFromObject:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"NSString"])
  {
    v7 = [v5 dataUsingEncoding:4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v12 = 0;
    v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v12];
    v9 = v12;
    objc_autoreleasePoolPop(v8);
    if (!v7)
    {
      v10 = __atxlog_handle_blending();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [ATXProactiveSuggestionExecutableSpecification executableDataFromExecutableObject:executableClassStringFromObject:];
      }
    }
  }

  return v7;
}

- (id)executableObjectFromData:(id)a3 executableClassString:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ATXProactiveSuggestionExecutableSpecification *)self allowedExecutableClasses];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v10 = NSClassFromString(v7);
    if (v10)
    {
      if ([(NSString *)v7 isEqualToString:@"NSString"])
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
      }

      else
      {
        v12 = objc_autoreleasePoolPush();
        v16 = 0;
        v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:v10 fromData:v6 error:&v16];
        v13 = v16;
        objc_autoreleasePoolPop(v12);
        if (!v10 && v13)
        {
          v14 = __atxlog_handle_blending();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [ATXProactiveSuggestionExecutableSpecification executableObjectFromData:executableClassString:];
          }
        }
      }
    }
  }

  else
  {
    v11 = __atxlog_handle_blending();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXProactiveSuggestionExecutableSpecification initWithExecutable:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:];
    }

    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Executable class: %@   Executable description: %@   Executable identifier: %@   Executable type: %ld   ", self->_executableClassString, self->_executableDescription, self->_executableIdentifier, self->_executableType];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXProactiveSuggestionExecutableSpecification allocWithZone:a3];
  v5 = [(NSData *)self->_executable copy];
  executableObjectHash = self->_executableObjectHash;
  v7 = [(NSString *)self->_executableClassString copy];
  v8 = [(NSString *)self->_executableDescription copy];
  v9 = [(NSString *)self->_executableIdentifier copy];
  v10 = [(ATXProactiveSuggestionExecutableSpecification *)v4 initWithExecutable:v5 executableObjectHash:executableObjectHash expectedExecutableClassString:v7 executableDescription:v8 executableIdentifier:v9 suggestionExecutableType:self->_executableType];

  v11 = self;
  objc_sync_enter(v11);
  objc_storeStrong(v10 + 1, v11->_executableObject);
  objc_sync_exit(v11);

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_executable;
      v7 = v6;
      if (v6 == v5->_executable)
      {
      }

      else
      {
        v8 = [(NSData *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      executableObjectHash = self->_executableObjectHash;
      if (executableObjectHash == [(ATXProactiveSuggestionExecutableSpecification *)v5 executableObjectHash])
      {
        v11 = self->_executableClassString;
        v12 = v11;
        if (v11 == v5->_executableClassString)
        {
        }

        else
        {
          v13 = [(NSString *)v11 isEqual:?];

          if ((v13 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v14 = self->_executableDescription;
        v15 = v14;
        if (v14 == v5->_executableDescription)
        {
        }

        else
        {
          v16 = [(NSString *)v14 isEqual:?];

          if ((v16 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v17 = self->_executableIdentifier;
        v18 = v17;
        if (v17 == v5->_executableIdentifier)
        {
        }

        else
        {
          v19 = [(NSString *)v17 isEqual:?];

          if ((v19 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        executableType = self->_executableType;
        v9 = executableType == [(ATXProactiveSuggestionExecutableSpecification *)v5 executableType];
        goto LABEL_21;
      }

LABEL_20:
      v9 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v9 = 0;
  }

LABEL_22:

  return v9;
}

- (BOOL)fuzzyIsEqualToExecutableSpecification:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    executableObjectHash = self->_executableObjectHash;
    if (executableObjectHash != [(ATXProactiveSuggestionExecutableSpecification *)v4 executableObjectHash])
    {
      goto LABEL_11;
    }

    v6 = self->_executableClassString;
    v7 = v6;
    if (v6 == v4->_executableClassString)
    {
    }

    else
    {
      v8 = [(NSString *)v6 isEqual:?];

      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    v10 = self->_executableIdentifier;
    v11 = v10;
    if (v10 == v4->_executableIdentifier)
    {
    }

    else
    {
      v12 = [(NSString *)v10 isEqual:?];

      if ((v12 & 1) == 0)
      {
LABEL_11:
        v9 = 0;
        goto LABEL_12;
      }
    }

    executableType = self->_executableType;
    v9 = executableType == [(ATXProactiveSuggestionExecutableSpecification *)v4 executableType];
    goto LABEL_12;
  }

  v9 = 1;
LABEL_12:

  return v9;
}

- (id)jsonRawData
{
  v12[5] = *MEMORY[0x1E69E9840];
  executableType = self->_executableType;
  v12[0] = self->_executableIdentifier;
  v11[0] = @"executableIdentifier";
  v11[1] = @"executableType";
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:executableType];
  executableObjectHash = self->_executableObjectHash;
  executableClassString = self->_executableClassString;
  v12[1] = v4;
  v12[2] = executableClassString;
  v11[2] = @"executableClassString";
  v11[3] = @"executableDescription";
  v12[3] = self->_executableDescription;
  v11[4] = @"executableObjectHash";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:executableObjectHash];
  v12[4] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)encodeAsProto
{
  v2 = [(ATXProactiveSuggestionExecutableSpecification *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBProactiveSuggestionExecutableSpecification alloc] initWithData:v4];

    self = [(ATXProactiveSuggestionExecutableSpecification *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXProactiveSuggestionExecutableSpecification)initWithProto:(id)a3
{
  v4 = a3;
  if (!v4)
  {
LABEL_8:
    v14 = 0;
    goto LABEL_36;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = __atxlog_handle_default();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [ATXProactiveSuggestion initWithProto:];
    }

    goto LABEL_8;
  }

  v5 = v4;
  v6 = [(ATXPBProactiveSuggestionExecutableSpecification *)v5 executable];
  v7 = [(ATXPBProactiveSuggestionExecutableSpecification *)v5 executableObjectHash];
  v8 = [(ATXPBProactiveSuggestionExecutableSpecification *)v5 executableClassString];
  v9 = [(ATXPBProactiveSuggestionExecutableSpecification *)v5 executableDescription];
  v10 = [(ATXPBProactiveSuggestionExecutableSpecification *)v5 executableIdentifier];
  v11 = [(ATXPBProactiveSuggestionExecutableSpecification *)v5 executableType];
  if (v11 >= 0xB)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v11];
  }

  else
  {
    v12 = off_1E86A4850[v11];
  }

  v15 = v12;
  if (([(__CFString *)v15 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v16 = 0;
  }

  else if (([(__CFString *)v15 isEqualToString:@"App"]& 1) != 0)
  {
    v16 = 1;
  }

  else if (([(__CFString *)v15 isEqualToString:@"Action"]& 1) != 0)
  {
    v16 = 2;
  }

  else if (([(__CFString *)v15 isEqualToString:@"Widget"]& 1) != 0)
  {
    v16 = 3;
  }

  else if (([(__CFString *)v15 isEqualToString:@"Tip"]& 1) != 0)
  {
    v16 = 4;
  }

  else if (([(__CFString *)v15 isEqualToString:@"AppClip"]& 1) != 0)
  {
    v16 = 5;
  }

  else if (([(__CFString *)v15 isEqualToString:@"Interaction"]& 1) != 0)
  {
    v16 = 6;
  }

  else if (([(__CFString *)v15 isEqualToString:@"ContextualAction"]& 1) != 0)
  {
    v16 = 7;
  }

  else if (([(__CFString *)v15 isEqualToString:@"SpotlightAction"]& 1) != 0)
  {
    v16 = 8;
  }

  else if (([(__CFString *)v15 isEqualToString:@"ShortcutsAction"]& 1) != 0)
  {
    v16 = 9;
  }

  else if (([(__CFString *)v15 isEqualToString:@"LinkAction"]& 1) != 0)
  {
    v16 = 10;
  }

  else if ([(__CFString *)v15 isEqualToString:@"Max"])
  {
    v16 = 11;
  }

  else
  {
    v16 = 0;
  }

  self = [(ATXProactiveSuggestionExecutableSpecification *)self initWithExecutable:v6 executableObjectHash:v7 expectedExecutableClassString:v8 executableDescription:v9 executableIdentifier:v10 suggestionExecutableType:v16];
  v14 = self;
LABEL_36:

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSInteger:(int64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForNSUInteger:(unint64_t)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v22 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", v11, v22];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 initWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXProactiveSuggestionExecutableSpecification *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXProactiveSuggestionExecutableSpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionExecutableSpecification *)self initWithProtoData:v5];
  return v6;
}

- (void)initWithExecutable:expectedExecutableClassString:executableDescription:executableIdentifier:suggestionExecutableType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Executable object in ATXProactiveSuggestion's executableSpec was of unsupported type. Type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)executableDataFromExecutableObject:executableClassStringFromObject:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Unable to archive executable object from ATXProactiveSuggestion. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)executableObjectFromData:executableClassString:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_0(&dword_1DEFC4000, v0, v1, "Unable to unarchive executable object from ATXProactiveSuggestion. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end