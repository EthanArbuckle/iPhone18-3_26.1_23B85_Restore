@interface SMBMounterClientHelper
- (id)destroyDomain:(id)a3;
- (void)createDomain:(id)a3 displayName:(id)a4 how:(int)a5 storageName:(id)a6 reply:(id)a7;
@end

@implementation SMBMounterClientHelper

- (void)createDomain:(id)a3 displayName:(id)a4 how:(int)a5 storageName:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = dispatch_semaphore_create(0);
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_10002B0C8;
  v34 = sub_10002B0D8;
  v35 = 0;
  v17 = [[NSFileProviderDomain alloc] initWithIdentifier:v12 displayName:v13 pathRelativeToDocumentStorage:v14 hidden:(a5 >> 7) & 1];
  v18 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:self->_providerName];
  v19 = livefs_std_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    providerName = self->_providerName;
    *buf = 136315906;
    v37 = "[SMBMounterClientHelper createDomain:displayName:how:storageName:reply:]";
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = providerName;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%s: name(%@), displayName(%@), providerName(%@)", buf, 0x2Au);
  }

  if ((a5 & 0x1000) != 0)
  {
    [v17 setErasable:1];
  }

  if ((a5 & 0x800) != 0)
  {
    [v17 setReadOnly:1];
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10002B0E0;
  v27[3] = &unk_10008DEC8;
  v29 = &v30;
  v21 = v16;
  v28 = v21;
  [v18 addDomain:v17 completionHandler:v27];
  dispatch_semaphore_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
  v22 = v31[5];
  if ((a5 & 1) == 0 || v22)
  {
    v23 = v18;
  }

  else
  {
    v23 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:self->_providerName domain:v17];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10002B164;
    v25[3] = &unk_10008DEF0;
    v24 = v21;
    v26 = v24;
    [v23 setConnected:1 completionHandler:v25];
    dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);

    v22 = v31[5];
  }

  v15[2](v15, v22);

  _Block_object_dispose(&v30, 8);
}

- (id)destroyDomain:(id)a3
{
  v4 = a3;
  v5 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10002B0C8;
  v18 = sub_10002B0D8;
  v19 = 0;
  v6 = [[NSFileProviderDomain alloc] initWithIdentifier:v4 displayName:v4 pathRelativeToDocumentStorage:v4];
  v7 = [[NSFileProviderManager alloc] _initWithProviderIdentifier:self->_providerName];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002B410;
  v11[3] = &unk_10008DEC8;
  v13 = &v14;
  v8 = v5;
  v12 = v8;
  [v7 removeDomain:v6 completionHandler:v11];
  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

@end