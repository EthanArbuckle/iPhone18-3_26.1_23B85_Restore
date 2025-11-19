@interface POLoginResponseTokenJWT
- (POLoginResponseTokenJWT)initWithString:(id)a3;
- (id)description;
- (id)mutableCopy;
- (void)updateDecodedBody;
@end

@implementation POLoginResponseTokenJWT

- (POLoginResponseTokenJWT)initWithString:(id)a3
{
  v11.receiver = self;
  v11.super_class = POLoginResponseTokenJWT;
  v3 = [(POJWT *)&v11 initWithString:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(POJWT *)v3 rawBody];

    if (v5)
    {
      v6 = objc_alloc(MEMORY[0x277CBEA90]);
      v7 = [(POJWT *)v4 rawBody];
      v8 = [v6 psso_initWithBase64URLEncodedString:v7];

      if (v8)
      {
        v9 = [(_POJWTBodyBase *)[POLoginResponseJWTBody alloc] initWithJWTData:v8];
        [(POLoginResponseTokenJWT *)v4 setDecodedBody:v9];
      }
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(POJWT *)self decodedHeader];
  v5 = [(POLoginResponseTokenJWT *)self decodedBody];
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
        v11 = [(_POJWTBodyBase *)[POLoginResponseJWTBody alloc] initWithJWTData:v12];
        [(POLoginResponseTokenJWT *)self setDecodedBody:v11];
      }

      CFAllocatorSetDefault(Default);
    }
  }
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableLoginResponseTokenJWT);
  v4 = [(POLoginResponseTokenJWT *)self decodedBody];
  v5 = [v4 mutableCopy];
  [(POMutableLoginResponseTokenJWT *)v3 setBody:v5];

  v6 = [(POJWT *)self decodedHeader];
  v7 = [v6 mutableCopy];
  [(POMutableJWT *)v3 setHeader:v7];

  return v3;
}

@end