@interface VUIActionBundleOffer
- (VUIActionBundleOffer)initWithContextData:(id)data appContext:(id)context;
- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler;
@end

@implementation VUIActionBundleOffer

- (VUIActionBundleOffer)initWithContextData:(id)data appContext:(id)context
{
  dataCopy = data;
  contextCopy = context;
  v24.receiver = self;
  v24.super_class = VUIActionBundleOffer;
  v8 = [(VUIActionBundleOffer *)&v24 init];
  if (v8)
  {
    v9 = [dataCopy vui_stringForKey:@"offerURL"];
    offerURLString = v8->_offerURLString;
    v8->_offerURLString = v9;

    v11 = [dataCopy vui_stringForKey:@"offerDomain"];
    offerDomain = v8->_offerDomain;
    v8->_offerDomain = v11;

    v13 = [dataCopy vui_stringForKey:@"notificationTitle"];
    notificationTitle = v8->_notificationTitle;
    v8->_notificationTitle = v13;

    v15 = [dataCopy vui_stringForKey:@"notificationBundleTitle"];
    notificationBundleTitle = v8->_notificationBundleTitle;
    v8->_notificationBundleTitle = v15;

    v17 = [dataCopy vui_stringForKey:@"notificationBody"];
    notificationBody = v8->_notificationBody;
    v8->_notificationBody = v17;

    v19 = [dataCopy vui_dictionaryForKey:@"metricsDictionary"];
    offerMetrics = v8->_offerMetrics;
    v8->_offerMetrics = v19;

    v21 = [dataCopy vui_stringForKey:@"sharedWatchUrl"];
    sharedWatchUrl = v8->_sharedWatchUrl;
    v8->_sharedWatchUrl = v21;

    v8->_isMultiOfferDynamicVC = [dataCopy vui_BOOLForKey:@"isMultiOfferDynamicVC" defaultValue:0];
    v8->_isAppStoreOffer = [dataCopy vui_BOOLForKey:@"isAppStore" defaultValue:0];
    objc_storeStrong(&v8->_appContext, context);
  }

  return v8;
}

- (void)performWithTargetResponder:(id)responder completionHandler:(id)handler
{
  v26[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v6 = [MEMORY[0x1E695DFF8] URLWithString:self->_offerURLString];
  if (v6)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __69__VUIActionBundleOffer_performWithTargetResponder_completionHandler___block_invoke;
    v23 = &unk_1E872D790;
    v24 = handlerCopy;
    v7 = _Block_copy(&v20);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary vui_setObjectIfNotNil:self->_notificationTitle forKey:@"notificationTitle"];
    [dictionary vui_setObjectIfNotNil:self->_offerDomain forKey:@"offerDomain"];
    [dictionary vui_setObjectIfNotNil:self->_notificationBundleTitle forKey:@"notificationBundleTitle"];
    [dictionary vui_setObjectIfNotNil:self->_notificationBody forKey:@"notificationBody"];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isMultiOfferDynamicVC];
    [dictionary vui_setObjectIfNotNil:v9 forKey:@"isMultiOfferDynamicVC"];

    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAppStoreOffer];
    [dictionary vui_setObjectIfNotNil:v10 forKey:@"isAppStore"];

    [dictionary vui_setObjectIfNotNil:self->_sharedWatchUrl forKey:@"sharedWatchUrl"];
    if (self->_offerMetrics)
    {
      v11 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary];
      offerMetrics = self->_offerMetrics;
      v25 = @"metricsDictionary";
      v26[0] = offerMetrics;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      [v11 addEntriesFromDictionary:v13];

      v14 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v11];

      dictionary = v14;
    }

    v15 = +[VUIInterfaceFactory sharedInstance];
    openURLHandler = [v15 openURLHandler];
    v17 = [dictionary valueForKey:@"sharedWatchUrl"];
    appContext = [(VUIActionBundleOffer *)self appContext];
    [openURLHandler processNonDeeplinkURL:v6 contextData:dictionary sharedWatchUrl:v17 appContext:appContext completion:v7];
  }

  else
  {
    v19 = VUIDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [VUIActionBundleOffer performWithTargetResponder:v19 completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

uint64_t __69__VUIActionBundleOffer_performWithTargetResponder_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUIActionBundleOffer - BundleOffer:: Action completed with success:%d", v6, 8u);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2);
  }

  return result;
}

@end