@interface VUIJSMetricsInterface
- (VUIJSMetricsInterface)initWithAppContext:(id)context;
- (void)campaignAttributionForUrl:(id)url :(id)a4;
- (void)recordLogEvent:(id)event;
@end

@implementation VUIJSMetricsInterface

- (VUIJSMetricsInterface)initWithAppContext:(id)context
{
  v4.receiver = self;
  v4.super_class = VUIJSMetricsInterface;
  return [(VUIJSObject *)&v4 initWithAppContext:context];
}

- (void)recordLogEvent:(id)event
{
  eventCopy = event;
  v4 = +[VUIMetricsController sharedInstance];
  [v4 recordLog:eventCopy];
}

- (void)campaignAttributionForUrl:(id)url :(id)a4
{
  urlCopy = url;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFF8] URLWithString:urlCopy];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  [(VUIJSObject *)self setJSValue:v7 forProperty:uUIDString];
  appContext = [(VUIJSObject *)self appContext];
  objc_initWeak(&location, appContext);

  objc_initWeak(&from, self);
  vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
  v13 = [objc_alloc(MEMORY[0x1E698C820]) initWithURL:v8 bag:vui_defaultBag];
  perform = [v13 perform];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__VUIJSMetricsInterface_campaignAttributionForUrl::__block_invoke;
  v17[3] = &unk_1E87379C8;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  v15 = uUIDString;
  v18 = v15;
  v16 = [perform thenWithBlock:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

uint64_t __52__VUIJSMetricsInterface_campaignAttributionForUrl::__block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 redirectURL];
  v5 = [v4 absoluteString];

  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__VUIJSMetricsInterface_campaignAttributionForUrl::__block_invoke_2;
  v9[3] = &unk_1E8731758;
  objc_copyWeak(&v12, a1 + 6);
  v10 = a1[4];
  v7 = v5;
  v11 = v7;
  [WeakRetained evaluate:v9];

  objc_destroyWeak(&v12);
  return 0;
}

void __52__VUIJSMetricsInterface_campaignAttributionForUrl::__block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained jsValueForProperty:*(a1 + 32)];
  v6[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  v5 = [v3 callWithArguments:v4];

  [WeakRetained setJSValue:0 forProperty:*(a1 + 32)];
}

@end