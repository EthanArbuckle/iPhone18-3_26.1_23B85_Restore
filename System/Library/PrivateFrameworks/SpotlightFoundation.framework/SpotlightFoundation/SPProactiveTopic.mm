@interface SPProactiveTopic
+ (id)proactiveTopicWithResult:(id)result;
@end

@implementation SPProactiveTopic

+ (id)proactiveTopicWithResult:(id)result
{
  resultCopy = result;
  v4 = [SPProactiveTopic alloc];
  identifier = [resultCopy identifier];
  v6 = [(SFLocalTopic *)v4 initWithResult:resultCopy identifier:identifier];

  return v6;
}

@end