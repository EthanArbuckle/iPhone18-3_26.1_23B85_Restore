@interface INRecommendationsResponse
- (INRecommendationsResponse)initWithHTTPResponse:(id)a3 data:(id)a4;
@end

@implementation INRecommendationsResponse

- (INRecommendationsResponse)initWithHTTPResponse:(id)a3 data:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = INRecommendationsResponse;
  v7 = [(INRecommendationsResponse *)&v12 initWithHTTPResponse:v6 data:a4 bodyIsPlist:0];
  if (v7)
  {
    if ([v6 statusCode] == 200)
    {
      v8 = [CEServerRecommendations alloc];
      v9 = [v8 initWithDictionary:*&v7->AAResponse_opaque[OBJC_IVAR___AAResponse__responseDictionary]];
      serverRecommendations = v7->_serverRecommendations;
      v7->_serverRecommendations = v9;
    }

    else
    {
      serverRecommendations = _INLogSystem();
      if (os_log_type_enabled(serverRecommendations, OS_LOG_TYPE_ERROR))
      {
        sub_1000339EC(v7, v6, serverRecommendations);
      }
    }
  }

  return v7;
}

@end