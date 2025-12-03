@interface RMModelDeclarationBase
+ (BOOL)isDeclarationTypeKnown:(id)known;
+ (BOOL)isSupportedDeclaration:(id)declaration platform:(int64_t)platform scope:(int64_t)scope;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateServerToken;
@end

@implementation RMModelDeclarationBase

+ (BOOL)isDeclarationTypeKnown:(id)known
{
  knownCopy = known;
  if ([RMModelClasses classForDeclarationType:knownCopy])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[RMModelConfigurationSchema schemas];
    v6 = [v5 objectForKeyedSubscript:knownCopy];
    v4 = v6 != 0;
  }

  return v4;
}

+ (BOOL)isSupportedDeclaration:(id)declaration platform:(int64_t)platform scope:(int64_t)scope
{
  declarationCopy = declaration;
  v8 = [RMModelClasses classForDeclarationType:declarationCopy];
  if (v8)
  {
    if (([(objc_class *)v8 isSupportedForPlatform:platform scope:scope]& 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = +[RMModelConfigurationSchema schemas];
    v10 = [v9 objectForKeyedSubscript:declarationCopy];

    if (!v10 || ([v10 isSupportedForPlatform:platform scope:scope] & 1) == 0)
    {

LABEL_9:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v11 = 1;
LABEL_10:

  return v11;
}

- (void)updateServerToken
{
  v3 = MEMORY[0x277CCAC58];
  v4 = [(RMModelDeclarationBase *)self serializePayloadWithType:0];
  v7 = [v3 dataWithPropertyList:v4 format:100 options:0 error:0];

  if (v7)
  {
    rMModelSHA1HexString = [v7 RMModelSHA1HexString];
  }

  else
  {
    rMModelSHA1HexString = &stru_287451740;
  }

  objc_storeStrong(&self->_declarationServerToken, rMModelSHA1HexString);
  v6 = v7;
  if (v7)
  {

    v6 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelDeclarationBase;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_declarationType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_declarationIdentifier copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_declarationServerToken copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(RMModelAnyPayload *)self->_declarationPayload copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end