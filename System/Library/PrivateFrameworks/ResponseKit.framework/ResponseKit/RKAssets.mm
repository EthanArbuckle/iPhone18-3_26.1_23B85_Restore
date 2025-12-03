@interface RKAssets
+ (id)alternativeInversions;
+ (id)appreciationKeywords;
+ (id)categoryKeywordMap;
+ (id)contractedResponses;
+ (id)fixedPhrases;
+ (id)localizedStrings;
+ (id)momentsPhrases;
+ (id)polarTagKeywords;
+ (id)sensitiveSubjectRegularExpressionPatterns;
+ (id)synonyms;
- (RKAssets)init;
- (RKAssets)initWithPlistURL:(id)l;
@end

@implementation RKAssets

- (RKAssets)init
{
  v5.receiver = self;
  v5.super_class = RKAssets;
  v2 = [(RKAssets *)&v5 init];
  if (v2)
  {
    v3 = plistURL;
    plistURL = 0;
  }

  return v2;
}

- (RKAssets)initWithPlistURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = RKAssets;
  v6 = [(RKAssets *)&v8 init];
  if (v6)
  {
    objc_storeStrong(&plistURL, l);
  }

  return v6;
}

+ (id)categoryKeywordMap
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"categoryClassifiersByLanguageAndScript"];

  return v3;
}

+ (id)fixedPhrases
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"fixedPhrasesByLanguageAndScript"];

  return v3;
}

+ (id)momentsPhrases
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"fullScreenMomentsKeywordsByLanguageAndScript"];

  return v3;
}

+ (id)synonyms
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"synonymsByLanguageID"];

  return v3;
}

+ (id)sensitiveSubjectRegularExpressionPatterns
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"sensitiveSubjectRegularExpressionPatternsByLanguageCode"];

  return v3;
}

+ (id)polarTagKeywords
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"polarTagKeywordsByLanguageCode"];

  return v3;
}

+ (id)contractedResponses
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"contractedResponseByLanguageCode"];

  return v3;
}

+ (id)alternativeInversions
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"alternativeInversionsByLanguageCode"];

  return v3;
}

+ (id)localizedStrings
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"localizedStringsByLanguageID"];

  return v3;
}

+ (id)appreciationKeywords
{
  constantClasses = [self constantClasses];
  v3 = [constantClasses objectForKeyedSubscript:@"appreciationKeywordsByLanguageCode"];

  return v3;
}

@end