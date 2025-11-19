@interface POKeyRequestJWT
- (POKeyRequestJWT)initWithString:(id)a3;
- (id)description;
- (id)mutableCopy;
- (void)updateDecodedBody;
@end

@implementation POKeyRequestJWT

- (POKeyRequestJWT)initWithString:(id)a3
{
  v9.receiver = self;
  v9.super_class = POKeyRequestJWT;
  v3 = [(POJWT *)&v9 initWithString:a3];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    v5 = [(POJWT *)v3 rawBody];
    v6 = [v4 psso_initWithBase64URLEncodedString:v5];

    if (v6)
    {
      v7 = [(_POJWTBodyBase *)[POKeyRequestJWTBody alloc] initWithJWTData:v6];
      [(POKeyRequestJWT *)v3 setDecodedBody:v7];
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(POJWT *)self decodedHeader];
  v5 = [(POKeyRequestJWT *)self decodedBody];
  v6 = [(POJWT *)self stringRepresentation];
  v7 = [v3 stringWithFormat:@"%@.%@\n%@", v4, v5, v6];

  return v7;
}

- (void)updateDecodedBody
{
  v3 = [(POJWT *)self rawBody];
  if (v3)
  {
    v4 = v3;
    v5 = [(POJWT *)self decodedHeader];
    v6 = [v5 cty];

    if (!v6)
    {
      Default = CFAllocatorGetDefault();
      v8 = SecCFAllocatorZeroize();
      CFAllocatorSetDefault(v8);
      v9 = objc_alloc(MEMORY[0x277CBEA90]);
      v10 = [(POJWT *)self rawBody];
      v12 = [v9 psso_initWithBase64URLEncodedString:v10];

      if (v12)
      {
        v11 = [(_POJWTBodyBase *)[POKeyRequestJWTBody alloc] initWithJWTData:v12];
        [(POKeyRequestJWT *)self setDecodedBody:v11];
      }

      CFAllocatorSetDefault(Default);
    }
  }
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableKeyRequestJWT);
  v4 = [(POKeyRequestJWT *)self decodedBody];
  v5 = [v4 mutableCopy];
  [(POMutableKeyRequestJWT *)v3 setBody:v5];

  v6 = [(POJWT *)self decodedHeader];
  v7 = [v6 mutableCopy];
  [(POMutableJWT *)v3 setHeader:v7];

  return v3;
}

@end