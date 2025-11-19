@interface PeopleClient
- (PeopleClient)init;
- (void)sendFamilyAskToBuyIMessageWithRequestID:(id)a3 completion:(id)a4;
@end

@implementation PeopleClient

- (void)sendFamilyAskToBuyIMessageWithRequestID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_22F0D0CAC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  _sSo12PeopleClientC0A0E26sendFamilyAskToBuyIMessage13withRequestID10completionySS_ySb_s5Error_pSgtctF_0(v6, v8, sub_22F0C374C, v9);

  sub_22F0D00CC();
}

- (PeopleClient)init
{
  v3.receiver = self;
  v3.super_class = PeopleClient;
  return [(PeopleClient *)&v3 init];
}

@end