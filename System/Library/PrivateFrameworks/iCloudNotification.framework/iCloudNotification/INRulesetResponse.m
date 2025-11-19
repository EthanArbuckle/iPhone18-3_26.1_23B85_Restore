@interface INRulesetResponse
- (INRulesetResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation INRulesetResponse

- (INRulesetResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = INRulesetResponse;
  v7 = [(INRulesetResponse *)&v12 initWithHTTPResponse:v6 data:a4 bodyIsPlist:0];
  if (v7)
  {
    if ([v6 statusCode] == 200)
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
        sub_1000339EC(v7, v6, ruleConfiguration);
      }
    }
  }

  return v7;
}

@end