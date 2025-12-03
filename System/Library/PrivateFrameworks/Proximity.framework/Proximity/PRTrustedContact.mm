@interface PRTrustedContact
- (BOOL)isEqual:(id)equal;
- (PRTrustedContact)init;
- (PRTrustedContact)initWithCoder:(id)coder;
- (PRTrustedContact)initWithContactKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PRTrustedContact

- (PRTrustedContact)init
{
  [(PRTrustedContact *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PRTrustedContact)initWithContactKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    [(PRTrustedContact *)a2 initWithContactKey:?];
  }

  if ([keyCopy length] != 6)
  {
    [(PRTrustedContact *)a2 initWithContactKey:?];
  }

  v10.receiver = self;
  v10.super_class = PRTrustedContact;
  v7 = [(PRTrustedContact *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_contactKey, key);
  }

  return v8;
}

- (PRTrustedContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContactKey"];

  v6 = [(PRTrustedContact *)self initWithContactKey:v5];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PRTrustedContact alloc];
  contactKey = self->_contactKey;

  return [(PRTrustedContact *)v4 initWithContactKey:contactKey];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactKey = self->_contactKey;
    contactKey = [equalCopy contactKey];
    v7 = [(NSData *)contactKey isEqualToData:contactKey];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)initWithContactKey:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRTrustedContact.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"contactKey"}];
}

- (void)initWithContactKey:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PRTrustedContact.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"[contactKey length] == 6"}];
}

@end