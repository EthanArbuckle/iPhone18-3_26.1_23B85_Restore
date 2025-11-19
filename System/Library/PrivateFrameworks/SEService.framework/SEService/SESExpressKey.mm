@interface SESExpressKey
+ (id)withKeyIdentifier:(id)a3 appletIdentifier:(id)a4 configuration:(id)a5;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation SESExpressKey

+ (id)withKeyIdentifier:(id)a3 appletIdentifier:(id)a4 configuration:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_opt_new();
  v11 = v10[1];
  v10[1] = v7;
  v12 = v7;

  v13 = v10[2];
  v10[2] = v8;
  v14 = v8;

  v15 = v10[3];
  v10[3] = v9;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SESExpressKey *)self keyIdentifier];
    v6 = [v4 keyIdentifier];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(SESExpressKey *)self keyIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end