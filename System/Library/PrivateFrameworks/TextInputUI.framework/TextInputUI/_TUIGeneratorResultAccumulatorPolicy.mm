@interface _TUIGeneratorResultAccumulatorPolicy
+ (id)defaultPolicy;
+ (id)policyForContext:(id)context enabledCandidateSources:(id)sources;
- (_TUIGeneratorResultAccumulatorPolicy)init;
@end

@implementation _TUIGeneratorResultAccumulatorPolicy

- (_TUIGeneratorResultAccumulatorPolicy)init
{
  v3.receiver = self;
  v3.super_class = _TUIGeneratorResultAccumulatorPolicy;
  result = [(_TUIGeneratorResultAccumulatorPolicy *)&v3 init];
  if (result)
  {
    *&result->_accumulatorTimeout = xmmword_1900C0FD0;
  }

  return result;
}

+ (id)policyForContext:(id)context enabledCandidateSources:(id)sources
{
  contextCopy = context;
  sourcesCopy = sources;
  v7 = +[_TUIGeneratorResultAccumulatorPolicy defaultPolicy];
  v8 = [sourcesCopy containsObject:&unk_1F03D8E40];
  v9 = 6.0;
  if ((v8 & 1) != 0 || (v10 = [sourcesCopy containsObject:{&unk_1F03D8E58, 6.0}], v9 = 3.0, v10))
  {
    [v7 setAccumulatorTimeout:v9];
  }

  keyboardState = [contextCopy keyboardState];
  documentState = [keyboardState documentState];
  documentIsEmpty = [documentState documentIsEmpty];

  v14 = 1.5;
  if (documentIsEmpty)
  {
    v14 = 0.0;
  }

  [v7 setDelayedGenerationInterval:v14];

  return v7;
}

+ (id)defaultPolicy
{
  v2 = objc_alloc_init(_TUIGeneratorResultAccumulatorPolicy);

  return v2;
}

@end