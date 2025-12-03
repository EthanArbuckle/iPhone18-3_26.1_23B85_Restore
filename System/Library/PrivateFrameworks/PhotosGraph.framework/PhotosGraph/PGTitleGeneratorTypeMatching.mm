@interface PGTitleGeneratorTypeMatching
+ (id)typeMatchingWithType:(int64_t)type eventEvaluationBlock:(id)block;
- (PGTitleGeneratorTypeMatching)initWithType:(int64_t)type eventEvaluationBlock:(id)block;
@end

@implementation PGTitleGeneratorTypeMatching

- (PGTitleGeneratorTypeMatching)initWithType:(int64_t)type eventEvaluationBlock:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = PGTitleGeneratorTypeMatching;
  v7 = [(PGTitleGeneratorTypeMatching *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [blockCopy copy];
    eventEvaluationBlock = v8->_eventEvaluationBlock;
    v8->_eventEvaluationBlock = v9;
  }

  return v8;
}

+ (id)typeMatchingWithType:(int64_t)type eventEvaluationBlock:(id)block
{
  blockCopy = block;
  v7 = [[self alloc] initWithType:type eventEvaluationBlock:blockCopy];

  return v7;
}

@end