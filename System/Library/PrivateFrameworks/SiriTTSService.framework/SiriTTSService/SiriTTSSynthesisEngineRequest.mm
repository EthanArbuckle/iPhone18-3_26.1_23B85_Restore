@interface SiriTTSSynthesisEngineRequest
+ (id)synthesisIssueCauseString:(int64_t)string;
- (SiriTTSSynthesisEngineRequest)init;
@end

@implementation SiriTTSSynthesisEngineRequest

- (SiriTTSSynthesisEngineRequest)init
{
  v5.receiver = self;
  v5.super_class = SiriTTSSynthesisEngineRequest;
  v2 = [(SiriTTSSynthesisEngineRequest *)&v5 init];
  text = v2->_text;
  v2->_text = &stru_1F28C4E90;

  return v2;
}

+ (id)synthesisIssueCauseString:(int64_t)string
{
  if (string > 2)
  {
    return @"UnhandledReason";
  }

  else
  {
    return off_1E7AF3830[string];
  }
}

@end