@interface POAssertionTokenJWT
- (POAssertionTokenJWT)initWithString:(id)string;
- (id)description;
- (id)mutableCopy;
- (void)updateDecodedBody;
@end

@implementation POAssertionTokenJWT

- (POAssertionTokenJWT)initWithString:(id)string
{
  v9.receiver = self;
  v9.super_class = POAssertionTokenJWT;
  v3 = [(POJWT *)&v9 initWithString:string];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CBEA90]);
    rawBody = [(POJWT *)v3 rawBody];
    v6 = [v4 psso_initWithBase64URLEncodedString:rawBody];

    if (v6)
    {
      v7 = [[POAssertionJWTBody alloc] initWithJWTData:v6];
      [(POAssertionTokenJWT *)v3 setDecodedBody:v7];
    }
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  decodedHeader = [(POJWT *)self decodedHeader];
  decodedBody = [(POAssertionTokenJWT *)self decodedBody];
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
        v11 = [[POAssertionJWTBody alloc] initWithJWTData:v12];
        [(POAssertionTokenJWT *)self setDecodedBody:v11];
      }

      CFAllocatorSetDefault(Default);
    }
  }
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableAssertionTokenJWT);
  decodedBody = [(POAssertionTokenJWT *)self decodedBody];
  v5 = [decodedBody mutableCopy];
  [(POMutableAssertionTokenJWT *)v3 setBody:v5];

  decodedHeader = [(POJWT *)self decodedHeader];
  v7 = [decodedHeader mutableCopy];
  [(POMutableJWT *)v3 setHeader:v7];

  return v3;
}

@end