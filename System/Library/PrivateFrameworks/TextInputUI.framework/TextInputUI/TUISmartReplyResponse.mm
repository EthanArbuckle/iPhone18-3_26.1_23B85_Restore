@interface TUISmartReplyResponse
- (NSError)error;
- (NSNumber)modelOutputTokenCount;
- (NSNumber)modelPromptTokenCount;
- (NSNumber)responseFromCache;
- (NSString)threadIdentifier;
- (TCSmartRepliesResponse)srResponse;
- (_TtC11TextInputUI21TUISmartReplyResponse)init;
- (_TtC11TextInputUI21TUISmartReplyResponse)initWithSrResponse:(id)response threadIdentifier:(id)identifier type:(int64_t)type contentWarning:(int64_t)warning error:(id)error modelInfoString:(id)string userFeedbackInputString:(id)inputString responseFromCache:(id)self0 modelPromptTokenCount:(id)self1 modelOutputTokenCount:(id)self2;
- (int64_t)contentWarning;
- (int64_t)type;
- (void)printValues;
- (void)setContentWarning:(int64_t)warning;
- (void)setThreadIdentifier:(id)identifier;
- (void)setType:(int64_t)type;
@end

@implementation TUISmartReplyResponse

- (TCSmartRepliesResponse)srResponse
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_srResponse;
  swift_beginAccess();
  return *(self + v3);
}

- (NSError)error
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_error;
  swift_beginAccess();
  return *(self + v3);
}

- (NSString)threadIdentifier
{
  swift_beginAccess();

  v2 = sub_1900B15E0();

  return v2;
}

- (void)setThreadIdentifier:(id)identifier
{
  v4 = sub_1900B1610();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_threadIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)type
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(int64_t)type
{
  v5 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (int64_t)contentWarning
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentWarning:(int64_t)warning
{
  v5 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  swift_beginAccess();
  *(self + v5) = warning;
}

- (NSNumber)responseFromCache
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_responseFromCache;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)modelPromptTokenCount
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelPromptTokenCount;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)modelOutputTokenCount
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_modelOutputTokenCount;
  swift_beginAccess();
  return *(self + v3);
}

- (_TtC11TextInputUI21TUISmartReplyResponse)initWithSrResponse:(id)response threadIdentifier:(id)identifier type:(int64_t)type contentWarning:(int64_t)warning error:(id)error modelInfoString:(id)string userFeedbackInputString:(id)inputString responseFromCache:(id)self0 modelPromptTokenCount:(id)self1 modelOutputTokenCount:(id)self2
{
  inputStringCopy = inputString;
  v16 = sub_1900B1610();
  v31 = v17;
  v32 = v16;
  if (string)
  {
    v18 = sub_1900B1610();
    v29 = v19;
    v30 = v18;
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  if (inputString)
  {
    v28 = sub_1900B1610();
    inputStringCopy = v20;
  }

  else
  {
    v28 = 0;
  }

  responseCopy = response;
  errorCopy = error;
  cacheCopy = cache;
  countCopy = count;
  tokenCountCopy = tokenCount;
  v25 = sub_18FFFFF78(response, v32, v31, type, warning, error, v30, v29, v28, inputStringCopy, cache, count, tokenCount);

  return v25;
}

- (void)printValues
{
  selfCopy = self;
  sub_18FFFF9EC();
}

- (_TtC11TextInputUI21TUISmartReplyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end