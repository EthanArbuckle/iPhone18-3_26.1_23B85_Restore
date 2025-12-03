@interface SSSoftwareLibraryItem
- (BOOL)setETag:(id)tag forAssetType:(id)type error:(id *)error;
- (SSSoftwareLibraryItem)initWithXPCEncoding:(id)encoding;
- (id)ETagForAssetType:(id)type;
- (id)_initWithITunesMetadata:(id)metadata;
- (id)copyXPCEncoding;
- (id)valueForProperty:(id)property;
- (void)_setValue:(id)value forProperty:(id)property;
- (void)dealloc;
@end

@implementation SSSoftwareLibraryItem

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v3, "4", self->_beta);
  SSXPCDictionarySetCFObject(v3, "0", self->_etags);
  xpc_dictionary_set_BOOL(v3, "5", self->_launchProhibited);
  xpc_dictionary_set_BOOL(v3, "3", self->_placeholder);
  xpc_dictionary_set_BOOL(v3, "1", self->_profileValidated);
  SSXPCDictionarySetCFObject(v3, "2", self->_propertyValues);
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SSSoftwareLibraryItem;
  [(SSSoftwareLibraryItem *)&v3 dealloc];
}

- (id)ETagForAssetType:(id)type
{
  v3 = [(NSMutableDictionary *)self->_etags objectForKey:type];

  return v3;
}

- (BOOL)setETag:(id)tag forAssetType:(id)type error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  if (SSIsInternalBuild() && _os_feature_enabled_impl())
  {
    v9 = +[SSLogConfig sharedStoreServicesConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    if (os_log_type_enabled([v9 OSLogObject], OS_LOG_TYPE_FAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 2;
    }

    if (v12)
    {
      LODWORD(v38) = 136446210;
      *(&v38 + 4) = "[SSSoftwareLibraryItem setETag:forAssetType:error:]";
      LODWORD(v32) = 12;
      v13 = _os_log_send_and_compose_impl();
      if (v13)
      {
        v14 = v13;
        v15 = [MEMORY[0x1E696AEC0] stringWithCString:v13 encoding:{4, &v38, v32}];
        free(v14);
        SSFileLog(v9, @"%@", v16, v17, v18, v19, v20, v21, v15);
      }
    }
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  *&v38 = 0;
  *(&v38 + 1) = &v38;
  v39 = 0x3052000000;
  v40 = __Block_byref_object_copy__46;
  v41 = __Block_byref_object_dispose__46;
  v42 = 0;
  v22 = SSXPCCreateMessageDictionary(90);
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  tagCopy = tag;
  if (!tag)
  {
    tagCopy = [MEMORY[0x1E695DFB0] null];
  }

  -[__CFString setObject:forKey:](v23, "setObject:forKey:", tagCopy, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@$$%@$$%@", @"com.apple.iTunesStore.downloadInfo", @"etags", type]);
  SSXPCDictionarySetCFObject(v22, "1", [(NSMutableDictionary *)self->_propertyValues objectForKey:@"bundle-id"]);
  SSXPCDictionarySetCFObject(v22, "2", v23);

  v25 = [[SSXPCConnection alloc] initWithServiceName:@"com.apple.itunesstored.xpc"];
  v26 = dispatch_semaphore_create(0);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __52__SSSoftwareLibraryItem_setETag_forAssetType_error___block_invoke;
  v33[3] = &unk_1E84B17B0;
  v33[6] = &v34;
  v33[4] = v26;
  v33[5] = &v38;
  [(SSXPCConnection *)v25 sendMessage:v22 withReply:v33];
  dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v26);

  xpc_release(v22);
  if (*(v35 + 24) == 1)
  {
    etags = self->_etags;
    if (tag)
    {
      if (!etags)
      {
        etags = objc_alloc_init(MEMORY[0x1E695DF90]);
        self->_etags = etags;
      }

      [(NSMutableDictionary *)etags setObject:tag forKey:type];
    }

    else
    {
      [(NSMutableDictionary *)etags removeObjectForKey:type];
    }
  }

  v28 = *(*(&v38 + 1) + 40);
  v29 = v35;
  v30 = *(v35 + 24);
  if (error && (v35[3] & 1) == 0)
  {
    *error = *(*(&v38 + 1) + 40);
    v30 = *(v29 + 24);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v34, 8);
  return v30 & 1;
}

intptr_t __52__SSSoftwareLibraryItem_setETag_forAssetType_error___block_invoke(void *a1, void *a2)
{
  if (a2 == MEMORY[0x1E69E9E20] || a2 == MEMORY[0x1E69E9E18])
  {
    v4 = 121;
LABEL_10:
    v6 = SSError(@"SSErrorDomain", v4, 0, 0);
    goto LABEL_11;
  }

  if (!a2 || MEMORY[0x1DA6E0380](a2) != MEMORY[0x1E69E9E80])
  {
    v4 = 111;
    goto LABEL_10;
  }

  *(*(a1[6] + 8) + 24) = xpc_dictionary_get_BOOL(a2, "1");
  v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithXPCEncoding:{xpc_dictionary_get_value(a2, "2")}];
LABEL_11:
  *(*(a1[5] + 8) + 40) = v6;
  v7 = a1[4];

  return dispatch_semaphore_signal(v7);
}

- (id)valueForProperty:(id)property
{
  v3 = [(NSMutableDictionary *)self->_propertyValues objectForKey:property];

  return v3;
}

- (id)_initWithITunesMetadata:(id)metadata
{
  v14.receiver = self;
  v14.super_class = SSSoftwareLibraryItem;
  v4 = [(SSSoftwareLibraryItem *)&v14 init];
  p_isa = &v4->super.isa;
  if (v4)
  {

    p_isa[4] = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = [metadata objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"etags"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

        p_isa[2] = [v7 mutableCopy];
      }

      v8 = [v6 objectForKey:@"referrerApp"];
      if (v8)
      {
        [p_isa[4] setObject:v8 forKey:@"referrerApp"];
      }

      v9 = [v6 objectForKey:@"referrerURL"];
      if (v9)
      {
        [p_isa[4] setObject:v9 forKey:@"referrerURL"];
      }
    }

    for (i = 0; i != 6; ++i)
    {
      v11 = off_1E84B17D0[i];
      v12 = [metadata objectForKey:v11];
      if (v12)
      {
        [p_isa[4] setObject:v12 forKey:v11];
      }
    }
  }

  return p_isa;
}

