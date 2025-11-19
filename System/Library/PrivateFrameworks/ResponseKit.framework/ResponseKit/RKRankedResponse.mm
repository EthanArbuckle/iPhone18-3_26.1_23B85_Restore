@interface RKRankedResponse
- (RKRankedResponse)initWithResponse:(id)a3 inputMethod:(unint64_t)a4 score:(double)a5;
@end

@implementation RKRankedResponse

- (RKRankedResponse)initWithResponse:(id)a3 inputMethod:(unint64_t)a4 score:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = RKRankedResponse;
  v10 = [(RKRankedResponse *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_response, a3);
    v11->_inputMethod = a4;
    v11->_score = a5;
  }

  return v11;
}

@end