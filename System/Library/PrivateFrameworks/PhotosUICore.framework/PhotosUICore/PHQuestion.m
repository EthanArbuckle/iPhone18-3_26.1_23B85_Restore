@interface PHQuestion
@end

@implementation PHQuestion

void __69__PHQuestion_PhotosUICore__px_requestConfigurationWithResultHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() _px_configurationCache];
  v3 = [*(a1 + 32) uuid];
  v4 = [v2 objectForKey:v3];

  if (!v4 || [v4 isStale])
  {
    v5 = [*(a1 + 32) _px_requestQueue_fetchConfiguration];

    if (v5)
    {
      v6 = [objc_opt_class() _px_configurationCache];
      v7 = [*(a1 + 32) uuid];
      [v6 setObject:v5 forKey:v7];

      v4 = v5;
    }

    else
    {
      v4 = 0;
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__PHQuestion_PhotosUICore__px_requestConfigurationWithResultHandler___block_invoke_2;
  block[3] = &unk_1E774C508;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v8;
  v14 = v9;
  v12 = v4;
  v10 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __50__PHQuestion_PhotosUICore___px_configurationCache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = _px_configurationCache_cache;
  _px_configurationCache_cache = v0;
}

void __44__PHQuestion_PhotosUICore___px_requestQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.mobileslideshow.PHQuestionConfigurationRequestQueue", v2);
  v1 = _px_requestQueue_queue;
  _px_requestQueue_queue = v0;
}

@end