@interface WTSmartReplyConfiguration
- (WTSmartReplyConfiguration)initWithCoder:(id)coder;
- (WTSmartReplyConfiguration)initWithInputContextHistory:(id)history;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WTSmartReplyConfiguration

- (WTSmartReplyConfiguration)initWithInputContextHistory:(id)history
{
  historyCopy = history;
  v9.receiver = self;
  v9.super_class = WTSmartReplyConfiguration;
  v6 = [(WTSmartReplyConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputContextHistory, history);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  baseResponse = [(WTSmartReplyConfiguration *)self baseResponse];

  if (baseResponse)
  {
    baseResponse2 = [(WTSmartReplyConfiguration *)self baseResponse];
    [coderCopy encodeObject:baseResponse2 forKey:@"BaseResponseKey"];
  }

  entryPoint = [(WTSmartReplyConfiguration *)self entryPoint];

  if (entryPoint)
  {
    entryPoint2 = [(WTSmartReplyConfiguration *)self entryPoint];
    [coderCopy encodeObject:entryPoint2 forKey:@"SelectedEntryKey"];
  }

  inputContextHistory = [(WTSmartReplyConfiguration *)self inputContextHistory];

  v9 = coderCopy;
  if (inputContextHistory)
  {
    inputContextHistory2 = [(WTSmartReplyConfiguration *)self inputContextHistory];
    [coderCopy encodeObject:inputContextHistory2 forKey:@"InputContextHistoryKey"];

    v9 = coderCopy;
  }
}

- (WTSmartReplyConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = WTSmartReplyConfiguration;
  v5 = [(WTSmartReplyConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"BaseResponseKey"];
    baseResponse = v5->_baseResponse;
    v5->_baseResponse = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SelectedEntryKey"];
    entryPoint = v5->_entryPoint;
    v5->_entryPoint = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InputContextHistoryKey"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v10;
  }

  return v5;
}

@end