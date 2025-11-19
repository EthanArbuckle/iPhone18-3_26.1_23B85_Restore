@interface _SFPublicKey
+ (id)_secKeyCreationAttributesForSpecifier:(id)a3;
- (_SFPublicKey)initWithAttributes:(id)a3;
- (_SFPublicKey)initWithData:(id)a3 specifier:(id)a4 error:(id *)a5;
- (_SFPublicKey)initWithSecKey:(__SecKey *)a3;
- (id)keyData;
- (void)dealloc;
@end

@implementation _SFPublicKey

+ (id)_secKeyCreationAttributesForSpecifier:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromClass(a1);
  v7 = NSStringFromSelector(a2);
  [v5 handleFailureInMethod:a2 object:a1 file:@"SFKey.m" lineNumber:740 description:{@"subclass %@ must implement %@", v6, v7}];

  return 0;
}

- (_SFPublicKey)initWithAttributes:(id)a3
{
  v4.receiver = self;
  v4.super_class = _SFPublicKey;
  return [(_SFKey *)&v4 initWithAttributes:a3];
}

- (_SFPublicKey)initWithData:(id)a3 specifier:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
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
    v13 = SecKeyCreateWithData(v8, v12, a5);
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

    v16 = self;
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"SFCryptoServicesErrorDomain" code:4 userInfo:0];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (_SFPublicKey)initWithSecKey:(__SecKey *)a3
{
  if (!a3)
  {
    [_SFPublicKey initWithSecKey:];
  }

  v5 = [objc_msgSend(objc_opt_class() "_attributesClass")];
  v6 = [objc_opt_class() _specifierForSecKey:a3];
  v7 = [v5 initWithSpecifier:v6];
  v12.receiver = self;
  v12.super_class = _SFPublicKey;
  v8 = [(_SFKey *)&v12 initWithAttributes:v7];

  if (v8)
  {
    v9 = objc_alloc_init(SFPublicKey_Ivars);
    publicKeyInternal = v8->_publicKeyInternal;
    v8->_publicKeyInternal = v9;

    *(v8->_publicKeyInternal + 1) = a3;
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