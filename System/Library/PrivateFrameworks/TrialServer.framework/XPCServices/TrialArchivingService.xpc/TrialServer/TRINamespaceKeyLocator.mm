@interface TRINamespaceKeyLocator
+ (id)_fileNameForNamespaceIdentifier:(id)a3 asymmetric:(BOOL)a4;
+ (id)_namespaceIdForNamespace:(id)a3;
@end

@implementation TRINamespaceKeyLocator

+ (id)_fileNameForNamespaceIdentifier:(id)a3 asymmetric:(BOOL)a4
{
  v4 = @"com.apple.trial.%@.namespacekey";
  if (a4)
  {
    v4 = @"com.apple.trial.%@.namespacekey.priv";
  }

  v5 = [NSString stringWithFormat:v4, a3];

  return v5;
}

+ (id)_namespaceIdForNamespace:(id)a3
{
  v3 = a3;
  v9 = -1;
  v4 = TRINamespace_NamespaceId_EnumDescriptor();
  v5 = [v4 getValue:&v9 forEnumTextFormatName:v3];

  if (v5)
  {
    v6 = [NSNumber numberWithInt:v9];
  }

  else
  {
    v7 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to find namespace id for namespace name: %@. This is expected for self-service namespaces with exclusively namespace names", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

@end