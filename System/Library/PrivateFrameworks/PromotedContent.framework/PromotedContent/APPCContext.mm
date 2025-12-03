@interface APPCContext
- (NSDate)prefetchTimestamp;
- (NSString)debugDescription;
- (id)promotedContentInterstitialWithSize:(CGSize)size ready:(id)ready;
- (id)promotedContentVideoWithSize:(CGSize)size placeholderReplacement:(id)replacement;
- (id)promotedContentWithType:(int64_t)type size:(CGSize)size placeholderReplacement:(id)replacement;
- (id)promotedContentWithoutFetchWithType:(int64_t)type size:(CGSize)size;
- (int64_t)hash;
- (void)nativePromotedContentWithSize:(CGSize)size contentFetched:(id)fetched;
- (void)prefetchPromotedContentWithRequests:(id)requests;
- (void)promotedContentNativeWithSize:(CGSize)size contentFetched:(id)fetched;
- (void)registerDenylistEvaluator:(id)evaluator;
- (void)registerHandlerForAllMetricsWithClosure:(id)closure;
- (void)removeHandler;
- (void)setPrefetchTimestamp:(id)timestamp;
@end

@implementation APPCContext

- (int64_t)hash
{
  selfCopy = self;
  v3 = Context.hash.getter();

  return v3;
}

- (void)registerDenylistEvaluator:(id)evaluator
{
  v4 = _Block_copy(evaluator);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___APPCContext_denylistEvaluator);
  v7 = *(self + OBJC_IVAR___APPCContext_denylistEvaluator);
  v8 = *(self + OBJC_IVAR___APPCContext_denylistEvaluator + 8);
  *v6 = sub_1C1AFB3A0;
  v6[1] = v5;
  selfCopy = self;
  sub_1C1AC0530(v7);
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_1C1B22CA0();

  v3 = sub_1C1B94D78();

  return v3;
}

- (NSDate)prefetchTimestamp
{
  v3 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  v7 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1AA7E30(self + v7, v6, &qword_1EBF07F50, &qword_1C1B9A590);
  v8 = sub_1C1B94588();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1C1B94538();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (void)setPrefetchTimestamp:(id)timestamp
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (timestamp)
  {
    sub_1C1B94558();
    v9 = sub_1C1B94588();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1C1B94588();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  v11 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  selfCopy = self;
  sub_1C1AABE90(v8, self + v11);
  swift_endAccess();
}

- (void)prefetchPromotedContentWithRequests:(id)requests
{
  type metadata accessor for DesiredPlacement();
  v4 = sub_1C1B94EC8();
  selfCopy = self;
  sub_1C1B28898(v4);
}

- (id)promotedContentVideoWithSize:(CGSize)size placeholderReplacement:(id)replacement
{
  height = size.height;
  width = size.width;
  v7 = _Block_copy(replacement);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  selfCopy = self;
  v10 = sub_1C1B2CC2C(3, sub_1C1B2B918, v8, width, height);

  return v10;
}

- (id)promotedContentWithType:(int64_t)type size:(CGSize)size placeholderReplacement:(id)replacement
{
  height = size.height;
  width = size.width;
  v9 = _Block_copy(replacement);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  selfCopy = self;
  v12 = sub_1C1B2CC2C(type, sub_1C1AFB3A0, v10, width, height);

  return v12;
}

- (id)promotedContentWithoutFetchWithType:(int64_t)type size:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  v8 = sub_1C1B28D40(type, width, height);

  return v8;
}

- (id)promotedContentInterstitialWithSize:(CGSize)size ready:(id)ready
{
  height = size.height;
  width = size.width;
  v7 = _Block_copy(ready);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  selfCopy = self;
  v10 = Context.promotedContentInterstitial(size:ready:)(sub_1C1B2B918, v8, width, height);

  return v10;
}

- (void)nativePromotedContentWithSize:(CGSize)size contentFetched:(id)fetched
{
  height = size.height;
  width = size.width;
  v7 = _Block_copy(fetched);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_1C1B2B918;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C1B225C4;
  v11[3] = &unk_1F4151E28;
  v9 = _Block_copy(v11);
  selfCopy = self;

  [(APPCContext *)selfCopy promotedContentNativeWithSize:v9 contentFetched:width, height];

  _Block_release(v9);
}

- (void)promotedContentNativeWithSize:(CGSize)size contentFetched:(id)fetched
{
  height = size.height;
  width = size.width;
  v7 = _Block_copy(fetched);
  _Block_copy(v7);
  selfCopy = self;
  sub_1C1B2B588(selfCopy, v7, width, height);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)registerHandlerForAllMetricsWithClosure:(id)closure
{
  v4 = _Block_copy(closure);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  Context.registerHandlerForAllMetrics(closure:)(sub_1C1B192F0, v5);
}

- (void)removeHandler
{
  selfCopy = self;
  Context.removeHandler()();
}

@end