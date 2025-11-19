@interface PPStringDonationHandler
- (PPStringDonationHandler)init;
- (PPStringDonationHandler)initWithTopicStore:(id)a3 entityStore:(id)a4 topicDissector:(id)a5 entityDissector:(id)a6;
- (void)donateLabeledStrings:(id)a3 bundleId:(id)a4 groupId:(id)a5 documentId:(id)a6 completion:(id)a7;
@end

@implementation PPStringDonationHandler

- (void)donateLabeledStrings:(id)a3 bundleId:(id)a4 groupId:(id)a5 documentId:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[PPSWStringDonation alloc] initWithLabeledStrings:v16 bundleId:v15 groupId:v14 documentId:v13];

  consumer = self->_consumer;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__PPStringDonationHandler_donateLabeledStrings_bundleId_groupId_documentId_completion___block_invoke;
  v20[3] = &unk_278975D98;
  v21 = v12;
  v19 = v12;
  [(PPSWStringDonationConsumer *)consumer consumeWithDonation:v17 completionHandler:v20];
}

- (PPStringDonationHandler)initWithTopicStore:(id)a3 entityStore:(id)a4 topicDissector:(id)a5 entityDissector:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = PPStringDonationHandler;
  v14 = [(PPStringDonationHandler *)&v18 init];
  if (v14)
  {
    v15 = [[PPSWStringDonationConsumer alloc] initWithTopicStore:v10 entityStore:v11 locationStore:0 entityDissector:v13 topicDissector:v12];
    consumer = v14->_consumer;
    v14->_consumer = v15;
  }

  return v14;
}

- (PPStringDonationHandler)init
{
  v6.receiver = self;
  v6.super_class = PPStringDonationHandler;
  v2 = [(PPStringDonationHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    consumer = v2->_consumer;
    v2->_consumer = v3;
  }

  return v2;
}

@end