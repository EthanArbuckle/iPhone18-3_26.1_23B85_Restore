@interface PPXPCServer
+ (void)_registerConfigListener;
+ (void)_registerConnectionsListener;
+ (void)_registerContactListener;
+ (void)_registerEventListener;
+ (void)_registerInternalListener;
+ (void)_registerLocationReadOnlyListener;
+ (void)_registerLocationReadWriteListener;
+ (void)_registerNamedEntityReadOnlyListener;
+ (void)_registerNamedEntityReadWriteListener;
+ (void)_registerQuickTypeListener;
+ (void)_registerSocialHighlightListener;
+ (void)_registerStringDonationListener;
+ (void)_registerTemporalClusterListener;
+ (void)_registerTextUnderstandingListener;
+ (void)_registerTopicReadOnlyListener;
+ (void)_registerTopicReadWriteListener;
+ (void)registerXPCListeners;
@end

@implementation PPXPCServer

+ (void)registerXPCListeners
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__PPXPCServer_registerXPCListeners__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_B8__0l;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__PPXPCServer_registerXPCListeners__block_invoke_81;
  v5[3] = &unk_278975D98;
  v6 = v2;
  v3 = registerXPCListeners__pasOnceToken19;
  v4 = v2;
  if (v3 != -1)
  {
    dispatch_once(&registerXPCListeners__pasOnceToken19, v5);
  }
}

uint64_t __35__PPXPCServer_registerXPCListeners__block_invoke(uint64_t a1)
{
  v2 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_23224A000, v2, OS_LOG_TYPE_INFO, "Registering for Portrait XPC services", v4, 2u);
  }

  [*(a1 + 32) _registerNamedEntityReadOnlyListener];
  [*(a1 + 32) _registerNamedEntityReadWriteListener];
  [*(a1 + 32) _registerTopicReadOnlyListener];
  [*(a1 + 32) _registerTopicReadWriteListener];
  [*(a1 + 32) _registerLocationReadOnlyListener];
  [*(a1 + 32) _registerLocationReadWriteListener];
  [*(a1 + 32) _registerQuickTypeListener];
  [*(a1 + 32) _registerTextUnderstandingListener];
  [*(a1 + 32) _registerContactListener];
  [*(a1 + 32) _registerEventListener];
  [*(a1 + 32) _registerConnectionsListener];
  [*(a1 + 32) _registerConfigListener];
  [*(a1 + 32) _registerInternalListener];
  [*(a1 + 32) _registerStringDonationListener];
  [*(a1 + 32) _registerSocialHighlightListener];
  [*(a1 + 32) _registerTemporalClusterListener];
  return 1;
}

