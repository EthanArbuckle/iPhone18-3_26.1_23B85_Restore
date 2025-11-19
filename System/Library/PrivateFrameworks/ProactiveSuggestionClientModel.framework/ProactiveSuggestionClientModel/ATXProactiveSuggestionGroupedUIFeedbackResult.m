@interface ATXProactiveSuggestionGroupedUIFeedbackResult
- (ATXProactiveSuggestionGroupedUIFeedbackResult)init;
- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithCoder:(id)a3;
- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProto:(id)a3;
- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDate)endDateOfLastSession;
- (NSDate)startDateOfFirstSession;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithIntermediateSessionResults:(id)a3;
@end

@implementation ATXProactiveSuggestionGroupedUIFeedbackResult

- (ATXProactiveSuggestionGroupedUIFeedbackResult)init
{
  v6.receiver = self;
  v6.super_class = ATXProactiveSuggestionGroupedUIFeedbackResult;
  v2 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    proto = v2->_proto;
    v2->_proto = v3;
  }

  return v2;
}

- (void)updateWithIntermediateSessionResults:(id)a3
{
  v25 = a3;
  proto = self->_proto;
  v5 = [v25 engagedSuggestions];
  -[ATXPBProactiveSuggestionGroupedUIFeedbackResult setNumEngagedSuggestions:](proto, "setNumEngagedSuggestions:", -[ATXPBProactiveSuggestionGroupedUIFeedbackResult numEngagedSuggestions](proto, "numEngagedSuggestions") + [v5 count]);

  v6 = self->_proto;
  v7 = [v25 rejectedSuggestions];
  -[ATXPBProactiveSuggestionGroupedUIFeedbackResult setNumRejectedSuggestions:](v6, "setNumRejectedSuggestions:", -[ATXPBProactiveSuggestionGroupedUIFeedbackResult numRejectedSuggestions](v6, "numRejectedSuggestions") + [v7 count]);

  v8 = self->_proto;
  v9 = [v25 shownSuggestions];
  v10 = [v9 count];
  v11 = [v25 engagedSuggestions];
  v12 = [v11 count];
  v13 = [v25 rejectedSuggestions];
  -[ATXPBProactiveSuggestionGroupedUIFeedbackResult setNumAbandonedSuggestions:](v8, "setNumAbandonedSuggestions:", v10 - (v12 + [v13 count]) + -[ATXPBProactiveSuggestionGroupedUIFeedbackResult numAbandonedSuggestions](v8, "numAbandonedSuggestions"));

  v14 = [v25 engagementType];
  if (v14)
  {
    if (v14 == 1)
    {
      [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto setNumSessionsWithRejectedSuggestions:[(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto numSessionsWithRejectedSuggestions]+ 1];
    }

    else if (v14 == 2)
    {
      [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto setNumSessionsWithEngagedSuggestions:[(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto numSessionsWithEngagedSuggestions]+ 1];
    }
  }

  else
  {
    [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto setNumSessionsWithAbandonedSuggestions:[(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto numSessionsWithAbandonedSuggestions]+ 1];
  }

  if (![(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto hasStartDateOfFirstSessionInSeconds])
  {
    v15 = [v25 session];
    v16 = [v15 sessionStartDate];
    [v16 timeIntervalSinceReferenceDate];
    [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto setStartDateOfFirstSessionInSeconds:?];
  }

  if (![(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto hasEndDateOfLastSessionInSeconds])
  {
    goto LABEL_11;
  }

  [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto endDateOfLastSessionInSeconds];
  v18 = v17;
  v19 = [v25 session];
  v20 = [v19 sessionEndDate];
  [v20 timeIntervalSinceReferenceDate];
  v22 = v21;

  if (v18 < v22)
  {
LABEL_11:
    v23 = [v25 session];
    v24 = [v23 sessionEndDate];
    [v24 timeIntervalSinceReferenceDate];
    [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto setEndDateOfLastSessionInSeconds:?];
  }
}

- (NSDate)startDateOfFirstSession
{
  if ([(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto hasStartDateOfFirstSessionInSeconds])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF00]);
    [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto startDateOfFirstSessionInSeconds];
    v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)endDateOfLastSession
{
  if ([(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto hasEndDateOfLastSessionInSeconds])
  {
    v3 = objc_alloc(MEMORY[0x1E695DF00]);
    [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto endDateOfLastSessionInSeconds];
    v4 = [v3 initWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProto:(id)a3
{
  v5 = a3;
  if (!v5)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self initWithProto:v5, v9];
    }

    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = ATXProactiveSuggestionGroupedUIFeedbackResult;
  v6 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proto, a3);
  }

  self = v7;
  v8 = self;
LABEL_10:

  return v8;
}

- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBProactiveSuggestionGroupedUIFeedbackResult alloc] initWithData:v4];

    self = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self initWithProtoData:v5];
  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self isEqualToATXProactiveSuggestionGroupedUIFeedbackResult:v5];
  }

  return v6;
}

- (void)initWithProto:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138412546;
  v10 = v5;
  v11 = 2112;
  v12 = v7;
  _os_log_fault_impl(&dword_1DEFC4000, a3, OS_LOG_TYPE_FAULT, "Unable to construct class %@ from ProtoBuf object Protobuf object was of class: %@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end