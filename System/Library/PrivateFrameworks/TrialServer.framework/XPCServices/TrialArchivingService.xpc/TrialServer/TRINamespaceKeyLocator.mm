@interface TRINamespaceKeyLocator
+ (id)_fileNameForNamespaceIdentifier:(id)identifier asymmetric:(BOOL)asymmetric;
+ (id)_namespaceIdForNamespace:(id)namespace;
@end

@implementation TRINamespaceKeyLocator

+ (id)_fileNameForNamespaceIdentifier:(id)identifier asymmetric:(BOOL)asymmetric
{
  v4 = @"com.apple.trial.%@.namespacekey";
  if (asymmetric)
  {
    v4 = @"com.apple.trial.%@.namespacekey.priv";
  }

  identifier = [NSString stringWithFormat:v4, identifier];

  return identifier;
}

+ (id)_namespaceIdForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v9 = -1;
  v4 = TRINamespace_NamespaceId_EnumDescriptor();
  v5 = [v4 getValue:&v9 forEnumTextFormatName:namespaceCopy];

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
      v11 = namespaceCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Unable to find namespace id for namespace name: %@. This is expected for self-service namespaces with exclusively namespace names", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

@end