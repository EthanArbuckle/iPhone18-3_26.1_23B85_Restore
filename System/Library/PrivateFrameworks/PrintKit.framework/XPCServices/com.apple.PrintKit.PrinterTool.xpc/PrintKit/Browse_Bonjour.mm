@interface Browse_Bonjour
- (BOOL)isOKToAdd:(id)add;
- (Browse_Bonjour)initWithQueue:(id)queue;
- (void)_browserForServiceType:(id)type changedFrom:(id)from to:(id)to done:(BOOL)done;
- (void)addResult:(id)result;
- (void)cancel;
- (void)removeResult:(id)result;
- (void)start;
@end

@implementation Browse_Bonjour

- (Browse_Bonjour)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = Browse_Bonjour;
  v6 = [(Browse_Bonjour *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)start
{
  v3 = objc_opt_new();
  serviceBrowsers = self->_serviceBrowsers;
  self->_serviceBrowsers = v3;

  secure_tcp = nw_parameters_create_secure_tcp(_nw_parameters_configure_protocol_default_configuration, _nw_parameters_configure_protocol_default_configuration);
  session = [(Browse_Implementation *)self session];
  clientBundleIdentifier = [session clientBundleIdentifier];

  v16 = clientBundleIdentifier;
  if (clientBundleIdentifier)
  {
    [clientBundleIdentifier UTF8String];
    nw_parameters_set_attributed_bundle_identifier();
  }

  nw_parameters_set_account_id();
  objc_initWeak(&location, self);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [&off_1000B8FD0 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v8)
  {
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(&off_1000B8FD0);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = v11;
        bonjour_service = nw_browse_descriptor_create_bonjour_service([v11 UTF8String], 0);
        nw_browse_descriptor_set_include_txt_record(bonjour_service, 1);
        v14 = nw_browser_create(bonjour_service, secure_tcp);
        v15 = v14;
        if (v14)
        {
          nw_browser_set_queue(v14, self->_queue);
          handler[0] = _NSConcreteStackBlock;
          handler[1] = 3221225472;
          handler[2] = sub_10002ADDC;
          handler[3] = &unk_1000A24E8;
          objc_copyWeak(&v18, &location);
          handler[4] = v11;
          nw_browser_set_browse_results_changed_handler(v15, handler);
          [(NSMutableDictionary *)self->_serviceBrowsers setObject:v15 forKeyedSubscript:v11];
          nw_browser_start(v15);
          objc_destroyWeak(&v18);
        }
      }

      v8 = [&off_1000B8FD0 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  objc_destroyWeak(&location);
}

- (void)cancel
{
  allValues = [(NSMutableDictionary *)self->_serviceBrowsers allValues];
  [allValues enumerateObjectsUsingBlock:&stru_1000A2528];

  serviceBrowsers = self->_serviceBrowsers;
  self->_serviceBrowsers = 0;
}

- (BOOL)isOKToAdd:(id)add
{
  v3 = nw_browse_result_copy_txt_record_object(add);
  if (v3 && ((+[PKDefaults urfIsOptional]& 1) != 0 || nw_txt_record_find_key(v3, "URF")))
  {
    v4 = +[PKDefaults requiredPDL];
    v5 = v4;
    if (v4)
    {
      access_value[0] = _NSConcreteStackBlock;
      access_value[1] = 3221225472;
      access_value[2] = sub_10002B030;
      access_value[3] = &unk_1000A2550;
      v9 = v4;
      v6 = nw_txt_record_access_key(v3, "pdl", access_value);
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addResult:(id)result
{
  resultCopy = result;
  v5 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v9 = 134218242;
    v10 = resultCopy;
    v11 = 2112;
    v12 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "CHECK Result <%p> %@", &v9, 0x16u);
  }

  if ([(Browse_Bonjour *)self isOKToAdd:resultCopy])
  {
    v6 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 134218242;
      v10 = resultCopy;
      v11 = 2112;
      v12 = resultCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Adding <%p> %@", &v9, 0x16u);
    }

    v7 = [[BonjourBrowse_Entity alloc] initWithBrowseResult:resultCopy];
    addEntity = [(Browse_Implementation *)self addEntity];
    (addEntity)[2](addEntity, v7);
  }

  else
  {
    v7 = _PKLogCategory(PKLogCategoryDiscovery[0]);
    if (os_log_type_enabled(&v7->super.super, OS_LOG_TYPE_INFO))
    {
      v9 = 134218242;
      v10 = resultCopy;
      v11 = 2112;
      v12 = resultCopy;
      _os_log_impl(&_mh_execute_header, &v7->super.super, OS_LOG_TYPE_INFO, "NOT Adding <%p> %@", &v9, 0x16u);
    }
  }
}

- (void)removeResult:(id)result
{
  resultCopy = result;
  v5 = _PKLogCategory(PKLogCategoryDiscovery[0]);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 134218242;
    v9 = resultCopy;
    v10 = 2112;
    v11 = resultCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Removing <%p> %@", &v8, 0x16u);
  }

  v6 = [[BonjourBrowse_Entity alloc] initWithBrowseResult:resultCopy];
  removeEntity = [(Browse_Implementation *)self removeEntity];
  (removeEntity)[2](removeEntity, v6);
}

- (void)_browserForServiceType:(id)type changedFrom:(id)from to:(id)to done:(BOOL)done
{
  old_result = from;
  toCopy = to;
  dispatch_assert_queue_V2(self->_queue);
  changes = nw_browse_result_get_changes(old_result, toCopy);
  if ((changes & 1) == 0)
  {
    if ((changes & 2) != 0)
    {
LABEL_5:
      [(Browse_Bonjour *)self addResult:toCopy];
      goto LABEL_7;
    }

    if ((changes & 4) == 0)
    {
      [(Browse_Bonjour *)self removeResult:old_result];
      goto LABEL_5;
    }

    [(Browse_Bonjour *)self removeResult:old_result];
  }

LABEL_7:
}

@end