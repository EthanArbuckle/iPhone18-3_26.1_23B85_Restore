@interface _SFECPublicKey
+ (id)_secKeyCreationAttributesForSpecifier:(id)a3;
+ (id)keyWithSubjectPublicKeyInfo:(id)a3;
- (id)encodeSubjectPublicKeyInfo;
- (id)performWithCCKey:(id)a3;
@end

@implementation _SFECPublicKey

+ (id)_secKeyCreationAttributesForSpecifier:(id)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBFE0], *MEMORY[0x277CDC000]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CDC090], *MEMORY[0x277CBED28]);
  v5 = *MEMORY[0x277CDC018];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 curve];

  v8 = [v6 numberWithInteger:ECKeyBitSize(v7)];
  CFDictionaryAddValue(Mutable, v5, v8);

  return Mutable;
}

- (id)performWithCCKey:(id)a3
{
  error[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_SFKey *)self keySpecifier];
  v6 = (24 * *CCCurveParameters([v5 curve]) + 31) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = error - v7;
  error[0] = 0;
  v9 = SecKeyCopyExternalRepresentation(*(self->super._publicKeyInternal + 1), error);
  v10 = error[0];
  if (-[__CFData length](v9, "length") && ccec_x963_import_pub_size() && (-[_SFKey keySpecifier](self, "keySpecifier"), v11 = objc_claimAutoreleasedReturnValue(), CCCurveParameters([v11 curve]), -[__CFData length](v9, "length"), -[__CFData bytes](v9, "bytes"), v12 = ccec_x963_import_pub(), v11, !v12))
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

- (id)encodeSubjectPublicKeyInfo
{
  [(_SFPublicKey *)self _secKey];
  v2 = SecKeyCopySubjectPublicKeyInfo();

  return v2;
}

+ (id)keyWithSubjectPublicKeyInfo:(id)a3
{
  v3 = SecKeyCreateFromSubjectPublicKeyInfoData();
  if (v3)
  {
    v4 = v3;
    v5 = [(_SFPublicKey *)[_SFECPublicKey alloc] initWithSecKey:v3];
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end