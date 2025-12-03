@interface RMUIDeclarationInfo
- (RMUIDeclarationInfo)initWithDeclaration:(id)declaration label:(id)label descriptor:(id)descriptor;
- (RMUIDeclarationInfo)initWithDeclarationIdentifier:(id)identifier declarationServerToken:(id)token declarationType:(id)type label:(id)label descriptor:(id)descriptor;
- (RMUIDeclarationInfo)initWithProfileDeclaration:(id)declaration label:(id)label profileIdentifier:(id)identifier isRequired:(BOOL)required isActive:(BOOL)active;
@end

@implementation RMUIDeclarationInfo

- (RMUIDeclarationInfo)initWithDeclarationIdentifier:(id)identifier declarationServerToken:(id)token declarationType:(id)type label:(id)label descriptor:(id)descriptor
{
  identifierCopy = identifier;
  tokenCopy = token;
  typeCopy = type;
  labelCopy = label;
  descriptorCopy = descriptor;
  v21.receiver = self;
  v21.super_class = RMUIDeclarationInfo;
  v17 = [(RMUIDeclarationInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_declarationIdentifier, identifier);
    objc_storeStrong(&v18->_declarationServerToken, token);
    objc_storeStrong(&v18->_declarationType, type);
    objc_storeStrong(&v18->_label, label);
    objc_storeStrong(&v18->_descriptor, descriptor);
  }

  return v18;
}

- (RMUIDeclarationInfo)initWithDeclaration:(id)declaration label:(id)label descriptor:(id)descriptor
{
  declarationCopy = declaration;
  descriptorCopy = descriptor;
  labelCopy = label;
  declarationIdentifier = [declarationCopy declarationIdentifier];
  declarationServerToken = [declarationCopy declarationServerToken];
  declarationType = [declarationCopy declarationType];
  v15 = [(RMUIDeclarationInfo *)self initWithDeclarationIdentifier:declarationIdentifier declarationServerToken:declarationServerToken declarationType:declarationType label:labelCopy descriptor:descriptorCopy];

  if (v15)
  {
    objc_storeStrong(&v15->_declaration, declaration);
  }

  return v15;
}

- (RMUIDeclarationInfo)initWithProfileDeclaration:(id)declaration label:(id)label profileIdentifier:(id)identifier isRequired:(BOOL)required isActive:(BOOL)active
{
  identifierCopy = identifier;
  v14 = [(RMUIDeclarationInfo *)self initWithDeclaration:declaration label:label descriptor:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_profileIdentifier, identifier);
    v15->_isRequired = required;
    v15->_isActive = active;
  }

  return v15;
}

@end