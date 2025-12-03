@interface ICMutableLocalStoreAccountProperties
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStorefrontIdentifier:(id)identifier;
@end

@implementation ICMutableLocalStoreAccountProperties

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ICLocalStoreAccountProperties allocWithZone:](ICLocalStoreAccountProperties init];
  if (v5)
  {
    [(ICLocalStoreAccountProperties *)self _copyLocalStoreAccountPropertiesToOtherInstance:v5 withZone:zone];
  }

  return v5;
}

- (void)setStorefrontIdentifier:(id)identifier
{
  identifierCopy = identifier;
  storefrontIdentifier = self->super._storefrontIdentifier;
  if (storefrontIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    storefrontIdentifier = [(NSString *)storefrontIdentifier isEqual:identifierCopy];
    identifierCopy = v8;
    if ((storefrontIdentifier & 1) == 0)
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->super._storefrontIdentifier;
      self->super._storefrontIdentifier = v6;

      identifierCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](storefrontIdentifier, identifierCopy);
}

@end