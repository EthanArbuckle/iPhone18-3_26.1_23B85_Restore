@interface APWebViewConfiguration
- (APWebViewConfiguration)init;
- (WKWebViewConfiguration)videoConfiguration;
- (WKWebViewConfiguration)videoConfigurationWithBackgroundPriority;
- (WKWebViewConfiguration)webProcessConfiguration;
- (WKWebViewConfiguration)webProcessConfigurationWithBackgroundPriority;
- (id)_injectionScriptForResource:(id)resource injectionTime:(int64_t)time;
- (id)_injectionStyleForResource:(id)resource;
@end

@implementation APWebViewConfiguration

- (APWebViewConfiguration)init
{
  v28.receiver = self;
  v28.super_class = APWebViewConfiguration;
  v2 = [(APWebViewConfiguration *)&v28 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE4AD8]);
    v7 = objc_msgSend_initWithOptions_(v3, v4, 1, v5, v6);
    webProcessConfigurationLock = v2->_webProcessConfigurationLock;
    v2->_webProcessConfigurationLock = v7;

    v9 = objc_alloc(MEMORY[0x277CE4AD8]);
    v13 = objc_msgSend_initWithOptions_(v9, v10, 1, v11, v12);
    webProcessConfigurationWithBackgroundPriorityLock = v2->_webProcessConfigurationWithBackgroundPriorityLock;
    v2->_webProcessConfigurationWithBackgroundPriorityLock = v13;

    v15 = objc_alloc(MEMORY[0x277CE4AD8]);
    v19 = objc_msgSend_initWithOptions_(v15, v16, 1, v17, v18);
    videoConfigurationLock = v2->_videoConfigurationLock;
    v2->_videoConfigurationLock = v19;

    v21 = objc_alloc(MEMORY[0x277CE4AD8]);
    v25 = objc_msgSend_initWithOptions_(v21, v22, 1, v23, v24);
    videoConfigurationWithBackgroundPriorityLock = v2->_videoConfigurationWithBackgroundPriorityLock;
    v2->_videoConfigurationWithBackgroundPriorityLock = v25;
  }

  return v2;
}

- (WKWebViewConfiguration)webProcessConfiguration
{
  v6 = objc_msgSend_webProcessConfigurationLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_webProcessConfiguration)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 0, v13, v14);
    webProcessConfiguration = self->_webProcessConfiguration;
    self->_webProcessConfiguration = v15;
  }

  v17 = objc_msgSend_webProcessConfigurationLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_webProcessConfiguration;

  return v22;
}

- (WKWebViewConfiguration)webProcessConfigurationWithBackgroundPriority
{
  v6 = objc_msgSend_webProcessConfigurationWithBackgroundPriorityLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_webProcessConfigurationWithBackgroundPriority)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 1, v13, v14);
    webProcessConfigurationWithBackgroundPriority = self->_webProcessConfigurationWithBackgroundPriority;
    self->_webProcessConfigurationWithBackgroundPriority = v15;
  }

  v17 = objc_msgSend_webProcessConfigurationWithBackgroundPriorityLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_webProcessConfigurationWithBackgroundPriority;

  return v22;
}

- (WKWebViewConfiguration)videoConfiguration
{
  v6 = objc_msgSend_videoConfigurationLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_videoConfiguration)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 0, v13, v14);
    videoConfiguration = self->_videoConfiguration;
    self->_videoConfiguration = v15;
  }

  v17 = objc_msgSend_videoConfigurationLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_videoConfiguration;

  return v22;
}

- (WKWebViewConfiguration)videoConfigurationWithBackgroundPriority
{
  v6 = objc_msgSend_videoConfigurationWithBackgroundPriorityLock(self, a2, v2, v3, v4);
  objc_msgSend_lock(v6, v7, v8, v9, v10);

  if (!self->_videoConfigurationWithBackgroundPriority)
  {
    v15 = objc_msgSend__newSharedConfigurationWithBackgroundPriority_(self, v11, 1, v13, v14);
    videoConfigurationWithBackgroundPriority = self->_videoConfigurationWithBackgroundPriority;
    self->_videoConfigurationWithBackgroundPriority = v15;
  }

  v17 = objc_msgSend_videoConfigurationWithBackgroundPriorityLock(self, v11, v12, v13, v14);
  objc_msgSend_unlock(v17, v18, v19, v20, v21);

  v22 = self->_videoConfigurationWithBackgroundPriority;

  return v22;
}

- (id)_injectionScriptForResource:(id)resource injectionTime:(int64_t)time
{
  v5 = MEMORY[0x277CCA8D8];
  resourceCopy = resource;
  v10 = objc_msgSend_bundleWithIdentifier_(v5, v7, @"com.apple.ap.PromotedContentUI", v8, v9);
  v13 = objc_msgSend_URLForResource_withExtension_(v10, v11, resourceCopy, @"js", v12);

  v15 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x277CCACA8], v14, v13, 4, 0);
  v16 = objc_alloc(MEMORY[0x277CE3838]);
  v18 = objc_msgSend_initWithSource_injectionTime_forMainFrameOnly_(v16, v17, v15, time, 0);

  return v18;
}

- (id)_injectionStyleForResource:(id)resource
{
  v3 = MEMORY[0x277CCA8D8];
  resourceCopy = resource;
  v8 = objc_msgSend_bundleWithIdentifier_(v3, v5, @"com.apple.ap.PromotedContentUI", v6, v7);
  v11 = objc_msgSend_URLForResource_withExtension_(v8, v9, resourceCopy, @"css", v10);

  v13 = objc_msgSend_stringWithContentsOfURL_encoding_error_(MEMORY[0x277CCACA8], v12, v11, 4, 0);
  v14 = objc_alloc(MEMORY[0x277CE38B0]);
  v17 = objc_msgSend_initWithSource_forMainFrameOnly_(v14, v15, v13, 0, v16);

  return v17;
}

@end