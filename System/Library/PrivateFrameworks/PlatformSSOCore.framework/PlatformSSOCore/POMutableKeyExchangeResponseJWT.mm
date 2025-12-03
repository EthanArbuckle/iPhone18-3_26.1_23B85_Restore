@interface POMutableKeyExchangeResponseJWT
- (id)description;
@end

@implementation POMutableKeyExchangeResponseJWT

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  header = [(POMutableJWT *)self header];
  body = [(POMutableKeyExchangeResponseJWT *)self body];
  stringRepresentation = [(POJWT *)self stringRepresentation];
  v7 = [v3 stringWithFormat:@"%@.%@\n%@", header, body, stringRepresentation];

  return v7;
}

@end