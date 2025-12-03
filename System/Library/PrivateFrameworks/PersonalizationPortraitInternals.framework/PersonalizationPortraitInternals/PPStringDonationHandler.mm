@interface PPStringDonationHandler
- (PPStringDonationHandler)init;
- (PPStringDonationHandler)initWithTopicStore:(id)store entityStore:(id)entityStore topicDissector:(id)dissector entityDissector:(id)entityDissector;
- (void)donateLabeledStrings:(id)strings bundleId:(id)id groupId:(id)groupId documentId:(id)documentId completion:(id)completion;
@end

@implementation PPStringDonationHandler

- (void)donateLabeledStrings:(id)strings bundleId:(id)id groupId:(id)groupId documentId:(id)documentId completion:(id)completion
{
  completionCopy = completion;
  documentIdCopy = documentId;
  groupIdCopy = groupId;
  idCopy = id;
  stringsCopy = strings;
  v17 = [[PPSWStringDonation alloc] initWithLabeledStrings:stringsCopy bundleId:idCopy groupId:groupIdCopy documentId:documentIdCopy];

  consumer = self->_consumer;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __87__PPStringDonationHandler_donateLabeledStrings_bundleId_groupId_documentId_completion___block_invoke;
  v20[3] = &unk_278975D98;
  v21 = completionCopy;
  v19 = completionCopy;
  [(PPSWStringDonationConsumer *)consumer consumeWithDonation:v17 completionHandler:v20];
}

- (PPStringDonationHandler)initWithTopicStore:(id)store entityStore:(id)entityStore topicDissector:(id)dissector entityDissector:(id)entityDissector
{
  storeCopy = store;
  entityStoreCopy = entityStore;
  dissectorCopy = dissector;
  entityDissectorCopy = entityDissector;
  v18.receiver = self;
  v18.super_class = PPStringDonationHandler;
  v14 = [(PPStringDonationHandler *)&v18 init];
  if (v14)
  {
    v15 = [[PPSWStringDonationConsumer alloc] initWithTopicStore:storeCopy entityStore:entityStoreCopy locationStore:0 entityDissector:entityDissectorCopy topicDissector:dissectorCopy];
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