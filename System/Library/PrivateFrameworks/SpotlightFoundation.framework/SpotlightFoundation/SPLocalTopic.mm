@interface SPLocalTopic
+ (id)localTopicWithContactName:(id)a3 contactIdentifier:(id)a4;
+ (id)localTopicWithContactName:(id)a3 contactIdentifier:(id)a4 detailText:(id)a5;
+ (id)localTopicWithContactName:(id)a3 emails:(id)a4 phones:(id)a5 detailText:(id)a6;
+ (id)localTopicWithDictionaryResult:(id)a3;
+ (id)localTopicWithTitle:(id)a3;
+ (id)localTopicWithTopicIdentifier:(id)a3;
+ (id)proactiveTopicWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 detailText:(id)a6;
- (SPLocalTopic)initWithContactName:(id)a3 contactIdentifier:(id)a4 detailText:(id)a5;
- (SPLocalTopic)initWithContactName:(id)a3 emails:(id)a4 phones:(id)a5 detailText:(id)a6;
- (SPLocalTopic)initWithDictionaryResult:(id)a3;
- (SPLocalTopic)initWithTopicIdentifier:(id)a3;
@end

@implementation SPLocalTopic

+ (id)proactiveTopicWithIdentifier:(id)a3 bundleIdentifier:(id)a4 protectionClass:(id)a5 detailText:(id)a6
{
  v6 = topicIdentifierWithIdentifierAndDetail(a3, a4, a5, a6, 3, 0);
  v7 = [SPLocalTopic localTopicWithTopicIdentifier:v6];

  return v7;
}

+ (id)localTopicWithTopicIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[SPLocalTopic alloc] initWithTopicIdentifier:v3];

  return v4;
}

+ (id)localTopicWithContactName:(id)a3 emails:(id)a4 phones:(id)a5 detailText:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[SPLocalTopic alloc] initWithContactName:v12 emails:v11 phones:v10 detailText:v9];

  return v13;
}

+ (id)localTopicWithContactName:(id)a3 contactIdentifier:(id)a4 detailText:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[SPLocalTopic alloc] initWithContactName:v9 contactIdentifier:v8 detailText:v7];

  return v10;
}

+ (id)localTopicWithContactName:(id)a3 contactIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SPLocalTopic alloc] initWithContactName:v6 contactIdentifier:v5 detailText:0];

  return v7;
}

+ (id)localTopicWithTitle:(id)a3
{
  v3 = a3;
  v4 = [[SPLocalTopic alloc] initWithTitle:v3 type:16 score:&unk_287C3DF40 isCached:0];

  return v4;
}

+ (id)localTopicWithDictionaryResult:(id)a3
{
  v3 = a3;
  v4 = [[SPLocalTopic alloc] initWithDictionaryResult:v3];

  return v4;
}

- (SPLocalTopic)initWithContactName:(id)a3 emails:(id)a4 phones:(id)a5 detailText:(id)a6
{
  v7 = topicIdentifierWithContactInfoAndDetail(a3, a4, a5, a6, 0x26u, 0);
  v10.receiver = self;
  v10.super_class = SPLocalTopic;
  v8 = [(SFLocalTopic *)&v10 initWithIdentifier:v7];

  return v8;
}

- (SPLocalTopic)initWithContactName:(id)a3 contactIdentifier:(id)a4 detailText:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (![v9 length] || v8 && (objc_msgSend(v9, "isEqualToString:", v8) & 1) != 0)
  {
    v11 = topicIdentifierWithContactInfoAndDetail(v8, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], v10, 0x26u, 0);
  }

  else
  {
    v11 = topicIdentifierWithContactIdentifierAndDetail(v8, v9, v10, 32, 0);
  }

  v12 = v11;
  v15.receiver = self;
  v15.super_class = SPLocalTopic;
  v13 = [(SFLocalTopic *)&v15 initWithIdentifier:v11];

  return v13;
}

- (SPLocalTopic)initWithDictionaryResult:(id)a3
{
  v4 = MEMORY[0x277D4C690];
  v5 = a3;
  v6 = [v5 completion];
  v7 = [v4 textWithString:v6];
  [v5 setTitle:v7];

  [v5 setSectionBundleIdentifier:@"com.apple.searchd.recent.dictionary"];
  v8 = [v5 identifier];
  v11.receiver = self;
  v11.super_class = SPLocalTopic;
  v9 = [(SFLocalTopic *)&v11 initWithResult:v5 identifier:v8];

  return v9;
}

- (SPLocalTopic)initWithTopicIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = SPLocalTopic;
  return [(SFLocalTopic *)&v4 initWithIdentifier:a3];
}

@end