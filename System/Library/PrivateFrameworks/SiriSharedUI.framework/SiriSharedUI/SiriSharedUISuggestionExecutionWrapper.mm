@interface SiriSharedUISuggestionExecutionWrapper
- (SiriSharedUISuggestionExecutionWrapper)initWithInvocationText:(id)text displayText:(id)displayText encodedToolInvocationData:(id)data suggestionRequestType:(int64_t)type;
@end

@implementation SiriSharedUISuggestionExecutionWrapper

- (SiriSharedUISuggestionExecutionWrapper)initWithInvocationText:(id)text displayText:(id)displayText encodedToolInvocationData:(id)data suggestionRequestType:(int64_t)type
{
  textCopy = text;
  displayTextCopy = displayText;
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = SiriSharedUISuggestionExecutionWrapper;
  v14 = [(SiriSharedUISuggestionExecutionWrapper *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invocationText, text);
    objc_storeStrong(&v15->_displayText, displayText);
    objc_storeStrong(&v15->_encodedToolInvocationData, data);
    v15->_suggestionRequestType = type;
  }

  return v15;
}

@end