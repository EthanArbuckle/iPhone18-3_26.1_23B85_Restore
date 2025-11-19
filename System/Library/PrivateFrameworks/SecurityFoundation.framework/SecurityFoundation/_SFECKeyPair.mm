@interface _SFECKeyPair
+ (id)_secKeyCreationAttributesForSpecifier:(id)a3;
- (id)initRandomKeyPairWithSpecifier:(id)a3 privateKeyDomain:(id)a4;
- (id)performWithCCKey:(id)a3;
- (id)publicKey;
@end

@implementation _SFECKeyPair

+ (id)_secKeyCreationAttributesForSpecifier:(id)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDBFF0]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  v5 = *MEMORY[0x277CDC018];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 curve];

  v8 = [v6 numberWithInteger:ECKeyBitSize(v7)];
  CFDictionaryAddValue(Mutable, v5, v8);

  return Mutable;
}

- (id)initRandomKeyPairWithSpecifier:(id)a3 privateKeyDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [_SFECKeyPair initRandomKeyPairWithSpecifier:privateKeyDomain:];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
    v10 = *MEMORY[0x277CDC018];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{ECKeyBitSize(objc_msgSend(v8, "curve"))}];
    CFDictionarySetValue(Mutable, v10, v11);
    CFDictionarySetValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
    error = 0;
    v12 = SecKeyCreateRandomKey(Mutable, &error);
    v17.receiver = self;
    v17.super_class = _SFECKeyPair;
    v13 = [(_SFKeyPair *)&v17 initWithSecKey:v12];
    v14 = v13;
    if (v13 && error)
    {

      CFRelease(error);
      v14 = 0;
    }

    CFRelease(Mutable);
    CFRelease(v12);
    self = v14;

    v15 = self;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)publicKey
{
  v2 = SecKeyCopyPublicKey([(_SFKeyPair *)self _secKey]);
  v3 = [(_SFPublicKey *)[_SFECPublicKey alloc] initWithSecKey:v2];
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

- (id)performWithCCKey:(id)a3
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_SFKey *)self keySpecifier];
  v6 = (32 * *CCCurveParameters([v5 curve])) | 0x10;
  MEMORY[0x28223BE20]();
  v8 = error - v7;
  error[0] = 0;
  v9 = SecKeyCopyExternalRepresentation(*(self->super._keyPairInternal + 1), error);
  v10 = error[0];
  if (-[__CFData length](v9, "length") && ccec_x963_import_priv_size() && (-[_SFKey keySpecifier](self, "keySpecifier"), v11 = objc_claimAutoreleasedReturnValue(), CCCurveParameters([v11 curve]), -[__CFData length](v9, "length"), -[__CFData bytes](v9, "bytes"), v12 = ccec_x963_import_priv(), v11, !v12))
  {
    v13 = 0;
  }

  else
  {
    v13 = v10;
    if (!v10)
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SFKeychainErrorDomain" code:2 userInfo:0];
      v10 = v13;
    }
  }

  v14 = v4[2](v4, v8, v13);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)initRandomKeyPairWithSpecifier:privateKeyDomain:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end