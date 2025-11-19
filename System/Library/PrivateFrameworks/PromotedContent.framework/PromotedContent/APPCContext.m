@interface APPCContext
- (NSDate)prefetchTimestamp;
- (NSString)debugDescription;
- (id)promotedContentInterstitialWithSize:(CGSize)a3 ready:(id)a4;
- (id)promotedContentVideoWithSize:(CGSize)a3 placeholderReplacement:(id)a4;
- (id)promotedContentWithType:(int64_t)a3 size:(CGSize)a4 placeholderReplacement:(id)a5;
- (id)promotedContentWithoutFetchWithType:(int64_t)a3 size:(CGSize)a4;
- (int64_t)hash;
- (void)nativePromotedContentWithSize:(CGSize)a3 contentFetched:(id)a4;
- (void)prefetchPromotedContentWithRequests:(id)a3;
- (void)promotedContentNativeWithSize:(CGSize)a3 contentFetched:(id)a4;
- (void)registerDenylistEvaluator:(id)a3;
- (void)registerHandlerForAllMetricsWithClosure:(id)a3;
- (void)removeHandler;
- (void)setPrefetchTimestamp:(id)a3;
@end

@implementation APPCContext

- (int64_t)hash
{
  v2 = self;
  v3 = Context.hash.getter();

  return v3;
}

- (void)registerDenylistEvaluator:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR___APPCContext_denylistEvaluator);
  v7 = *(self + OBJC_IVAR___APPCContext_denylistEvaluator);
  v8 = *(self + OBJC_IVAR___APPCContext_denylistEvaluator + 8);
  *v6 = sub_1C1AFB3A0;
  v6[1] = v5;
  v9 = self;
  sub_1C1AC0530(v7);
}

- (NSString)debugDescription
{
  v2 = self;
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

- (void)setPrefetchTimestamp:(id)a3
{
  v5 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v13 - v7;
  if (a3)
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
  v12 = self;
  sub_1C1AABE90(v8, self + v11);
  swift_endAccess();
}

- (void)prefetchPromotedContentWithRequests:(id)a3
{
  type metadata accessor for DesiredPlacement();
  v4 = sub_1C1B94EC8();
  v5 = self;
  sub_1C1B28898(v4);
}

- (id)promotedContentVideoWithSize:(CGSize)a3 placeholderReplacement:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = self;
  v10 = sub_1C1B2CC2C(3, sub_1C1B2B918, v8, width, height);

  return v10;
}

- (id)promotedContentWithType:(int64_t)a3 size:(CGSize)a4 placeholderReplacement:(id)a5
{
  height = a4.height;
  width = a4.width;
  v9 = _Block_copy(a5);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = self;
  v12 = sub_1C1B2CC2C(a3, sub_1C1AFB3A0, v10, width, height);

  return v12;
}

- (id)promotedContentWithoutFetchWithType:(int64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = self;
  v8 = sub_1C1B28D40(a3, width, height);

  return v8;
}

- (id)promotedContentInterstitialWithSize:(CGSize)a3 ready:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = self;
  v10 = Context.promotedContentInterstitial(size:ready:)(sub_1C1B2B918, v8, width, height);

  return v10;
}

- (void)nativePromotedContentWithSize:(CGSize)a3 contentFetched:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v11[4] = sub_1C1B2B918;
  v11[5] = v8;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1C1B225C4;
  v11[3] = &unk_1F4151E28;
  v9 = _Block_copy(v11);
  v10 = self;

  [(APPCContext *)v10 promotedContentNativeWithSize:v9 contentFetched:width, height];

  _Block_release(v9);
}

- (void)promotedContentNativeWithSize:(CGSize)a3 contentFetched:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = _Block_copy(a4);
  _Block_copy(v7);
  v8 = self;
  sub_1C1B2B588(v8, v7, width, height);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)registerHandlerForAllMetricsWithClosure:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  Context.registerHandlerForAllMetrics(closure:)(sub_1C1B192F0, v5);
}

- (void)removeHandler
{
  v2 = self;
  Context.removeHandler()();
}

@end