@interface _SFPublicKey
+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier;
- (_SFPublicKey)initWithAttributes:(id)attributes;
- (_SFPublicKey)initWithData:(id)data specifier:(id)specifier error:(id *)error;
- (_SFPublicKey)initWithSecKey:(__SecKey *)key;
- (id)keyData;
- (void)dealloc;
@end

@implementation _SFPublicKey

+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromClass(self);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SFKey.m" lineNumber:740 description:{@"subclass %@ must implement %@", v6, v7}];

  return 0;
}

- (_SFPublicKey)initWithAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = _SFPublicKey;
  return [(_SFKey *)&v4 initWithAttributes:attributes];
}

- (_SFPublicKey)initWithData:(id)data specifier:(id)specifier error:(id *)error
{
  dataCopy = data;
  specifierCopy = specifier;
  v10 = specifierCopy;
  if (dataCopy)
  {
    if (specifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [_SFPublicKey initWithData:specifier:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [_SFPublicKey initWithData:specifier:error:];
LABEL_3:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    v12 = [objc_opt_class() _secKeyCreationAttributesForSpecifier:v11];
    v13 = SecKeyCreateWithData(dataCopy, v12, error);
    if (v13)
    {
      v14 = v13;
      v15 = [(_SFPublicKey *)self initWithSecKey:v13];
      CFRelease(v14);
    }

    else
    {

      v15 = 0;
    }

    self = v15;

    selfCopy = self;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:4 userInfo:0];
    *error = selfCopy = 0;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_SFPublicKey)initWithSecKey:(__SecKey *)key
{
  if (!key)
  {
    [_SFPublicKey initWithSecKey:];
  }

  v5 = [objc_msgSend(objc_opt_class() "_attributesClass")];
  v6 = [objc_opt_class() _specifierForSecKey:key];
  v7 = [v5 initWithSpecifier:v6];
  v12.receiver = self;
  v12.super_class = _SFPublicKey;
  v8 = [(_SFKey *)&v12 initWithAttributes:v7];

  if (v8)
  {
    v9 = objc_alloc_init(SFPublicKey_Ivars);
    publicKeyInternal = v8->_publicKeyInternal;
    v8->_publicKeyInternal = v9;

    *(v8->_publicKeyInternal + 1) = key;
    CFRetain(*(v8->_publicKeyInternal + 1));
  }

  return v8;
}

- (id)keyData
{
  v2 = SecKeyCopyExternalRepresentation(*(self->_publicKeyInternal + 1), 0);

  return v2;
}

- (void)dealloc
{
  v3 = *(self->_publicKeyInternal + 1);
  if (v3)
  {
    CFRelease(v3);
    *(self->_publicKeyInternal + 1) = 0;
  }

  v4.receiver = self;
  v4.super_class = _SFPublicKey;
  [(_SFPublicKey *)&v4 dealloc];
}

- (void)initWithData:specifier:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"data" object:? file:? lineNumber:? description:?];
}

- (void)initWithData:specifier:error:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"specifier2" object:? file:? lineNumber:? description:?];
}

- (void)initWithSecKey:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"secKey" object:? file:? lineNumber:? description:?];
}

@end