@interface ICMutableLocalStoreAccountProperties
- (id)copyWithZone:(_NSZone *)a3;
- (void)setStorefrontIdentifier:(id)a3;
@end

@implementation ICMutableLocalStoreAccountProperties

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ICLocalStoreAccountProperties allocWithZone:](ICLocalStoreAccountProperties init];
  if (v5)
  {
    [(ICLocalStoreAccountProperties *)self _copyLocalStoreAccountPropertiesToOtherInstance:v5 withZone:a3];
  }

  return v5;
}

- (void)setStorefrontIdentifier:(id)a3
{
  v4 = a3;
  storefrontIdentifier = self->super._storefrontIdentifier;
  if (storefrontIdentifier != v4)
  {
    v8 = v4;
    storefrontIdentifier = [(NSString *)storefrontIdentifier isEqual:v4];
    v4 = v8;
    if ((storefrontIdentifier & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._storefrontIdentifier;
      self->super._storefrontIdentifier = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](storefrontIdentifier, v4);
}

@end