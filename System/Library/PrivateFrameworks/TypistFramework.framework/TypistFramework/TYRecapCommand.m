@interface TYRecapCommand
- (id)description;
@end

@implementation TYRecapCommand

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TYRecapCommand *)self commandDescription];
  v5 = [(TYRecapCommand *)self commandString];
  v6 = [v3 stringWithFormat:@"%@\n(%@)", v4, v5];

  return v6;
}

@end