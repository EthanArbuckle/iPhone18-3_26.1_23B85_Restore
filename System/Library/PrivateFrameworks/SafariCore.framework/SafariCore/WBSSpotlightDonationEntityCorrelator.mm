@interface WBSSpotlightDonationEntityCorrelator
- (WBSSpotlightDonationEntityCorrelator)init;
- (id)initIfAvailable;
- (void)correlateBookmarkEntityForItem:(id)a3 withUUIDString:(id)a4;
- (void)correlateHistoryEntityForItem:(id)a3;
- (void)correlateReadingListEntityForItem:(id)a3 withUUIDString:(id)a4;
- (void)correlateTabEntityForItem:(id)a3;
@end

@implementation WBSSpotlightDonationEntityCorrelator

- (id)initIfAvailable
{
  if (MEMORY[0x1E6964E88])
  {

    return [(WBSSpotlightDonationEntityCorrelator *)self init];
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

- (WBSSpotlightDonationEntityCorrelator)init
{
  v3.receiver = self;
  v3.super_class = WBSSpotlightDonationEntityCorrelator;
  return [(WBSSpotlightDonationEntityCorrelator *)&v3 init];
}

- (void)correlateHistoryEntityForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B855A77C(v4);
}

- (void)correlateBookmarkEntityForItem:(id)a3 withUUIDString:(id)a4
{
  sub_1B8565DA8();
  v10 = a3;
  v6 = self;
  v7 = [v10 attributeSet];
  v8 = [v7 title];

  if (v8)
  {
    sub_1B8565DA8();

    v9 = [v10 attributeSet];
    sub_1B855A52C(MEMORY[0x1E69E7CC0]);
    sub_1B8566258();

    v6 = v9;
  }
}

- (void)correlateReadingListEntityForItem:(id)a3 withUUIDString:(id)a4
{
  sub_1B8565DA8();
  v6 = a3;
  v7 = self;
  sub_1B855A63C(v6);
}

- (void)correlateTabEntityForItem:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B855A77C(v4);
}

@end