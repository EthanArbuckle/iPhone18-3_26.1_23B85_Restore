@interface VMAssetModelOperationConfiguration
- (VMAssetModelOperationConfiguration)initWithAssetModelType:(int64_t)type speechTaskHint:(int64_t)hint language:(id)language;
@end

@implementation VMAssetModelOperationConfiguration

- (VMAssetModelOperationConfiguration)initWithAssetModelType:(int64_t)type speechTaskHint:(int64_t)hint language:(id)language
{
  languageCopy = language;
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
    [(VMAssetModelOperationConfiguration *)v10 setAssetModelType:type];
    if (hint)
    {
      hintCopy = hint;
    }

    else
    {
      hintCopy = 1012;
    }

    [(VMAssetModelOperationConfiguration *)v11 setSpeechTaskHint:hintCopy];
    [(VMAssetModelOperationConfiguration *)v11 setLanguage:languageCopy];
  }

  return v11;
}

@end