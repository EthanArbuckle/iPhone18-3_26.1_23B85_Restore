@interface ATXProactiveSuggestionUISpecification
- (ATXProactiveSuggestionUISpecification)initWithCoder:(id)a3;
- (ATXProactiveSuggestionUISpecification)initWithProto:(id)a3;
- (ATXProactiveSuggestionUISpecification)initWithProtoData:(id)a3;
- (ATXProactiveSuggestionUISpecification)initWithTitle:(id)a3 subtitle:(id)a4 predictionReason:(id)a5 preferredLayoutConfigs:(id)a6 allowedOnLockscreen:(BOOL)a7 allowedOnHomeScreen:(BOOL)a8 allowedOnSpotlight:(BOOL)a9 shouldClearOnEngagement:(BOOL)a10 predictionReasons:(unint64_t)a11 contextStartDate:(id)a12 contextEndDate:(id)a13;
- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)encodeAsProto;
- (id)jsonRawData;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXProactiveSuggestionUISpecification

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  title = self->_title;
  subtitle = self->_subtitle;
  v6 = [(NSString *)self->_reason hash];
  v7 = @"No";
  if (self->_shouldClearOnEngagement)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  if (self->_allowedOnLockscreen)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  if (self->_allowedOnHomeScreen)
  {
    v10 = @"Yes";
  }

  else
  {
    v10 = @"No";
  }

  if (self->_allowedOnSpotlight)
  {
    v7 = @"Yes";
  }

  v11 = [v3 initWithFormat:@"Title: %@   Subtitle: %@   Reason.hash: %lu   Layouts: %@   Should clear on engagement: %@   Allowed on Lockscreen: %@   Allowed on HomeScreen: %@   Allowed on Spotlight: %@   Executable prediction reason: %llu   ", title, subtitle, v6, self->_preferredLayoutConfigs, v8, v9, v10, v7, self->_predictionReasons];

  return v11;
}

- (id)proto
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [(ATXPBProactiveSuggestionUISpecification *)v3 setTitle:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setSubtitle:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setReason:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setAllowedOnLockscreen:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setAllowedOnHomeScreen:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setAllowedOnSpotlight:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setShouldClearOnEngagement:?];
  [(ATXPBProactiveSuggestionUISpecification *)v3 setPredictionReasons:?];
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_preferredLayoutConfigs, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_preferredLayoutConfigs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v20 + 1) + 8 * v9) proto];
        if (v10)
        {
          [v4 addObject:v10];
        }

        else
        {
          v11 = __atxlog_handle_blending();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(ATXProactiveSuggestionUISpecification *)&v18 proto];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(ATXPBProactiveSuggestionUISpecification *)v3 setPreferredLayoutConfigs:v4];
  contextStartDate = self->_contextStartDate;
  if (contextStartDate)
  {
    [(NSDate *)contextStartDate timeIntervalSinceReferenceDate];
    [(ATXPBProactiveSuggestionUISpecification *)v3 setContextStartDate:v13];
  }

  contextEndDate = self->_contextEndDate;
  if (contextEndDate)
  {
    [(NSDate *)contextEndDate timeIntervalSinceReferenceDate];
    [(ATXPBProactiveSuggestionUISpecification *)v3 setContextEndDate:v15];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_title hash];
  v4 = [(NSString *)self->_subtitle hash]- v3 + 32 * v3;
  v5 = [(NSString *)self->_reason hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_preferredLayoutConfigs hash];
  v7 = self->_allowedOnLockscreen - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->_allowedOnHomeScreen - v7 + 32 * v7;
  v9 = self->_allowedOnSpotlight - v8 + 32 * v8;
  v10 = self->_shouldClearOnEngagement - v9 + 32 * v9;
  v11 = self->_predictionReasons - v10 + 32 * v10;
  v12 = &self->_contextStartDate[4 * v11] - v11;
  return self->_contextEndDate - v12 + 32 * v12;
}

