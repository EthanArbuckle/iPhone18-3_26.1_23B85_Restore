@interface SiriSharedUISuggestionExecutionWrapper
- (SiriSharedUISuggestionExecutionWrapper)initWithInvocationText:(id)a3 displayText:(id)a4 encodedToolInvocationData:(id)a5 suggestionRequestType:(int64_t)a6;
@end

@implementation SiriSharedUISuggestionExecutionWrapper

- (SiriSharedUISuggestionExecutionWrapper)initWithInvocationText:(id)a3 displayText:(id)a4 encodedToolInvocationData:(id)a5 suggestionRequestType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = SiriSharedUISuggestionExecutionWrapper;
  v14 = [(SiriSharedUISuggestionExecutionWrapper *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invocationText, a3);
    objc_storeStrong(&v15->_displayText, a4);
    objc_storeStrong(&v15->_encodedToolInvocationData, a5);
    v15->_suggestionRequestType = a6;
  }

  return v15;
}

@end