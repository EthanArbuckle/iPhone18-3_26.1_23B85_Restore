@interface SPProactiveTopic
+ (id)proactiveTopicWithResult:(id)a3;
@end

@implementation SPProactiveTopic

+ (id)proactiveTopicWithResult:(id)a3
{
  v3 = a3;
  v4 = [SPProactiveTopic alloc];
  v5 = [v3 identifier];
  v6 = [(SFLocalTopic *)v4 initWithResult:v3 identifier:v5];

  return v6;
}

@end