@interface RMModelDeclarationBase
+ (BOOL)isDeclarationTypeKnown:(id)a3;
+ (BOOL)isSupportedDeclaration:(id)a3 platform:(int64_t)a4 scope:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)updateServerToken;
@end

@implementation RMModelDeclarationBase

+ (BOOL)isDeclarationTypeKnown:(id)a3
{
  v3 = a3;
  if ([RMModelClasses classForDeclarationType:v3])
  {
    v4 = 1;
  }

  else
  {
    v5 = +[RMModelConfigurationSchema schemas];
    v6 = [v5 objectForKeyedSubscript:v3];
    v4 = v6 != 0;
  }

  return v4;
}

+ (BOOL)isSupportedDeclaration:(id)a3 platform:(int64_t)a4 scope:(int64_t)a5
{
  v7 = a3;
  v8 = [RMModelClasses classForDeclarationType:v7];
  if (v8)
  {
    if (([(objc_class *)v8 isSupportedForPlatform:a4 scope:a5]& 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = +[RMModelConfigurationSchema schemas];
    v10 = [v9 objectForKeyedSubscript:v7];

    if (!v10 || ([v10 isSupportedForPlatform:a4 scope:a5] & 1) == 0)
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
    v5 = [v7 RMModelSHA1HexString];
  }

  else
  {
    v5 = &stru_287451740;
  }

  objc_storeStrong(&self->_declarationServerToken, v5);
  v6 = v7;
  if (v7)
  {

    v6 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelDeclarationBase;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
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