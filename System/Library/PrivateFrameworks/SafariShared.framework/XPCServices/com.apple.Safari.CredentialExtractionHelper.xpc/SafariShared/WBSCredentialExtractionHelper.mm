@interface WBSCredentialExtractionHelper
- (void)fetchExtractedCredentialsFromCSVFile:(id)a3 sandboxExtension:(id)a4 completionHandler:(id)a5;
- (void)fetchLooksLikePasswordsCSVFile:(id)a3 sandboxExtension:(id)a4 completionHandler:(id)a5;
@end

@implementation WBSCredentialExtractionHelper

- (void)fetchLooksLikePasswordsCSVFile:(id)a3 sandboxExtension:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  [a4 UTF8String];
  v9 = sandbox_extension_consume();
  if (v9 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001038();
    }

    v11 = [WBSPasswordImportCSVCredentialExtractor credentialExtractionErrorForErrorCode:0];
    v8[2](v8, 0, v11);
  }

  else
  {
    v10 = v9;
    v11 = objc_alloc_init(WBSScopeExitHandler);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100000D34;
    v15[3] = &unk_100004118;
    v15[4] = v10;
    [v11 setHandler:v15];
    v12 = [[WBSPasswordImportCSVCredentialExtractor alloc] initWithURLforCSVFile:v7];
    v13 = v12;
    if (v12)
    {
      (v8)[2](v8, [v12 looksLikePasswordsCSVFile], 0);
    }

    else
    {
      v14 = [WBSPasswordImportCSVCredentialExtractor credentialExtractionErrorForErrorCode:1];
      v8[2](v8, 0, v14);
    }
  }
}

- (void)fetchExtractedCredentialsFromCSVFile:(id)a3 sandboxExtension:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  [a4 UTF8String];
  v9 = sandbox_extension_consume();
  if (v9 == -1)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100001038();
    }

    v11 = [WBSPasswordImportCSVCredentialExtractor credentialExtractionErrorForErrorCode:0];
    v8[2](v8, 0, v11);
  }

  else
  {
    v10 = v9;
    v11 = objc_alloc_init(WBSScopeExitHandler);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100000EF4;
    v17[3] = &unk_100004118;
    v17[4] = v10;
    [v11 setHandler:v17];
    v12 = [[WBSPasswordImportCSVCredentialExtractor alloc] initWithURLforCSVFile:v7];
    v13 = v12;
    if (v12)
    {
      v16 = 0;
      v14 = [v12 extractCredentialsWithError:&v16];
      v15 = v16;
      (v8)[2](v8, v14, v15);
    }

    else
    {
      v15 = [WBSPasswordImportCSVCredentialExtractor credentialExtractionErrorForErrorCode:1];
      v8[2](v8, 0, v15);
    }
  }
}

@end