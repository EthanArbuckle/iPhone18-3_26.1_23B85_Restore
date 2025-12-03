@interface UIPasteboard
+ (UISPasteSharingToken)pasteSharingTokenFromOpenURL;
+ (id)_pasteboardWithName:(id)name create:(BOOL)create;
+ (void)_performAsDataOwner:(int64_t)owner block:(id)block;
+ (void)_performAsDataOwnerForAction:(SEL)action responder:(id)responder block:(id)block;
+ (void)setPasteSharingTokenFromOpenURL:(id)l;
- (id)_detectedPasteboardTypesForTypes:(id)types;
- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d completionBlock:(id)block;
@end

@implementation UIPasteboard

+ (UISPasteSharingToken)pasteSharingTokenFromOpenURL
{
  os_unfair_lock_lock(&_MergedGlobals_1233);
  v2 = qword_1ED49FC10;
  os_unfair_lock_unlock(&_MergedGlobals_1233);

  return v2;
}

+ (void)setPasteSharingTokenFromOpenURL:(id)l
{
  lCopy = l;
  os_unfair_lock_lock(&_MergedGlobals_1233);
  v4 = [lCopy copy];

  v5 = qword_1ED49FC10;
  qword_1ED49FC10 = v4;

  os_unfair_lock_unlock(&_MergedGlobals_1233);
}

+ (id)_pasteboardWithName:(id)name create:(BOOL)create
{
  createCopy = create;
  nameCopy = name;
  if (([nameCopy isEqualToString:@"com.apple.UIKit.pboard.find"] & 1) != 0 || objc_msgSend(nameCopy, "isEqualToString:", @"com.apple.UIKit.pboard.print"))
  {
    v6 = objc_alloc_init(UIPasteboard);
  }

  else
  {
    v6 = [_UIConcretePasteboard _pasteboardWithName:nameCopy create:createCopy];
  }

  v7 = v6;

  return v7;
}

- (id)_detectedPasteboardTypesForTypes:(id)types
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v3;
}

+ (void)_performAsDataOwner:(int64_t)owner block:(id)block
{
  blockCopy = block;
  pthread_once(&_dataOwnerKeyOnce, _createDataOwnerKey);
  v6 = pthread_getspecific(_dataOwnerKey);
  pthread_setspecific(_dataOwnerKey, owner);
  blockCopy[2](blockCopy);

  v7 = _dataOwnerKey;

  pthread_setspecific(v7, v6);
}

+ (void)_performAsDataOwnerForAction:(SEL)action responder:(id)responder block:(id)block
{
  responderCopy = responder;
  blockCopy = block;
  v8 = [MEMORY[0x1E69DEC00] variantForSelector:action];

  if (v8)
  {
    _dataOwnerForPaste = [responderCopy _dataOwnerForPaste];
  }

  else
  {
    if (sel_copy_ != action && sel_cut_ != action)
    {
      blockCopy[2](blockCopy);
      goto LABEL_10;
    }

    _dataOwnerForPaste = [responderCopy _dataOwnerForCopy];
  }

  [UIPasteboard _performAsDataOwner:_dataOwnerForPaste block:blockCopy];
LABEL_10:
}

- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)context forClientVersionedPID:(int64_t)d completionBlock:(id)block
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"UIPasteboard.m" lineNumber:338 description:{@"-_requestSecurePasteAuthenticationMessageWithContext:forClientVersionedPID:completionBlock: was called on UIPasteboard, when it should be called on _UIConcretePasteboard"}];
}

@end