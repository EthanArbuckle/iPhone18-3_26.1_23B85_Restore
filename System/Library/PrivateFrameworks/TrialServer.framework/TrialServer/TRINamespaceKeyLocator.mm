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

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:v4, a3];

  return v5;
}

+ (id)_namespaceIdForNamespace:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v10 = -1;
  v4 = TRINamespace_NamespaceId_EnumDescriptor();
  v5 = [v4 getValue:&v10 forEnumTextFormatName:v3];

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
      v12 = v3;
      _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Unable to find namespace id for namespace name: %@. This is expected for self-service namespaces with exclusively namespace names", buf, 0xCu);
    }

    v6 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

@end