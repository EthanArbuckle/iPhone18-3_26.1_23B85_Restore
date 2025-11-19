@interface TUITextComposerClientWrapper
+ (BOOL)isGMAvailableWithUseCase:(id)a3;
- (unint64_t)generateRequestToken;
- (void)cancelRequestWithToken:(unint64_t)a3 forClient:(id)a4;
- (void)requestSmartRepliesWithContext:(id)a3 inputContextHistory:(id)a4 conversationType:(int64_t)a5 smartReplyType:(int64_t)a6 candidateString:(id)a7 options:(id)a8 completion:(id)aBlock;
@end

@implementation TUITextComposerClientWrapper

- (unint64_t)generateRequestToken
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  v3 = [v2 nextToken];

  return v3;
}

+ (BOOL)isGMAvailableWithUseCase:(id)a3
{
  v3 = sub_1900B1610();
  v5 = _s11TextInputUI28TUITextComposerClientWrapperC13isGMAvailable7useCaseSbSS_tFZ_0(v3, v4);

  return v5 & 1;
}

- (void)requestSmartRepliesWithContext:(id)a3 inputContextHistory:(id)a4 conversationType:(int64_t)a5 smartReplyType:(int64_t)a6 candidateString:(id)a7 options:(id)a8 completion:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_1900B1610();
  v17 = v16;
  v18 = sub_1900B15A0();
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = a3;
  v21 = a4;
  v22 = self;
  TUITextComposerClientWrapper.requestSmartRepliesWithContext(_:inputContextHistory:conversationType:smartReplyType:candidateString:options:completion:)(v20, v21, a5, a6, v15, v17, v18, sub_18FFEB604, v19);
}

- (void)cancelRequestWithToken:(unint64_t)a3 forClient:(id)a4
{
  v6 = sub_1900B1610();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  TUITextComposerClientWrapper.cancelRequest(token:forClient:)(a3, v10);
}

@end