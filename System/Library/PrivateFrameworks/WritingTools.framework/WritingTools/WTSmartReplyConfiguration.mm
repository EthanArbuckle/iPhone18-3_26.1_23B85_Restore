@interface WTSmartReplyConfiguration
- (WTSmartReplyConfiguration)initWithCoder:(id)a3;
- (WTSmartReplyConfiguration)initWithInputContextHistory:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WTSmartReplyConfiguration

- (WTSmartReplyConfiguration)initWithInputContextHistory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = WTSmartReplyConfiguration;
  v6 = [(WTSmartReplyConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_inputContextHistory, a3);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(WTSmartReplyConfiguration *)self baseResponse];

  if (v4)
  {
    v5 = [(WTSmartReplyConfiguration *)self baseResponse];
    [v11 encodeObject:v5 forKey:@"BaseResponseKey"];
  }

  v6 = [(WTSmartReplyConfiguration *)self entryPoint];

  if (v6)
  {
    v7 = [(WTSmartReplyConfiguration *)self entryPoint];
    [v11 encodeObject:v7 forKey:@"SelectedEntryKey"];
  }

  v8 = [(WTSmartReplyConfiguration *)self inputContextHistory];

  v9 = v11;
  if (v8)
  {
    v10 = [(WTSmartReplyConfiguration *)self inputContextHistory];
    [v11 encodeObject:v10 forKey:@"InputContextHistoryKey"];

    v9 = v11;
  }
}

- (WTSmartReplyConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = WTSmartReplyConfiguration;
  v5 = [(WTSmartReplyConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"BaseResponseKey"];
    baseResponse = v5->_baseResponse;
    v5->_baseResponse = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SelectedEntryKey"];
    entryPoint = v5->_entryPoint;
    v5->_entryPoint = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InputContextHistoryKey"];
    inputContextHistory = v5->_inputContextHistory;
    v5->_inputContextHistory = v10;
  }

  return v5;
}

@end