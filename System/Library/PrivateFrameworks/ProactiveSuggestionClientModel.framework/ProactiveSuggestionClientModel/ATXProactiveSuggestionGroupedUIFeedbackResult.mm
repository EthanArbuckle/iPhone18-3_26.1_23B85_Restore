@interface ATXProactiveSuggestionGroupedUIFeedbackResult
- (ATXProactiveSuggestionGroupedUIFeedbackResult)init;
- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithCoder:(id)coder;
- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProto:(id)proto;
- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSDate)endDateOfLastSession;
- (NSDate)startDateOfFirstSession;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithIntermediateSessionResults:(id)results;
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

- (void)updateWithIntermediateSessionResults:(id)results
{
  resultsCopy = results;
  proto = self->_proto;
  engagedSuggestions = [resultsCopy engagedSuggestions];
  -[ATXPBProactiveSuggestionGroupedUIFeedbackResult setNumEngagedSuggestions:](proto, "setNumEngagedSuggestions:", -[ATXPBProactiveSuggestionGroupedUIFeedbackResult numEngagedSuggestions](proto, "numEngagedSuggestions") + [engagedSuggestions count]);

  v6 = self->_proto;
  rejectedSuggestions = [resultsCopy rejectedSuggestions];
  -[ATXPBProactiveSuggestionGroupedUIFeedbackResult setNumRejectedSuggestions:](v6, "setNumRejectedSuggestions:", -[ATXPBProactiveSuggestionGroupedUIFeedbackResult numRejectedSuggestions](v6, "numRejectedSuggestions") + [rejectedSuggestions count]);

  v8 = self->_proto;
  shownSuggestions = [resultsCopy shownSuggestions];
  v10 = [shownSuggestions count];
  engagedSuggestions2 = [resultsCopy engagedSuggestions];
  v12 = [engagedSuggestions2 count];
  rejectedSuggestions2 = [resultsCopy rejectedSuggestions];
  -[ATXPBProactiveSuggestionGroupedUIFeedbackResult setNumAbandonedSuggestions:](v8, "setNumAbandonedSuggestions:", v10 - (v12 + [rejectedSuggestions2 count]) + -[ATXPBProactiveSuggestionGroupedUIFeedbackResult numAbandonedSuggestions](v8, "numAbandonedSuggestions"));

  engagementType = [resultsCopy engagementType];
  if (engagementType)
  {
    if (engagementType == 1)
    {
      [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto setNumSessionsWithRejectedSuggestions:[(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto numSessionsWithRejectedSuggestions]+ 1];
    }

    else if (engagementType == 2)
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
    session = [resultsCopy session];
    sessionStartDate = [session sessionStartDate];
    [sessionStartDate timeIntervalSinceReferenceDate];
    [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto setStartDateOfFirstSessionInSeconds:?];
  }

  if (![(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto hasEndDateOfLastSessionInSeconds])
  {
    goto LABEL_11;
  }

  [(ATXPBProactiveSuggestionGroupedUIFeedbackResult *)self->_proto endDateOfLastSessionInSeconds];
  v18 = v17;
  session2 = [resultsCopy session];
  sessionEndDate = [session2 sessionEndDate];
  [sessionEndDate timeIntervalSinceReferenceDate];
  v22 = v21;

  if (v18 < v22)
  {
LABEL_11:
    session3 = [resultsCopy session];
    sessionEndDate2 = [session3 sessionEndDate];
    [sessionEndDate2 timeIntervalSinceReferenceDate];
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

- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_9:
    selfCopy = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = __atxlog_handle_blending();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self initWithProto:protoCopy, v9];
    }

    goto LABEL_9;
  }

  v11.receiver = self;
  v11.super_class = ATXProactiveSuggestionGroupedUIFeedbackResult;
  v6 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proto, proto);
  }

  self = v7;
  selfCopy = self;
LABEL_10:

  return selfCopy;
}

- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBProactiveSuggestionGroupedUIFeedbackResult alloc] initWithData:dataCopy];

    self = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXProactiveSuggestionGroupedUIFeedbackResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self initWithProtoData:v5];
  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self isEqualToATXProactiveSuggestionGroupedUIFeedbackResult:v5];
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