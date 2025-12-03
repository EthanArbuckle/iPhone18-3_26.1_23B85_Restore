@interface PPSWStringDonationConsumer
- (PPSWStringDonationConsumer)initWithTopicStore:(id)store entityStore:(id)entityStore locationStore:(id)locationStore entityDissector:(id)dissector topicDissector:(id)topicDissector;
- (PPSWStringDonationConsumer)initWithTopicStore:(id)store entityStore:(id)entityStore locationStore:(id)locationStore writebackDissector:(id)dissector entityDissector:(id)entityDissector topicDissector:(id)topicDissector;
- (void)consumeWithDonation:(PPSWStringDonation *)donation completionHandler:(id)handler;
@end

@implementation PPSWStringDonationConsumer

- (PPSWStringDonationConsumer)initWithTopicStore:(id)store entityStore:(id)entityStore locationStore:(id)locationStore entityDissector:(id)dissector topicDissector:(id)topicDissector
{
  storeCopy = store;
  entityStoreCopy = entityStore;
  locationStoreCopy = locationStore;
  dissectorCopy = dissector;
  topicDissectorCopy = topicDissector;
  return StringDonationConsumer.init(topicStore:entityStore:locationStore:entityDissector:topicDissector:)(store, entityStore, locationStore, dissector, topicDissector);
}

- (void)consumeWithDonation:(PPSWStringDonation *)donation completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = donation;
  v7[3] = v6;
  v7[4] = self;
  donationCopy = donation;
  selfCopy = self;

  sub_23227313C(&unk_232417F08, v7);
}

- (PPSWStringDonationConsumer)initWithTopicStore:(id)store entityStore:(id)entityStore locationStore:(id)locationStore writebackDissector:(id)dissector entityDissector:(id)entityDissector topicDissector:(id)topicDissector
{
  storeCopy = store;
  entityStoreCopy = entityStore;
  locationStoreCopy = locationStore;
  dissectorCopy = dissector;
  entityDissectorCopy = entityDissector;
  topicDissectorCopy = topicDissector;
  sub_23227324C();
}

@end