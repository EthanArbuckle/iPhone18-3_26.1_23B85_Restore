@interface _UIOBannerRequestAction
+ (id)actionForSystemBannerRequest:(void *)a3 completionHandler:;
- (void)performActionFromConnection:(id)a3;
@end

@implementation _UIOBannerRequestAction

+ (id)actionForSystemBannerRequest:(void *)a3 completionHandler:
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v7 setObject:v5 forSetting:0];

  v8 = MEMORY[0x1E698E5F8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __74___UIOBannerRequestAction_actionForSystemBannerRequest_completionHandler___block_invoke;
  v13[3] = &unk_1E7108B40;
  v14 = v4;
  v9 = v4;
  v10 = [v8 responderWithHandler:v13];
  v11 = [[v6 alloc] initWithInfo:v7 responder:v10];

  return v11;
}

- (void)performActionFromConnection:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(_UIOBannerRequestAction *)self connectionIsEntitled:v4])
  {
    v5 = [(_UIOBannerRequestAction *)self info];
    v6 = [v5 objectForSetting:0];

    if (qword_1ED49DD90 != -1)
    {
      dispatch_once(&qword_1ED49DD90, &__block_literal_global_228);
    }

    v7 = qword_1ED49DD88;
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = [v7 sharedInstance];
    [v8 postBannerWithRequest:v6];
LABEL_8:

LABEL_9:
    goto LABEL_10;
  }

  v9 = *(__UILogGetCategoryCachedImpl("OverlayUI", &_MergedGlobals_1095) + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    v6 = v9;
    v8 = [v4 bundleIdentifier];
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_FAULT, "%{public}@ has attempted to request a system banner without necessary entitlements, ignoring the request", &v10, 0xCu);
    goto LABEL_8;
  }

LABEL_10:
}

@end