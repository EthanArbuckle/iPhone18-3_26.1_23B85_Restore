@interface RawUnifiedStream
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)identifier storeConfig:(id)config;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)identifier storeConfig:(id)config eventDataClass:(Class)class;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)identifier storeConfig:(id)config;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)identifier storeConfig:(id)config eventDataClass:(Class)class;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithStreamIdentifier:(id)identifier storeConfig:(id)config;
@end

@implementation RawUnifiedStream

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)identifier storeConfig:(id)config eventDataClass:(Class)class
{
  sub_1D992B624();
  configCopy = config;
  RawUnifiedStream.init(privateStreamIdentifier:storeConfig:eventDataClass:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithStreamIdentifier:(id)identifier storeConfig:(id)config
{
  sub_1D992B624();
  configCopy = config;
  RawUnifiedStream.init(streamIdentifier:storeConfig:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)identifier storeConfig:(id)config
{
  sub_1D992B624();
  configCopy = config;
  RawUnifiedStream.init(restrictedStreamIdentifier:storeConfig:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)identifier storeConfig:(id)config eventDataClass:(Class)class
{
  sub_1D992B624();
  configCopy = config;
  RawUnifiedStream.init(restrictedStreamIdentifier:storeConfig:eventDataClass:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)identifier storeConfig:(id)config
{
  sub_1D992B624();
  configCopy = config;
  RawUnifiedStream.init(privateStreamIdentifier:storeConfig:)();
}

@end