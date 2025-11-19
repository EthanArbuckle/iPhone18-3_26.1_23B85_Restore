@interface _SFKey
+ (Class)_attributesClass;
+ (id)_specifierForSecKey:(__SecKey *)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)keyDomain;
- (_SFKey)initWithAttributes:(id)a3;
- (_SFKey)initWithData:(id)a3 specifier:(id)a4 error:(id *)a5;
- (_SFKeySpecifier)keySpecifier;
- (id)initRandomKeyWithSpecifier:(id)a3;
@end

@implementation _SFKey

+ (Class)_attributesClass
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"SFKey.m" lineNumber:583 description:@"attempt to get attributes class from abstract base class SFKey - must be provided by subclass"];

  return 0;
}

+ (id)_specifierForSecKey:(__SecKey *)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:a1 file:@"SFKey.m" lineNumber:589 description:@"attempt to get sec key specifier from abstract base class SFKey - must be provided by subclass"];

  return 0;
}

- (_SFKey)initWithData:(id)a3 specifier:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"attempt to initialize abstract base class %@ - initialize a concrete subclass instead", v10];

  v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v11 userInfo:0];
  objc_exception_throw(v12);
}

- (_SFKey)initWithAttributes:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = _SFKey;
  v5 = [(_SFKey *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFKey_Ivars);
    keyInternal = v5->_keyInternal;
    v5->_keyInternal = v6;

    v8 = [v4 copyWithZone:0];
    v9 = v5->_keyInternal;
    v10 = v9[1];
    v9[1] = v8;
  }

  return v5;
}

- (id)initRandomKeyWithSpecifier:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"attempt to creata random key for abstract base class %@ - initialize a concrete subclass instead", v6];

  v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v7 userInfo:0];
  objc_exception_throw(v8);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v9 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(_SFKey *)self keyData];
      v8 = [(_SFKey *)v6 keyData];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_SFKeySpecifier)keySpecifier
{
  v2 = [*(self->_keyInternal + 1) keySpecifier];
  v3 = [v2 copy];

  return v3;
}

- (NSString)keyDomain
{
  v2 = [*(self->_keyInternal + 1) keyDomain];
  v3 = [v2 copy];

  return v3;
}

@end