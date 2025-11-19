@interface POMutableKeyExchangeResponseJWT
- (id)description;
@end

@implementation POMutableKeyExchangeResponseJWT

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(POMutableJWT *)self header];
  v5 = [(POMutableKeyExchangeResponseJWT *)self body];
  v6 = [(POJWT *)self stringRepresentation];
  v7 = [v3 stringWithFormat:@"%@.%@\n%@", v4, v5, v6];

  return v7;
}

@end