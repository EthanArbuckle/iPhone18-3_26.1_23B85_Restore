@interface SPLocalTopic
+ (id)localTopicWithContactName:(id)name contactIdentifier:(id)identifier;
+ (id)localTopicWithContactName:(id)name contactIdentifier:(id)identifier detailText:(id)text;
+ (id)localTopicWithContactName:(id)name emails:(id)emails phones:(id)phones detailText:(id)text;
+ (id)localTopicWithDictionaryResult:(id)result;
+ (id)localTopicWithTitle:(id)title;
+ (id)localTopicWithTopicIdentifier:(id)identifier;
+ (id)proactiveTopicWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class detailText:(id)text;
- (SPLocalTopic)initWithContactName:(id)name contactIdentifier:(id)identifier detailText:(id)text;
- (SPLocalTopic)initWithContactName:(id)name emails:(id)emails phones:(id)phones detailText:(id)text;
- (SPLocalTopic)initWithDictionaryResult:(id)result;
- (SPLocalTopic)initWithTopicIdentifier:(id)identifier;
@end

@implementation SPLocalTopic

+ (id)proactiveTopicWithIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier protectionClass:(id)class detailText:(id)text
{
  v6 = topicIdentifierWithIdentifierAndDetail(identifier, bundleIdentifier, class, text, 3, 0);
  v7 = [SPLocalTopic localTopicWithTopicIdentifier:v6];

  return v7;
}

+ (id)localTopicWithTopicIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[SPLocalTopic alloc] initWithTopicIdentifier:identifierCopy];

  return v4;
}

+ (id)localTopicWithContactName:(id)name emails:(id)emails phones:(id)phones detailText:(id)text
{
  textCopy = text;
  phonesCopy = phones;
  emailsCopy = emails;
  nameCopy = name;
  v13 = [[SPLocalTopic alloc] initWithContactName:nameCopy emails:emailsCopy phones:phonesCopy detailText:textCopy];

  return v13;
}

+ (id)localTopicWithContactName:(id)name contactIdentifier:(id)identifier detailText:(id)text
{
  textCopy = text;
  identifierCopy = identifier;
  nameCopy = name;
  v10 = [[SPLocalTopic alloc] initWithContactName:nameCopy contactIdentifier:identifierCopy detailText:textCopy];

  return v10;
}

+ (id)localTopicWithContactName:(id)name contactIdentifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  v7 = [[SPLocalTopic alloc] initWithContactName:nameCopy contactIdentifier:identifierCopy detailText:0];

  return v7;
}

+ (id)localTopicWithTitle:(id)title
{
  titleCopy = title;
  v4 = [[SPLocalTopic alloc] initWithTitle:titleCopy type:16 score:&unk_287C3DF40 isCached:0];

  return v4;
}

+ (id)localTopicWithDictionaryResult:(id)result
{
  resultCopy = result;
  v4 = [[SPLocalTopic alloc] initWithDictionaryResult:resultCopy];

  return v4;
}

- (SPLocalTopic)initWithContactName:(id)name emails:(id)emails phones:(id)phones detailText:(id)text
{
  v7 = topicIdentifierWithContactInfoAndDetail(name, emails, phones, text, 0x26u, 0);
  v10.receiver = self;
  v10.super_class = SPLocalTopic;
  v8 = [(SFLocalTopic *)&v10 initWithIdentifier:v7];

  return v8;
}

- (SPLocalTopic)initWithContactName:(id)name contactIdentifier:(id)identifier detailText:(id)text
{
  nameCopy = name;
  identifierCopy = identifier;
  textCopy = text;
  if (![identifierCopy length] || nameCopy && (objc_msgSend(identifierCopy, "isEqualToString:", nameCopy) & 1) != 0)
  {
    v11 = topicIdentifierWithContactInfoAndDetail(nameCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8], textCopy, 0x26u, 0);
  }

  else
  {
    v11 = topicIdentifierWithContactIdentifierAndDetail(nameCopy, identifierCopy, textCopy, 32, 0);
  }

  v12 = v11;
  v15.receiver = self;
  v15.super_class = SPLocalTopic;
  v13 = [(SFLocalTopic *)&v15 initWithIdentifier:v11];

  return v13;
}

- (SPLocalTopic)initWithDictionaryResult:(id)result
{
  v4 = MEMORY[0x277D4C690];
  resultCopy = result;
  completion = [resultCopy completion];
  v7 = [v4 textWithString:completion];
  [resultCopy setTitle:v7];

  [resultCopy setSectionBundleIdentifier:@"com.apple.searchd.recent.dictionary"];
  identifier = [resultCopy identifier];
  v11.receiver = self;
  v11.super_class = SPLocalTopic;
  v9 = [(SFLocalTopic *)&v11 initWithResult:resultCopy identifier:identifier];

  return v9;
}

- (SPLocalTopic)initWithTopicIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = SPLocalTopic;
  return [(SFLocalTopic *)&v4 initWithIdentifier:identifier];
}

@end