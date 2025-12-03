@interface POLoginResponseTokenJWT
- (POLoginResponseTokenJWT)initWithString:(id)string;
- (id)description;
- (id)mutableCopy;
- (void)updateDecodedBody;
@end

@implementation POLoginResponseTokenJWT

- (POLoginResponseTokenJWT)initWithString:(id)string
{
  v11.receiver = self;
  v11.super_class = POLoginResponseTokenJWT;
  v3 = [(POJWT *)&v11 initWithString:string];
  v4 = v3;
  if (v3)
  {
    rawBody = [(POJWT *)v3 rawBody];

    if (rawBody)
    {
      v6 = objc_alloc(MEMORY[0x277CBEA90]);
      rawBody2 = [(POJWT *)v4 rawBody];
      v8 = [v6 psso_initWithBase64URLEncodedString:rawBody2];

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
  decodedHeader = [(POJWT *)self decodedHeader];
  decodedBody = [(POLoginResponseTokenJWT *)self decodedBody];
  stringRepresentation = [(POJWT *)self stringRepresentation];
  v7 = [v3 stringWithFormat:@"%@.%@\n%@", decodedHeader, decodedBody, stringRepresentation];

  return v7;
}

- (void)updateDecodedBody
{
  rawBody = [(POJWT *)self rawBody];
  if (rawBody)
  {
    v4 = rawBody;
    decodedHeader = [(POJWT *)self decodedHeader];
    v6 = [decodedHeader cty];

    if (!v6)
    {
      Default = CFAllocatorGetDefault();
      v8 = SecCFAllocatorZeroize();
      CFAllocatorSetDefault(v8);
      v9 = objc_alloc(MEMORY[0x277CBEA90]);
      rawBody2 = [(POJWT *)self rawBody];
      v12 = [v9 psso_initWithBase64URLEncodedString:rawBody2];

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
  decodedBody = [(POLoginResponseTokenJWT *)self decodedBody];
  v5 = [decodedBody mutableCopy];
  [(POMutableLoginResponseTokenJWT *)v3 setBody:v5];

  decodedHeader = [(POJWT *)self decodedHeader];
  v7 = [decodedHeader mutableCopy];
  [(POMutableJWT *)v3 setHeader:v7];

  return v3;
}

@end