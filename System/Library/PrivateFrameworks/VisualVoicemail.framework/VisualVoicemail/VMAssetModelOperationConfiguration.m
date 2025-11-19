@interface VMAssetModelOperationConfiguration
- (VMAssetModelOperationConfiguration)initWithAssetModelType:(int64_t)a3 speechTaskHint:(int64_t)a4 language:(id)a5;
@end

@implementation VMAssetModelOperationConfiguration

- (VMAssetModelOperationConfiguration)initWithAssetModelType:(int64_t)a3 speechTaskHint:(int64_t)a4 language:(id)a5
{
  v8 = a5;
  v9 = vm_vmd_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Init VMAssetModelOperationConfiguration", buf, 2u);
  }

  v14.receiver = self;
  v14.super_class = VMAssetModelOperationConfiguration;
  v10 = [(VMAssetModelOperationConfiguration *)&v14 init];
  v11 = v10;
  if (v10)
  {
    [(VMAssetModelOperationConfiguration *)v10 setAssetModelType:a3];
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = 1012;
    }

    [(VMAssetModelOperationConfiguration *)v11 setSpeechTaskHint:v12];
    [(VMAssetModelOperationConfiguration *)v11 setLanguage:v8];
  }

  return v11;
}

@end