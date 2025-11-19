@interface RawUnifiedStream
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)a3 storeConfig:(id)a4;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)a3 storeConfig:(id)a4 eventDataClass:(Class)a5;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)a3 storeConfig:(id)a4;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)a3 storeConfig:(id)a4 eventDataClass:(Class)a5;
- (_TtC13SiriAnalytics16RawUnifiedStream)initWithStreamIdentifier:(id)a3 storeConfig:(id)a4;
@end

@implementation RawUnifiedStream

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)a3 storeConfig:(id)a4 eventDataClass:(Class)a5
{
  sub_1D992B624();
  v6 = a4;
  RawUnifiedStream.init(privateStreamIdentifier:storeConfig:eventDataClass:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithStreamIdentifier:(id)a3 storeConfig:(id)a4
{
  sub_1D992B624();
  v5 = a4;
  RawUnifiedStream.init(streamIdentifier:storeConfig:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)a3 storeConfig:(id)a4
{
  sub_1D992B624();
  v5 = a4;
  RawUnifiedStream.init(restrictedStreamIdentifier:storeConfig:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithRestrictedStreamIdentifier:(id)a3 storeConfig:(id)a4 eventDataClass:(Class)a5
{
  sub_1D992B624();
  v6 = a4;
  RawUnifiedStream.init(restrictedStreamIdentifier:storeConfig:eventDataClass:)();
}

- (_TtC13SiriAnalytics16RawUnifiedStream)initWithPrivateStreamIdentifier:(id)a3 storeConfig:(id)a4
{
  sub_1D992B624();
  v5 = a4;
  RawUnifiedStream.init(privateStreamIdentifier:storeConfig:)();
}

@end