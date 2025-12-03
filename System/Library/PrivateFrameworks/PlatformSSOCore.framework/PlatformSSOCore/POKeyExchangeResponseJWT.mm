@interface POKeyExchangeResponseJWT
- (POKeyExchangeResponseJWT)initWithString:(id)string;
- (id)description;
- (id)mutableCopy;
- (void)updateDecodedBody;
@end

@implementation POKeyExchangeResponseJWT

- (POKeyExchangeResponseJWT)initWithString:(id)string
{
  v11.receiver = self;
  v11.super_class = POKeyExchangeResponseJWT;
  v3 = [(POJWT *)&v11 initWithString:string];
  if (v3)
  {
    Default = CFAllocatorGetDefault();
    v5 = SecCFAllocatorZeroize();
    CFAllocatorSetDefault(v5);
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    rawBody = [(POJWT *)v3 rawBody];
    v8 = [v6 psso_initWithBase64URLEncodedString:rawBody];

    if (v8)
    {
      v9 = [(_POJWTBodyBase *)[POKeyExchangeResponseJWTBody alloc] initWithJWTData:v8];
      [(POKeyExchangeResponseJWT *)v3 setDecodedBody:v9];
    }

    CFAllocatorSetDefault(Default);
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  decodedHeader = [(POJWT *)self decodedHeader];
  decodedBody = [(POKeyExchangeResponseJWT *)self decodedBody];
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
        v11 = [(_POJWTBodyBase *)[POKeyExchangeResponseJWTBody alloc] initWithJWTData:v12];
        [(POKeyExchangeResponseJWT *)self setDecodedBody:v11];
      }

      CFAllocatorSetDefault(Default);
    }
  }
}

- (id)mutableCopy
{
  v3 = objc_alloc_init(POMutableKeyExchangeResponseJWT);
  decodedBody = [(POKeyExchangeResponseJWT *)self decodedBody];
  v5 = [decodedBody mutableCopy];
  [(POMutableKeyExchangeResponseJWT *)v3 setBody:v5];

  decodedHeader = [(POJWT *)self decodedHeader];
  v7 = [decodedHeader mutableCopy];
  [(POMutableJWT *)v3 setHeader:v7];

  return v3;
}

@end