@interface INRulesetResponse
- (INRulesetResponse)initWithHTTPResponse:(id)response data:(id)data;
@end

@implementation INRulesetResponse

- (INRulesetResponse)initWithHTTPResponse:(id)response data:(id)data
{
  responseCopy = response;
  v12.receiver = self;
  v12.super_class = INRulesetResponse;
  v7 = [(INRulesetResponse *)&v12 initWithHTTPResponse:responseCopy data:data bodyIsPlist:0];
  if (v7)
  {
    if ([responseCopy statusCode] == 200)
    {
      v8 = [CERuleConfiguration alloc];
      v9 = [v8 initWithDictionary:*&v7->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
      ruleConfiguration = v7->_ruleConfiguration;
      v7->_ruleConfiguration = v9;
    }

    else
    {
      ruleConfiguration = _INLogSystem();
      if (os_log_type_enabled(ruleConfiguration, OS_LOG_TYPE_ERROR))
      {
        sub_1000339EC(v7, responseCopy, ruleConfiguration);
      }
    }
  }

  return v7;
}

@end