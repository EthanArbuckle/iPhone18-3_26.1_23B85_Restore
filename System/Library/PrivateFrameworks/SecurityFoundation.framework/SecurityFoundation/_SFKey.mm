@interface _SFKey
+ (Class)_attributesClass;
+ (id)_specifierForSecKey:(__SecKey *)key;
- (BOOL)isEqual:(id)equal;
- (NSString)keyDomain;
- (_SFKey)initWithAttributes:(id)attributes;
- (_SFKey)initWithData:(id)data specifier:(id)specifier error:(id *)error;
- (_SFKeySpecifier)keySpecifier;
- (id)initRandomKeyWithSpecifier:(id)specifier;
@end

@implementation _SFKey

+ (Class)_attributesClass
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SFKey.m" lineNumber:583 description:@"attempt to get attributes class from abstract base class SFKey - must be provided by subclass"];

  return 0;
}

+ (id)_specifierForSecKey:(__SecKey *)key
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SFKey.m" lineNumber:589 description:@"attempt to get sec key specifier from abstract base class SFKey - must be provided by subclass"];

  return 0;
}

- (_SFKey)initWithData:(id)data specifier:(id)specifier error:(id *)error
{
  dataCopy = data;
  specifierCopy = specifier;
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"attempt to initialize abstract base class %@ - initialize a concrete subclass instead", v10];

  v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v11 userInfo:0];
  objc_exception_throw(v12);
}

- (_SFKey)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = _SFKey;
  v5 = [(_SFKey *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc_init(SFKey_Ivars);
    keyInternal = v5->_keyInternal;
    v5->_keyInternal = v6;

    v8 = [attributesCopy copyWithZone:0];
    v9 = v5->_keyInternal;
    v10 = v9[1];
    v9[1] = v8;
  }

  return v5;
}

- (id)initRandomKeyWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"attempt to creata random key for abstract base class %@ - initialize a concrete subclass instead", v6];

  v8 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v7 userInfo:0];
  objc_exception_throw(v8);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      keyData = [(_SFKey *)self keyData];
      keyData2 = [(_SFKey *)v6 keyData];
      v9 = [keyData isEqual:keyData2];
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
  keySpecifier = [*(self->_keyInternal + 1) keySpecifier];
  v3 = [keySpecifier copy];

  return v3;
}

- (NSString)keyDomain
{
  keyDomain = [*(self->_keyInternal + 1) keyDomain];
  v3 = [keyDomain copy];

  return v3;
}

@end