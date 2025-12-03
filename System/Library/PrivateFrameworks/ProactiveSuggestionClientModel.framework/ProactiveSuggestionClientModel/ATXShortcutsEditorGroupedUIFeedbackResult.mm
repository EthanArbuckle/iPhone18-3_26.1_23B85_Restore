@interface ATXShortcutsEditorGroupedUIFeedbackResult
- (ATXShortcutsEditorGroupedUIFeedbackResult)init;
- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithCoder:(id)coder;
- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProto:(id)proto;
- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXContextualActionsGroupedUIFeedbackResult:(id)result;
- (BOOL)isValid;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXShortcutsEditorGroupedUIFeedbackResult

- (ATXShortcutsEditorGroupedUIFeedbackResult)init
{
  v6.receiver = self;
  v6.super_class = ATXShortcutsEditorGroupedUIFeedbackResult;
  v2 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    proto = v2->_proto;
    v2->_proto = v3;
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  jsonDict = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self jsonDict];
  v5 = [v3 initWithFormat:@"%@", jsonDict];

  return v5;
}

- (BOOL)isValid
{
  startDateOfFirstSession = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self startDateOfFirstSession];
  if (startDateOfFirstSession)
  {
    endDateOfLastSession = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self endDateOfLastSession];
    v5 = endDateOfLastSession != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)encodeAsProto
{
  v6.receiver = self;
  v6.super_class = ATXShortcutsEditorGroupedUIFeedbackResult;
  proto = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v6 proto];
  [(ATXPBContextualActionsGroupedUIFeedbackResult *)self->_proto setGroupedUIFeedbackResults:proto];

  data = [(ATXPBContextualActionsGroupedUIFeedbackResult *)self->_proto data];

  return data;
}

- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProto:(id)proto
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
  v11.super_class = ATXShortcutsEditorGroupedUIFeedbackResult;
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

- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBContextualActionsGroupedUIFeedbackResult alloc] initWithData:dataCopy];

    self = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self initWithProto:v5];
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
  v6.receiver = self;
  v6.super_class = ATXShortcutsEditorGroupedUIFeedbackResult;
  proto = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v6 proto];
  [(ATXPBContextualActionsGroupedUIFeedbackResult *)self->_proto setGroupedUIFeedbackResults:proto];

  proto = self->_proto;

  return proto;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self initWithProtoData:v5];
  return v6;
}

- (unint64_t)hash
{
  proto = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self proto];
  v3 = [proto hash];

  return v3;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsEditorGroupedUIFeedbackResult *)self isEqualToATXContextualActionsGroupedUIFeedbackResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXContextualActionsGroupedUIFeedbackResult:(id)result
{
  resultCopy = result;
  proto = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self proto];
  proto2 = [resultCopy proto];

  LOBYTE(resultCopy) = [proto isEqual:proto2];
  return resultCopy;
}

- (id)jsonDict
{
  proto = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self proto];
  dictionaryRepresentation = [proto dictionaryRepresentation];

  return dictionaryRepresentation;
}

@end