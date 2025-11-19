@interface PGTitleGeneratorTypeMatching
+ (id)typeMatchingWithType:(int64_t)a3 eventEvaluationBlock:(id)a4;
- (PGTitleGeneratorTypeMatching)initWithType:(int64_t)a3 eventEvaluationBlock:(id)a4;
@end

@implementation PGTitleGeneratorTypeMatching

- (PGTitleGeneratorTypeMatching)initWithType:(int64_t)a3 eventEvaluationBlock:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = PGTitleGeneratorTypeMatching;
  v7 = [(PGTitleGeneratorTypeMatching *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = a3;
    v9 = [v6 copy];
    eventEvaluationBlock = v8->_eventEvaluationBlock;
    v8->_eventEvaluationBlock = v9;
  }

  return v8;
}

+ (id)typeMatchingWithType:(int64_t)a3 eventEvaluationBlock:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithType:a3 eventEvaluationBlock:v6];

  return v7;
}

@end