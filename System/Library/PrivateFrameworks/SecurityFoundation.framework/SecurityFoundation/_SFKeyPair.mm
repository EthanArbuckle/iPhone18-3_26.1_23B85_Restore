@interface _SFKeyPair
+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier;
- (NSString)privateKeyDomain;
- (_SFKeyPair)initWithAttributes:(id)attributes;
- (_SFKeyPair)initWithData:(id)data specifier:(id)specifier error:(id *)error;
- (_SFKeyPair)initWithSecKey:(__SecKey *)key;
- (id)initRandomKeyPairWithSpecifier:(id)specifier privateKeyDomain:(id)domain;
- (id)keyData;
- (void)dealloc;
@end

@implementation _SFKeyPair

+ (id)_secKeyCreationAttributesForSpecifier:(id)specifier
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromClass(self);
  v7 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SFKey.m" lineNumber:819 description:{@"subclass %@ must implement %@", v6, v7}];

  return 0;
}

- (_SFKeyPair)initWithAttributes:(id)attributes
{
  v4.receiver = self;
  v4.super_class = _SFKeyPair;
  return [(_SFKey *)&v4 initWithAttributes:attributes];
}

- (_SFKeyPair)initWithData:(id)data specifier:(id)specifier error:(id *)error
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
    [_SFKeyPair initWithData:specifier:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [_SFKeyPair initWithData:specifier:error:];
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
      v15 = [(_SFKeyPair *)self initWithSecKey:v13];
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

- (_SFKeyPair)initWithSecKey:(__SecKey *)key
{
  if (!key)
  {
    [_SFKeyPair initWithSecKey:];
  }

  v5 = [objc_msgSend(objc_opt_class() "_attributesClass")];
  v6 = [objc_opt_class() _specifierForSecKey:key];
  v7 = [v5 initWithSpecifier:v6];
  v12.receiver = self;
  v12.super_class = _SFKeyPair;
  v8 = [(_SFKey *)&v12 initWithAttributes:v7];

  if (v8)
  {
    v9 = objc_alloc_init(SFKeyPair_Ivars);
    keyPairInternal = v8->_keyPairInternal;
    v8->_keyPairInternal = v9;

    *(v8->_keyPairInternal + 1) = key;
    CFRetain(*(v8->_keyPairInternal + 1));
  }

  return v8;
}

- (id)initRandomKeyPairWithSpecifier:(id)specifier privateKeyDomain:(id)domain
{
  specifierCopy = specifier;
  v6 = objc_opt_new();
  v7 = [(_SFKeyPair *)self initWithData:v6 specifier:specifierCopy error:0];

  return v7;
}

- (NSString)privateKeyDomain
{
  v2 = [*(self->_keyPairInternal + 2) copy];

  return v2;
}

- (id)keyData
{
  v2 = SecKeyCopyExternalRepresentation(*(self->_keyPairInternal + 1), 0);

  return v2;
}

- (void)dealloc
{
  v3 = *(self->_keyPairInternal + 1);
  if (v3)
  {
    CFRelease(v3);
    *(self->_keyPairInternal + 1) = 0;
  }

  v4.receiver = self;
  v4.super_class = _SFKeyPair;
  [(_SFKeyPair *)&v4 dealloc];
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