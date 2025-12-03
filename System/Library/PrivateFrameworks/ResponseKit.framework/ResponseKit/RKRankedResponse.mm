@interface RKRankedResponse
- (RKRankedResponse)initWithResponse:(id)response inputMethod:(unint64_t)method score:(double)score;
@end

@implementation RKRankedResponse

- (RKRankedResponse)initWithResponse:(id)response inputMethod:(unint64_t)method score:(double)score
{
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = RKRankedResponse;
  v10 = [(RKRankedResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_response, response);
    v11->_inputMethod = method;
    v11->_score = score;
  }

  return v11;
}

@end