- (ATXProactiveSuggestionUISpecification)initWithTitle:(id)a3 subtitle:(id)a4 predictionReason:(id)a5 preferredLayoutConfigs:(id)a6 allowedOnLockscreen:(BOOL)a7 allowedOnHomeScreen:(BOOL)a8 allowedOnSpotlight:(BOOL)a9 shouldClearOnEngagement:(BOOL)a10 predictionReasons:(unint64_t)a11 contextStartDate:(id)a12 contextEndDate:(id)a13
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v34 = a12;
  v23 = a13;
  v35.receiver = self;
  v35.super_class = ATXProactiveSuggestionUISpecification;
  v24 = [(ATXProactiveSuggestionUISpecification *)&v35 init];
  if (v24)
  {
    v25 = [v19 copy];
    title = v24->_title;
    v24->_title = v25;

    v27 = [v20 copy];
    subtitle = v24->_subtitle;
    v24->_subtitle = v27;

    v29 = [v21 copy];
    reason = v24->_reason;
    v24->_reason = v29;

    v31 = [v22 copy];
    preferredLayoutConfigs = v24->_preferredLayoutConfigs;
    v24->_preferredLayoutConfigs = v31;

    v24->_allowedOnLockscreen = a7;
    v24->_allowedOnHomeScreen = a8;
    v24->_allowedOnSpotlight = a9;
    v24->_shouldClearOnEngagement = a10;
    v24->_predictionReasons = a11;
    objc_storeStrong(&v24->_contextStartDate, a12);
    objc_storeStrong(&v24->_contextEndDate, a13);
  }

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [ATXProactiveSuggestionUISpecification allocWithZone:a3];
  v5 = [(NSString *)self->_title copy];
  v6 = [(NSString *)self->_subtitle copy];
  v7 = [(NSString *)self->_reason copy];
  v8 = [(NSArray *)self->_preferredLayoutConfigs copy];
  LOWORD(v11) = *&self->_allowedOnSpotlight;
  v9 = [(ATXProactiveSuggestionUISpecification *)v4 initWithTitle:v5 subtitle:v6 predictionReason:v7 preferredLayoutConfigs:v8 allowedOnLockscreen:self->_allowedOnLockscreen allowedOnHomeScreen:self->_allowedOnHomeScreen allowedOnSpotlight:v11 shouldClearOnEngagement:self->_predictionReasons predictionReasons:self->_contextStartDate contextStartDate:self->_contextEndDate contextEndDate:?];

  return v9;
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
      v6 = self->_title;
      v7 = v6;
      if (v6 == v5->_title)
      {
      }

      else
      {
        v8 = [(NSString *)v6 isEqual:?];

        if ((v8 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v10 = self->_subtitle;
      v11 = v10;
      if (v10 == v5->_subtitle)
      {
      }

      else
      {
        v12 = [(NSString *)v10 isEqual:?];

        if ((v12 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v13 = self->_reason;
      v14 = v13;
      if (v13 == v5->_reason)
      {
      }

      else
      {
        v15 = [(NSString *)v13 isEqual:?];

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v16 = self->_preferredLayoutConfigs;
      v17 = v16;
      if (v16 == v5->_preferredLayoutConfigs)
      {
      }

      else
      {
        v18 = [(NSArray *)v16 isEqual:?];

        if ((v18 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      if (self->_allowedOnLockscreen != [(ATXProactiveSuggestionUISpecification *)v5 allowedOnLockscreen]|| self->_allowedOnHomeScreen != [(ATXProactiveSuggestionUISpecification *)v5 allowedOnHomeScreen]|| self->_allowedOnSpotlight != [(ATXProactiveSuggestionUISpecification *)v5 allowedOnSpotlight]|| self->_shouldClearOnEngagement != [(ATXProactiveSuggestionUISpecification *)v5 shouldClearOnEngagement]|| [(ATXProactiveSuggestionUISpecification *)v5 predictionReasons]!= self->_predictionReasons)
      {
        goto LABEL_28;
      }

      v19 = self->_contextStartDate;
      v20 = v19;
      if (v19 == v5->_contextStartDate)
      {
      }

      else
      {
        v21 = [(NSDate *)v19 isEqual:?];

        if ((v21 & 1) == 0)
        {
LABEL_28:
          v9 = 0;
LABEL_29:

          goto LABEL_30;
        }
      }

      v23 = self->_contextEndDate;
      v24 = v23;
      if (v23 == v5->_contextEndDate)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSDate *)v23 isEqual:?];
      }

      goto LABEL_29;
    }

    v9 = 0;
  }

LABEL_30:

  return v9;
}

- (id)encodeAsProto
{
  v2 = [(ATXProactiveSuggestionUISpecification *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXProactiveSuggestionUISpecification)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBProactiveSuggestionUISpecification alloc] initWithData:v4];

    self = [(ATXProactiveSuggestionUISpecification *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (ATXProactiveSuggestionUISpecification)initWithProto:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = objc_alloc(MEMORY[0x1E695DF70]);
      v7 = [(ATXPBProactiveSuggestionUISpecification *)v5 preferredLayoutConfigs];
      v8 = [v6 initWithCapacity:{objc_msgSend(v7, "count")}];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v9 = [(ATXPBProactiveSuggestionUISpecification *)v5 preferredLayoutConfigs];
      v10 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v30;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v30 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [[ATXProactiveSuggestionLayoutConfig alloc] initWithProto:*(*(&v29 + 1) + 8 * i)];
            [v8 addObject:v14];
          }

          v11 = [v9 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v11);
      }

      v28 = [(ATXPBProactiveSuggestionUISpecification *)v5 title];
      v25 = [(ATXPBProactiveSuggestionUISpecification *)v5 subtitle];
      v15 = [(ATXPBProactiveSuggestionUISpecification *)v5 reason];
      v27 = [(ATXPBProactiveSuggestionUISpecification *)v5 allowedOnLockscreen];
      v26 = [(ATXPBProactiveSuggestionUISpecification *)v5 allowedOnHomeScreen];
      v16 = [(ATXPBProactiveSuggestionUISpecification *)v5 allowedOnSpotlight];
      v17 = [(ATXPBProactiveSuggestionUISpecification *)v5 shouldClearOnEngagement];
      v18 = [(ATXPBProactiveSuggestionUISpecification *)v5 predictionReasons];
      if ([(ATXPBProactiveSuggestionUISpecification *)v5 hasContextStartDate])
      {
        v19 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:-[ATXPBProactiveSuggestionUISpecification contextStartDate](v5)];
      }

      else
      {
        v19 = 0;
      }

      if ([(ATXPBProactiveSuggestionUISpecification *)v5 hasContextEndDate])
      {
        v21 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:-[ATXPBProactiveSuggestionUISpecification contextEndDate](v5)];
      }

      else
      {
        v21 = 0;
      }

      BYTE1(v24) = v17;
      LOBYTE(v24) = v16;
      self = [(ATXProactiveSuggestionUISpecification *)self initWithTitle:v28 subtitle:v25 predictionReason:v15 preferredLayoutConfigs:v8 allowedOnLockscreen:v27 allowedOnHomeScreen:v26 allowedOnSpotlight:v24 shouldClearOnEngagement:v18 predictionReasons:v19 contextStartDate:v21 contextEndDate:?];

      v20 = self;
    }

    else
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [ATXProactiveSuggestionUISpecification initWithProto:];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v20;
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

- (BOOL)checkAndReportDecodingFailureIfNeededForBOOL:(BOOL)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
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
  v5 = [(ATXProactiveSuggestionUISpecification *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXProactiveSuggestionUISpecification)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionUISpecification *)self initWithProtoData:v5];
  return v6;
}

