@interface WBSPasswordWarningHideMarker
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (WBSPasswordWarningHideMarker)initWithDictionaryRepresentation:(id)a3;
- (WBSPasswordWarningHideMarker)initWithIssueTypes:(unint64_t)a3;
@end

@implementation WBSPasswordWarningHideMarker

- (WBSPasswordWarningHideMarker)initWithIssueTypes:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = WBSPasswordWarningHideMarker;
  v4 = [(WBSPasswordWarningHideMarker *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_issueTypes = a3;
    v6 = v4;
  }

  return v5;
}

- (WBSPasswordWarningHideMarker)initWithDictionaryRepresentation:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"issueTypes"];
  if (v4)
  {
    v5 = -[WBSPasswordWarningHideMarker initWithIssueTypes:]([WBSPasswordWarningHideMarker alloc], "initWithIssueTypes:", [v4 unsignedIntegerValue]);
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXKeychain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [WBSPasswordWarningHideMarker initWithDictionaryRepresentation:v6];
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      issueTypes = self->_issueTypes;
      v6 = issueTypes == [(WBSPasswordWarningHideMarker *)v4 issueTypes];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"issueTypes";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_issueTypes];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end