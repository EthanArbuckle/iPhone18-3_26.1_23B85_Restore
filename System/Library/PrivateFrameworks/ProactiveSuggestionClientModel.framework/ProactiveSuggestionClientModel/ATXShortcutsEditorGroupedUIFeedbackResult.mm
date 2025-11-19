@interface ATXShortcutsEditorGroupedUIFeedbackResult
- (ATXShortcutsEditorGroupedUIFeedbackResult)init;
- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithCoder:(id)a3;
- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProto:(id)a3;
- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXContextualActionsGroupedUIFeedbackResult:(id)a3;
- (BOOL)isValid;
- (id)description;
- (id)encodeAsProto;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self jsonDict];
  v5 = [v3 initWithFormat:@"%@", v4];

  return v5;
}

- (BOOL)isValid
{
  v3 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self startDateOfFirstSession];
  if (v3)
  {
    v4 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)self endDateOfLastSession];
    v5 = v4 != 0;
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
  v3 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v6 proto];
  [(ATXPBContextualActionsGroupedUIFeedbackResult *)self->_proto setGroupedUIFeedbackResults:v3];

  v4 = [(ATXPBContextualActionsGroupedUIFeedbackResult *)self->_proto data];

  return v4;
}

- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProto:(id)a3
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
  v11.super_class = ATXShortcutsEditorGroupedUIFeedbackResult;
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

- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBContextualActionsGroupedUIFeedbackResult alloc] initWithData:v4];

    self = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self initWithProto:v5];
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
  v6.receiver = self;
  v6.super_class = ATXShortcutsEditorGroupedUIFeedbackResult;
  v3 = [(ATXProactiveSuggestionGroupedUIFeedbackResult *)&v6 proto];
  [(ATXPBContextualActionsGroupedUIFeedbackResult *)self->_proto setGroupedUIFeedbackResults:v3];

  proto = self->_proto;

  return proto;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXShortcutsEditorGroupedUIFeedbackResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self initWithProtoData:v5];
  return v6;
}

- (unint64_t)hash
{
  v2 = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self proto];
  v3 = [v2 hash];

  return v3;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXShortcutsEditorGroupedUIFeedbackResult *)self isEqualToATXContextualActionsGroupedUIFeedbackResult:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXContextualActionsGroupedUIFeedbackResult:(id)a3
{
  v4 = a3;
  v5 = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self proto];
  v6 = [v4 proto];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

- (id)jsonDict
{
  v2 = [(ATXShortcutsEditorGroupedUIFeedbackResult *)self proto];
  v3 = [v2 dictionaryRepresentation];

  return v3;
}

@end