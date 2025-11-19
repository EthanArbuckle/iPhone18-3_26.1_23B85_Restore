@interface RMUIDeclarationInfo
- (RMUIDeclarationInfo)initWithDeclaration:(id)a3 label:(id)a4 descriptor:(id)a5;
- (RMUIDeclarationInfo)initWithDeclarationIdentifier:(id)a3 declarationServerToken:(id)a4 declarationType:(id)a5 label:(id)a6 descriptor:(id)a7;
- (RMUIDeclarationInfo)initWithProfileDeclaration:(id)a3 label:(id)a4 profileIdentifier:(id)a5 isRequired:(BOOL)a6 isActive:(BOOL)a7;
@end

@implementation RMUIDeclarationInfo

- (RMUIDeclarationInfo)initWithDeclarationIdentifier:(id)a3 declarationServerToken:(id)a4 declarationType:(id)a5 label:(id)a6 descriptor:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = RMUIDeclarationInfo;
  v17 = [(RMUIDeclarationInfo *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_declarationIdentifier, a3);
    objc_storeStrong(&v18->_declarationServerToken, a4);
    objc_storeStrong(&v18->_declarationType, a5);
    objc_storeStrong(&v18->_label, a6);
    objc_storeStrong(&v18->_descriptor, a7);
  }

  return v18;
}

- (RMUIDeclarationInfo)initWithDeclaration:(id)a3 label:(id)a4 descriptor:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = a4;
  v12 = [v9 declarationIdentifier];
  v13 = [v9 declarationServerToken];
  v14 = [v9 declarationType];
  v15 = [(RMUIDeclarationInfo *)self initWithDeclarationIdentifier:v12 declarationServerToken:v13 declarationType:v14 label:v11 descriptor:v10];

  if (v15)
  {
    objc_storeStrong(&v15->_declaration, a3);
  }

  return v15;
}

- (RMUIDeclarationInfo)initWithProfileDeclaration:(id)a3 label:(id)a4 profileIdentifier:(id)a5 isRequired:(BOOL)a6 isActive:(BOOL)a7
{
  v13 = a5;
  v14 = [(RMUIDeclarationInfo *)self initWithDeclaration:a3 label:a4 descriptor:0];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_profileIdentifier, a5);
    v15->_isRequired = a6;
    v15->_isActive = a7;
  }

  return v15;
}

@end