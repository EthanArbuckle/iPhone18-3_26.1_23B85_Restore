@interface DirectReportNetworkManager
- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler;
@end

@implementation DirectReportNetworkManager

- (void)URLSession:(NSURLSession *)session didReceiveChallenge:(NSURLAuthenticationChallenge *)challenge completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = session;
  v14[3] = challenge;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_1BC75BE10();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BC76DB30;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BC76DB40;
  v17[5] = v16;
  sessionCopy = session;
  challengeCopy = challenge;
  selfCopy = self;
  sub_1BC6AD080(0, 0, v12, &unk_1BC76DB50, v17);
}

@end