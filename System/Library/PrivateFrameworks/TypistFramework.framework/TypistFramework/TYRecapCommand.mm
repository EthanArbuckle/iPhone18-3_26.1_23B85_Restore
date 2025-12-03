@interface TYRecapCommand
- (id)description;
@end

@implementation TYRecapCommand

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  commandDescription = [(TYRecapCommand *)self commandDescription];
  commandString = [(TYRecapCommand *)self commandString];
  v6 = [v3 stringWithFormat:@"%@\n(%@)", commandDescription, commandString];

  return v6;
}

@end