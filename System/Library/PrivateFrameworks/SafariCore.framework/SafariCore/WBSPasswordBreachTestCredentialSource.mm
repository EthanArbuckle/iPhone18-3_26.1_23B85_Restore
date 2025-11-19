@interface WBSPasswordBreachTestCredentialSource
- (WBSPasswordBreachTestCredentialSource)initWithPasswords:(id)a3;
@end

@implementation WBSPasswordBreachTestCredentialSource

- (WBSPasswordBreachTestCredentialSource)initWithPasswords:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSPasswordBreachTestCredentialSource;
  v5 = [(WBSPasswordBreachTestCredentialSource *)&v10 init];
  if (v5)
  {
    v6 = [v4 safari_mapObjectsUsingBlock:&__block_literal_global_45];
    credentials = v5->_credentials;
    v5->_credentials = v6;

    v8 = v5;
  }

  return v5;
}

WBSPasswordBreachCredential *__59__WBSPasswordBreachTestCredentialSource_initWithPasswords___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [WBSPasswordBreachCredential alloc];
  v4 = [v2 dataUsingEncoding:4 allowLossyConversion:0];
  v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:1000.0];
  v6 = [(WBSPasswordBreachCredential *)v3 initWithPassword:v2 persistentIdentifier:v4 dateLastModified:v5];

  return v6;
}

@end