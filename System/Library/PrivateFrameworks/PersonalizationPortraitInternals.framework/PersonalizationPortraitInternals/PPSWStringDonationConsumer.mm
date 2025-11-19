@interface PPSWStringDonationConsumer
- (PPSWStringDonationConsumer)initWithTopicStore:(id)a3 entityStore:(id)a4 locationStore:(id)a5 entityDissector:(id)a6 topicDissector:(id)a7;
- (PPSWStringDonationConsumer)initWithTopicStore:(id)a3 entityStore:(id)a4 locationStore:(id)a5 writebackDissector:(id)a6 entityDissector:(id)a7 topicDissector:(id)a8;
- (void)consumeWithDonation:(PPSWStringDonation *)a3 completionHandler:(id)a4;
@end

@implementation PPSWStringDonationConsumer

- (PPSWStringDonationConsumer)initWithTopicStore:(id)a3 entityStore:(id)a4 locationStore:(id)a5 entityDissector:(id)a6 topicDissector:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  return StringDonationConsumer.init(topicStore:entityStore:locationStore:entityDissector:topicDissector:)(a3, a4, a5, a6, a7);
}

- (void)consumeWithDonation:(PPSWStringDonation *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_23227313C(&unk_232417F08, v7);
}

- (PPSWStringDonationConsumer)initWithTopicStore:(id)a3 entityStore:(id)a4 locationStore:(id)a5 writebackDissector:(id)a6 entityDissector:(id)a7 topicDissector:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  sub_23227324C();
}

@end