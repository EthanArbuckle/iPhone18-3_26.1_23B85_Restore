@interface RMModelAnyDeclaration
+ (id)buildWithType:(id)a3 identifier:(id)a4 payload:(id)a5;
- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)declarationClassType;
@end

@implementation RMModelAnyDeclaration

+ (id)buildWithType:(id)a3 identifier:(id)a4 payload:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setDeclarationType:v9];

  [v10 setDeclarationIdentifier:v8];
  v11 = [v7 copy];

  [v10 setPayload:v11];
  [v10 updateServerToken];

  return v10;
}

- (id)declarationClassType
{
  v3 = [(RMModelDeclarationBase *)self declarationType];
  v4 = [v3 hasPrefix:@"com.apple.activation."];

  if (v4)
  {
    return @"activation";
  }

  v6 = [(RMModelDeclarationBase *)self declarationType];
  v7 = [v6 hasPrefix:@"com.apple.asset."];

  if (v7)
  {
    return @"asset";
  }

  v8 = [(RMModelDeclarationBase *)self declarationType];
  v9 = [v8 hasPrefix:@"com.apple.configuration."];

  if (v9)
  {
    return @"configuration";
  }

  v10 = [(RMModelDeclarationBase *)self declarationType];
  v11 = [v10 hasPrefix:@"com.apple.management."];

  if (v11)
  {
    return @"management";
  }

  else
  {
    return @"unknown";
  }
}

- (BOOL)loadPayloadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v6 = [a3 copy];
  [(RMModelAnyDeclaration *)self setPayload:v6];

  return 1;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = RMModelAnyDeclaration;
  v4 = [(RMModelDeclarationBase *)&v8 copyWithZone:a3];
  v5 = [(NSDictionary *)self->_payload copy];
  v6 = v4[6];
  v4[6] = v5;

  return v4;
}

@end