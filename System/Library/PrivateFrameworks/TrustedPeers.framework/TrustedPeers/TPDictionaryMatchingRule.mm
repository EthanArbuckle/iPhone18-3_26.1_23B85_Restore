@interface TPDictionaryMatchingRule
+ (id)andMatch:(id)a3;
+ (id)falseMatch;
+ (id)fieldExists:(id)a3;
+ (id)fieldMatch:(id)a3 fieldRegex:(id)a4;
+ (id)notMatch:(id)a3;
+ (id)orMatch:(id)a3;
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

+ (id)orMatch:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:2];
  v5 = [v3 mutableCopy];

  [(TPPBDictionaryMatchingRule *)v4 setOrs:v5];

  return v4;
}

+ (id)andMatch:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:1];
  v5 = [v3 mutableCopy];

  [(TPPBDictionaryMatchingRule *)v4 setAnds:v5];

  return v4;
}

+ (id)notMatch:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:3];
  [(TPPBDictionaryMatchingRule *)v4 setNot:v3];

  return v4;
}

+ (id)fieldMatch:(id)a3 fieldRegex:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v7 setType:4];
  v8 = objc_alloc_init(TPPBDictionaryMatchingRuleFieldRegexMatch);
  [(TPPBDictionaryMatchingRule *)v7 setMatch:v8];

  v9 = [(TPPBDictionaryMatchingRule *)v7 match];
  [v9 setFieldName:v6];

  v10 = [(TPPBDictionaryMatchingRule *)v7 match];
  [v10 setRegex:v5];

  return v7;
}

+ (id)fieldExists:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(TPPBDictionaryMatchingRule);
  [(TPPBDictionaryMatchingRule *)v4 setType:5];
  v5 = objc_alloc_init(TPPBDictionaryMatchingRuleFieldExists);
  [(TPPBDictionaryMatchingRule *)v4 setExists:v5];

  v6 = [(TPPBDictionaryMatchingRule *)v4 exists];
  [v6 setFieldName:v3];

  return v4;
}

@end