- (void)_setValue:(id)value forProperty:(id)property
{
  propertyValues = self->_propertyValues;
  if (value)
  {
    if (!propertyValues)
    {
      propertyValues = objc_alloc_init(MEMORY[0x1E695DF90]);
      self->_propertyValues = propertyValues;
    }

    [(NSMutableDictionary *)propertyValues setObject:value forKey:property];
  }

  else
  {

    [(NSMutableDictionary *)propertyValues removeObjectForKey:property];
  }
}

- (SSSoftwareLibraryItem)initWithXPCEncoding:(id)encoding
{
  if (encoding && MEMORY[0x1DA6E0380](encoding, a2) == MEMORY[0x1E69E9E80])
  {
    v9.receiver = self;
    v9.super_class = SSSoftwareLibraryItem;
    v5 = [(SSSoftwareLibraryItem *)&v9 init];
    if (v5)
    {
      objc_opt_class();
      v7 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "0");
      v5->_etags = [(__CFArray *)v7 mutableCopy];

      v5->_beta = xpc_dictionary_get_BOOL(encoding, "4");
      v5->_launchProhibited = xpc_dictionary_get_BOOL(encoding, "5");
      v5->_placeholder = xpc_dictionary_get_BOOL(encoding, "3");
      v5->_profileValidated = xpc_dictionary_get_BOOL(encoding, "1");
      objc_opt_class();
      v8 = SSXPCDictionaryCopyCFObjectWithClass(encoding, "2");
      v5->_propertyValues = [(__CFArray *)v8 mutableCopy];
    }
  }

  else
  {

    return 0;
  }

  return v5;
}

@end