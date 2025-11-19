@interface UIPasteboard
+ (UISPasteSharingToken)pasteSharingTokenFromOpenURL;
+ (id)_pasteboardWithName:(id)a3 create:(BOOL)a4;
+ (void)_performAsDataOwner:(int64_t)a3 block:(id)a4;
+ (void)_performAsDataOwnerForAction:(SEL)a3 responder:(id)a4 block:(id)a5;
+ (void)setPasteSharingTokenFromOpenURL:(id)a3;
- (id)_detectedPasteboardTypesForTypes:(id)a3;
- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 completionBlock:(id)a5;
@end

@implementation UIPasteboard

+ (UISPasteSharingToken)pasteSharingTokenFromOpenURL
{
  os_unfair_lock_lock(&_MergedGlobals_1233);
  v2 = qword_1ED49FC10;
  os_unfair_lock_unlock(&_MergedGlobals_1233);

  return v2;
}

+ (void)setPasteSharingTokenFromOpenURL:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_MergedGlobals_1233);
  v4 = [v3 copy];

  v5 = qword_1ED49FC10;
  qword_1ED49FC10 = v4;

  os_unfair_lock_unlock(&_MergedGlobals_1233);
}

+ (id)_pasteboardWithName:(id)a3 create:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (([v5 isEqualToString:@"com.apple.UIKit.pboard.find"] & 1) != 0 || objc_msgSend(v5, "isEqualToString:", @"com.apple.UIKit.pboard.print"))
  {
    v6 = objc_alloc_init(UIPasteboard);
  }

  else
  {
    v6 = [_UIConcretePasteboard _pasteboardWithName:v5 create:v4];
  }

  v7 = v6;

  return v7;
}

- (id)_detectedPasteboardTypesForTypes:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFD8]);

  return v3;
}

+ (void)_performAsDataOwner:(int64_t)a3 block:(id)a4
{
  v5 = a4;
  pthread_once(&_dataOwnerKeyOnce, _createDataOwnerKey);
  v6 = pthread_getspecific(_dataOwnerKey);
  pthread_setspecific(_dataOwnerKey, a3);
  v5[2](v5);

  v7 = _dataOwnerKey;

  pthread_setspecific(v7, v6);
}

+ (void)_performAsDataOwnerForAction:(SEL)a3 responder:(id)a4 block:(id)a5
{
  v11 = a4;
  v7 = a5;
  v8 = [MEMORY[0x1E69DEC00] variantForSelector:a3];

  if (v8)
  {
    v9 = [v11 _dataOwnerForPaste];
  }

  else
  {
    if (sel_copy_ != a3 && sel_cut_ != a3)
    {
      v7[2](v7);
      goto LABEL_10;
    }

    v9 = [v11 _dataOwnerForCopy];
  }

  [UIPasteboard _performAsDataOwner:v9 block:v7];
LABEL_10:
}

- (void)_requestSecurePasteAuthenticationMessageWithContext:(unint64_t)a3 forClientVersionedPID:(int64_t)a4 completionBlock:(id)a5
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"UIPasteboard.m" lineNumber:338 description:{@"-_requestSecurePasteAuthenticationMessageWithContext:forClientVersionedPID:completionBlock: was called on UIPasteboard, when it should be called on _UIConcretePasteboard"}];
}

@end