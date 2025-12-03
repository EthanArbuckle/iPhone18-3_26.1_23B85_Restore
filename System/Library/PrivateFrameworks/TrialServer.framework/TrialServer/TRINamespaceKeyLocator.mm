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

  identifier = [MEMORY[0x277CCACA8] stringWithFormat:v4, identifier];

  return identifier;
}

+ (id)_namespaceIdForNamespace:(id)namespace
{
  v13 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  v10 = -1;
  v4 = TRINamespace_NamespaceId_EnumDescriptor();
  v5 = [v4 getValue:&v10 forEnumTextFormatName:namespaceCopy];

  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  }

  else
  {
    v7 = TRILogCategory_Archiving();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = namespaceCopy;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Unable to find namespace id for namespace name: %@. This is expected for self-service namespaces with exclusively namespace names", buf, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end