- (id)jsonRawData
{
  v33 = *MEMORY[0x1E69E9840];
  v16 = @"title";
  v17 = @"subtitle";
  reason = @"nil";
  v24 = vbslq_s8(vceqzq_s64(*&self->_title), vdupq_n_s64(@"nil"), *&self->_title);
  if (self->_reason)
  {
    reason = self->_reason;
  }

  v25 = reason;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{self->_allowedOnLockscreen, v16, v17, @"reason", @"allowedOnLockscreen"}];
  v26 = v4;
  v18 = @"allowedOnHomeScreen";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowedOnHomeScreen];
  v27 = v5;
  v19 = @"allowedOnSpotlight";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowedOnSpotlight];
  v28 = v6;
  v20 = @"shouldClearOnEngagement";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldClearOnEngagement];
  v29 = v7;
  v21 = @"predictionReasons";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_predictionReasons];
  v30 = v8;
  v22 = @"contextStartDate";
  v9 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_contextStartDate timeIntervalSinceReferenceDate];
  v10 = [v9 numberWithDouble:?];
  v31 = v10;
  v23 = @"contextEndDate";
  v11 = MEMORY[0x1E696AD98];
  [(NSDate *)self->_contextEndDate timeIntervalSinceReferenceDate];
  v12 = [v11 numberWithDouble:?];
  v32 = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v16 count:10];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)initWithProto:.cold.1()
{
  OUTLINED_FUNCTION_4_3();
  v12 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_class();
  NSStringFromClass(v1);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_5_1();
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1(&dword_1DEFC4000, v4, v5, "Unable to construct class %@ from ProtoBuf object Protobuf object was of class: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

@end