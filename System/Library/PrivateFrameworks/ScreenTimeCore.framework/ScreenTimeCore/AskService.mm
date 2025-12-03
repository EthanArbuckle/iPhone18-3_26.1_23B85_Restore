@interface AskService
- (void)approveExceptionForRequest:(STAskForTimeRequest *)request completionHandler:(id)handler;
- (void)handleAnswer:(int64_t)answer requestIdentifier:(NSUUID *)identifier timeApproved:(NSNumber *)approved completionHandler:(id)handler;
- (void)respondToAskForTimeRequestWithIdentifier:(NSString *)identifier answer:(int64_t)answer completionHandler:(id)handler;
- (void)sendAskForTimeRequest:(STAskForTimeRequest *)request completionHandler:(id)handler;
@end

@implementation AskService

- (void)approveExceptionForRequest:(STAskForTimeRequest *)request completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100143AF8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100143B00;
  v15[5] = v14;
  requestCopy = request;

  sub_10010D4C0(0, 0, v10, &unk_100143B08, v15);
}

- (void)handleAnswer:(int64_t)answer requestIdentifier:(NSUUID *)identifier timeApproved:(NSNumber *)approved completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = answer;
  v16[3] = identifier;
  v16[4] = approved;
  v16[5] = v15;
  v16[6] = self;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100143AD8;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100143AE0;
  v19[5] = v18;
  identifierCopy = identifier;
  approvedCopy = approved;

  sub_10010D4C0(0, 0, v14, &unk_100143AE8, v19);
}

- (void)respondToAskForTimeRequestWithIdentifier:(NSString *)identifier answer:(int64_t)answer completionHandler:(id)handler
{
  v9 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = identifier;
  v14[3] = answer;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100143AB8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100143AC0;
  v17[5] = v16;
  identifierCopy = identifier;

  sub_10010D4C0(0, 0, v12, &unk_100143AC8, v17);
}

- (void)sendAskForTimeRequest:(STAskForTimeRequest *)request completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100143A60;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100140550;
  v15[5] = v14;
  requestCopy = request;

  sub_10010D4C0(0, 0, v10, &unk_100140230, v15);
}

@end