@interface TPDictionaryMatchingRule
+ (id)andMatch:(id)match;
+ (id)falseMatch;
+ (id)fieldExists:(id)exists;
+ (id)fieldMatch:(id)match fieldRegex:(id)regex;
+ (id)notMatch:(id)match;
+ (id)orMatch:(id)match;
+ (id)trueMatch;
@end

@implementation TPDictionaryMatchingRule

+ (id)falseMatch
{
  v2 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v2 setType:7];

  return v2;
}

+ (id)trueMatch
{
  v2 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v2 setType:6];

  return v2;
}

+ (id)orMatch:(id)match
{
  matchCopy = match;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:2];
  v5 = [matchCopy mutableCopy];

  [(TPPBDictionaryMatchingRule *)v4 setOrs:v5];

  return v4;
}

+ (id)andMatch:(id)match
{
  matchCopy = match;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:1];
  v5 = [matchCopy mutableCopy];

  [(TPPBDictionaryMatchingRule *)v4 setAnds:v5];

  return v4;
}

+ (id)notMatch:(id)match
{
  matchCopy = match;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:3];
  [(TPPBDictionaryMatchingRule *)v4 setNot:matchCopy];

  return v4;
}

+ (id)fieldMatch:(id)match fieldRegex:(id)regex
{
  regexCopy = regex;
  matchCopy = match;
  v7 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v7 setType:4];
  v8 = objc_alloc_init(TPPBDictionaryMatchingRuleFieldRegexMatch);
  [(TPPBDictionaryMatchingRule *)v7 setMatch:v8];

  match = [(TPPBDictionaryMatchingRule *)v7 match];
  [match setFieldName:matchCopy];

  match2 = [(TPPBDictionaryMatchingRule *)v7 match];
  [match2 setRegex:regexCopy];

  return v7;
}

+ (id)fieldExists:(id)exists
{
  existsCopy = exists;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:5];
  v5 = objc_alloc_init(TPPBDictionaryMatchingRuleFieldExists);
  [(TPPBDictionaryMatchingRule *)v4 setExists:v5];

  exists = [(TPPBDictionaryMatchingRule *)v4 exists];
  [exists setFieldName:existsCopy];

  return v4;
}

@end