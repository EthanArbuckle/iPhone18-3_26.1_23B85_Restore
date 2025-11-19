@interface TUISmartReplyResponse
- (NSError)error;
- (NSNumber)modelOutputTokenCount;
- (NSNumber)modelPromptTokenCount;
- (NSNumber)responseFromCache;
- (NSString)threadIdentifier;
- (TCSmartRepliesResponse)srResponse;
- (_TtC11TextInputUI21TUISmartReplyResponse)init;
- (_TtC11TextInputUI21TUISmartReplyResponse)initWithSrResponse:(id)a3 threadIdentifier:(id)a4 type:(int64_t)a5 contentWarning:(int64_t)a6 error:(id)a7 modelInfoString:(id)a8 userFeedbackInputString:(id)a9 responseFromCache:(id)a10 modelPromptTokenCount:(id)a11 modelOutputTokenCount:(id)a12;
- (int64_t)contentWarning;
- (int64_t)type;
- (void)printValues;
- (void)setContentWarning:(int64_t)a3;
- (void)setThreadIdentifier:(id)a3;
- (void)setType:(int64_t)a3;
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

- (void)setThreadIdentifier:(id)a3
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

- (void)setType:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_type;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (int64_t)contentWarning
{
  v3 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setContentWarning:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC11TextInputUI21TUISmartReplyResponse_contentWarning;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (_TtC11TextInputUI21TUISmartReplyResponse)initWithSrResponse:(id)a3 threadIdentifier:(id)a4 type:(int64_t)a5 contentWarning:(int64_t)a6 error:(id)a7 modelInfoString:(id)a8 userFeedbackInputString:(id)a9 responseFromCache:(id)a10 modelPromptTokenCount:(id)a11 modelOutputTokenCount:(id)a12
{
  v15 = a9;
  v16 = sub_1900B1610();
  v31 = v17;
  v32 = v16;
  if (a8)
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

  if (a9)
  {
    v28 = sub_1900B1610();
    v15 = v20;
  }

  else
  {
    v28 = 0;
  }

  v27 = a3;
  v21 = a7;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v25 = sub_18FFFFF78(a3, v32, v31, a5, a6, a7, v30, v29, v28, v15, a10, a11, a12);

  return v25;
}

- (void)printValues
{
  v2 = self;
  sub_18FFFF9EC();
}

- (_TtC11TextInputUI21TUISmartReplyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end