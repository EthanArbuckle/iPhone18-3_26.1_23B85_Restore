@interface _TUIGeneratorResultAccumulatorPolicy
+ (id)defaultPolicy;
+ (id)policyForContext:(id)a3 enabledCandidateSources:(id)a4;
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

+ (id)policyForContext:(id)a3 enabledCandidateSources:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[_TUIGeneratorResultAccumulatorPolicy defaultPolicy];
  v8 = [v6 containsObject:&unk_1F03D8E40];
  v9 = 6.0;
  if ((v8 & 1) != 0 || (v10 = [v6 containsObject:{&unk_1F03D8E58, 6.0}], v9 = 3.0, v10))
  {
    [v7 setAccumulatorTimeout:v9];
  }

  v11 = [v5 keyboardState];
  v12 = [v11 documentState];
  v13 = [v12 documentIsEmpty];

  v14 = 1.5;
  if (v13)
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