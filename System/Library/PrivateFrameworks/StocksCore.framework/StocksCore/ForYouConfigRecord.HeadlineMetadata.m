@interface ForYouConfigRecord.HeadlineMetadata
- (NSDate)displayDate;
- (_TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata)init;
@end

@implementation ForYouConfigRecord.HeadlineMetadata

- (NSDate)displayDate
{
  sub_1DAA492B4();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA89A58(self + OBJC_IVAR____TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata_displayDate, v6, sub_1DAA492B4);
  v7 = sub_1DACB7CC4();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1DACB7C04();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (_TtCV10StocksCore18ForYouConfigRecordP33_FB30AEA7B56282916E4430A3993C597516HeadlineMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end