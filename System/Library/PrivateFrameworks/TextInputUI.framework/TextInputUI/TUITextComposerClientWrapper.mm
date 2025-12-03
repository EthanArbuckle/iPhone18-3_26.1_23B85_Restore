@interface TUITextComposerClientWrapper
+ (BOOL)isGMAvailableWithUseCase:(id)case;
- (unint64_t)generateRequestToken;
- (void)cancelRequestWithToken:(unint64_t)token forClient:(id)client;
- (void)requestSmartRepliesWithContext:(id)context inputContextHistory:(id)history conversationType:(int64_t)type smartReplyType:(int64_t)replyType candidateString:(id)string options:(id)options completion:(id)aBlock;
@end

@implementation TUITextComposerClientWrapper

- (unint64_t)generateRequestToken
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69D9370]) init];
  nextToken = [v2 nextToken];

  return nextToken;
}

+ (BOOL)isGMAvailableWithUseCase:(id)case
{
  v3 = sub_1900B1610();
  v5 = _s11TextInputUI28TUITextComposerClientWrapperC13isGMAvailable7useCaseSbSS_tFZ_0(v3, v4);

  return v5 & 1;
}

- (void)requestSmartRepliesWithContext:(id)context inputContextHistory:(id)history conversationType:(int64_t)type smartReplyType:(int64_t)replyType candidateString:(id)string options:(id)options completion:(id)aBlock
{
  v14 = _Block_copy(aBlock);
  v15 = sub_1900B1610();
  v17 = v16;
  v18 = sub_1900B15A0();
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  contextCopy = context;
  historyCopy = history;
  selfCopy = self;
  TUITextComposerClientWrapper.requestSmartRepliesWithContext(_:inputContextHistory:conversationType:smartReplyType:candidateString:options:completion:)(contextCopy, historyCopy, type, replyType, v15, v17, v18, sub_18FFEB604, v19);
}

- (void)cancelRequestWithToken:(unint64_t)token forClient:(id)client
{
  v6 = sub_1900B1610();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  TUITextComposerClientWrapper.cancelRequest(token:forClient:)(token, v10);
}

@end