void __35__PPXPCServer_registerXPCListeners__block_invoke_81(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

+ (void)_registerTemporalClusterListener
{
  v2 = objc_opt_new();
  v3 = _registerTemporalClusterListener_delegate;
  _registerTemporalClusterListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.TemporalCluster"];
  v5 = _registerTemporalClusterListener_listener;
  _registerTemporalClusterListener_listener = v4;

  [_registerTemporalClusterListener_listener setDelegate:_registerTemporalClusterListener_delegate];
  [_registerTemporalClusterListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for TemporalCluster XPC service", v7, 2u);
  }
}

+ (void)_registerSocialHighlightListener
{
  v2 = objc_opt_new();
  v3 = _registerSocialHighlightListener_delegate;
  _registerSocialHighlightListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.SocialHighlight"];
  v5 = _registerSocialHighlightListener_listener;
  _registerSocialHighlightListener_listener = v4;

  [_registerSocialHighlightListener_listener setDelegate:_registerSocialHighlightListener_delegate];
  [_registerSocialHighlightListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Social Highlight XPC service", v7, 2u);
  }
}

+ (void)_registerStringDonationListener
{
  v2 = objc_opt_new();
  v3 = _registerStringDonationListener_delegate;
  _registerStringDonationListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.suggestd.PersonalizationPortrait.StringDonation"];
  v5 = _registerStringDonationListener_listener;
  _registerStringDonationListener_listener = v4;

  [_registerStringDonationListener_listener setDelegate:_registerStringDonationListener_delegate];
  [_registerStringDonationListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for String Donation", v7, 2u);
  }
}

+ (void)_registerInternalListener
{
  v2 = objc_opt_new();
  v3 = _registerInternalListener_delegate;
  _registerInternalListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Internal"];
  v5 = _registerInternalListener_listener;
  _registerInternalListener_listener = v4;

  [_registerInternalListener_listener setDelegate:_registerInternalListener_delegate];
  [_registerInternalListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Internal XPC service", v7, 2u);
  }
}

+ (void)_registerConfigListener
{
  v2 = objc_opt_new();
  v3 = _registerConfigListener_delegate;
  _registerConfigListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Config"];
  v5 = _registerConfigListener_listener;
  _registerConfigListener_listener = v4;

  [_registerConfigListener_listener setDelegate:_registerConfigListener_delegate];
  [_registerConfigListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Config XPC service", v7, 2u);
  }
}

+ (void)_registerConnectionsListener
{
  v2 = objc_opt_new();
  v3 = _registerConnectionsListener_delegate;
  _registerConnectionsListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Connections"];
  v5 = _registerConnectionsListener_listener;
  _registerConnectionsListener_listener = v4;

  [_registerConnectionsListener_listener setDelegate:_registerConnectionsListener_delegate];
  [_registerConnectionsListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Connections XPC service", v7, 2u);
  }
}

+ (void)_registerEventListener
{
  v2 = objc_opt_new();
  v3 = _registerEventListener_delegate;
  _registerEventListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Event"];
  v5 = _registerEventListener_listener;
  _registerEventListener_listener = v4;

  [_registerEventListener_listener setDelegate:_registerEventListener_delegate];
  [_registerEventListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Event XPC service", v7, 2u);
  }
}

+ (void)_registerContactListener
{
  v2 = objc_opt_new();
  v3 = _registerContactListener_delegate;
  _registerContactListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Contact"];
  v5 = _registerContactListener_listener;
  _registerContactListener_listener = v4;

  [_registerContactListener_listener setDelegate:_registerContactListener_delegate];
  [_registerContactListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Contact XPC service", v7, 2u);
  }
}

+ (void)_registerTextUnderstandingListener
{
  v2 = objc_opt_new();
  v3 = _registerTextUnderstandingListener_delegate;
  _registerTextUnderstandingListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.TextUnderstanding"];
  v5 = _registerTextUnderstandingListener_listener;
  _registerTextUnderstandingListener_listener = v4;

  [_registerTextUnderstandingListener_listener setDelegate:_registerTextUnderstandingListener_delegate];
  [_registerTextUnderstandingListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for TextUnderstanding XPC service", v7, 2u);
  }
}

+ (void)_registerQuickTypeListener
{
  v2 = objc_opt_new();
  v3 = _registerQuickTypeListener_delegate;
  _registerQuickTypeListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.QuickType"];
  v5 = _registerQuickTypeListener_listener;
  _registerQuickTypeListener_listener = v4;

  [_registerQuickTypeListener_listener setDelegate:_registerQuickTypeListener_delegate];
  [_registerQuickTypeListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for QuickType XPC service", v7, 2u);
  }
}

+ (void)_registerLocationReadWriteListener
{
  v2 = objc_opt_new();
  v3 = _registerLocationReadWriteListener_delegate;
  _registerLocationReadWriteListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Location.readWrite"];
  v5 = _registerLocationReadWriteListener_listener;
  _registerLocationReadWriteListener_listener = v4;

  [_registerLocationReadWriteListener_listener setDelegate:_registerLocationReadWriteListener_delegate];
  [_registerLocationReadWriteListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Location Read/Write XPC service", v7, 2u);
  }
}

+ (void)_registerLocationReadOnlyListener
{
  v2 = objc_opt_new();
  v3 = _registerLocationReadOnlyListener_delegate;
  _registerLocationReadOnlyListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Location.readOnly"];
  v5 = _registerLocationReadOnlyListener_listener;
  _registerLocationReadOnlyListener_listener = v4;

  [_registerLocationReadOnlyListener_listener setDelegate:_registerLocationReadOnlyListener_delegate];
  [_registerLocationReadOnlyListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Location Read Only XPC service", v7, 2u);
  }
}

+ (void)_registerTopicReadWriteListener
{
  v2 = objc_opt_new();
  v3 = _registerTopicReadWriteListener_delegate;
  _registerTopicReadWriteListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Topic.readWrite"];
  v5 = _registerTopicReadWriteListener_listener;
  _registerTopicReadWriteListener_listener = v4;

  [_registerTopicReadWriteListener_listener setDelegate:_registerTopicReadWriteListener_delegate];
  [_registerTopicReadWriteListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Topic Read/Write XPC service", v7, 2u);
  }
}

+ (void)_registerTopicReadOnlyListener
{
  v2 = objc_opt_new();
  v3 = _registerTopicReadOnlyListener_delegate;
  _registerTopicReadOnlyListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.Topic.readOnly"];
  v5 = _registerTopicReadOnlyListener_listener;
  _registerTopicReadOnlyListener_listener = v4;

  [_registerTopicReadOnlyListener_listener setDelegate:_registerTopicReadOnlyListener_delegate];
  [_registerTopicReadOnlyListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Topic Read Only XPC service", v7, 2u);
  }
}

+ (void)_registerNamedEntityReadWriteListener
{
  v2 = objc_opt_new();
  v3 = _registerNamedEntityReadWriteListener_delegate;
  _registerNamedEntityReadWriteListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.NamedEntity.readWrite"];
  v5 = _registerNamedEntityReadWriteListener_listener;
  _registerNamedEntityReadWriteListener_listener = v4;

  [_registerNamedEntityReadWriteListener_listener setDelegate:_registerNamedEntityReadWriteListener_delegate];
  [_registerNamedEntityReadWriteListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Named Entity Read/Write XPC service", v7, 2u);
  }
}

+ (void)_registerNamedEntityReadOnlyListener
{
  v2 = objc_opt_new();
  v3 = _registerNamedEntityReadOnlyListener_delegate;
  _registerNamedEntityReadOnlyListener_delegate = v2;

  v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.proactive.PersonalizationPortrait.NamedEntity.readOnly"];
  v5 = _registerNamedEntityReadOnlyListener_listener;
  _registerNamedEntityReadOnlyListener_listener = v4;

  [_registerNamedEntityReadOnlyListener_listener setDelegate:_registerNamedEntityReadOnlyListener_delegate];
  [_registerNamedEntityReadOnlyListener_listener resume];
  v6 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_23224A000, v6, OS_LOG_TYPE_DEBUG, "Registered for Named Entity Read Only XPC service", v7, 2u);
  }
}

@end