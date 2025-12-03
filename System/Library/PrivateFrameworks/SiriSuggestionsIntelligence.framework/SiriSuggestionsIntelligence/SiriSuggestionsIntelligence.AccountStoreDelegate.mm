@interface SiriSuggestionsIntelligence.AccountStoreDelegate
- (id)accountsForAccountManager:(id)manager;
@end

@implementation SiriSuggestionsIntelligence.AccountStoreDelegate

- (id)accountsForAccountManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1DA3A3B28();

  type metadata accessor for AIDAServiceType(0);
  sub_1DA3A6990(0, &unk_1EE102D00, 0x1E6959A28);
  sub_1DA3A6B88(&qword_1EE100FA8, type metadata accessor for AIDAServiceType);
  v6 = sub_1DA421AB4();

  return v6;
}

@end