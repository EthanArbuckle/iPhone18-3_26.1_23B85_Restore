@interface SearchUICallCommandHandler
- (id)destinationPunchout;
@end

@implementation SearchUICallCommandHandler

- (id)destinationPunchout
{
  v3 = objc_opt_new();
  [v3 setScheme:@"tel"];
  command = [(SearchUICommandHandler *)self command];
  phoneNumber = [command phoneNumber];
  [v3 setPath:phoneNumber];

  v6 = MEMORY[0x1E69CA320];
  v7 = [v3 URL];
  v8 = [v6 punchoutWithURL:v7];

  return v8;
}

@end