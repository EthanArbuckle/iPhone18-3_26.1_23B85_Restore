@interface SearchUICallCommandHandler
- (id)destinationPunchout;
@end

@implementation SearchUICallCommandHandler

- (id)destinationPunchout
{
  v3 = objc_opt_new();
  [v3 setScheme:@"tel"];
  v4 = [(SearchUICommandHandler *)self command];
  v5 = [v4 phoneNumber];
  [v3 setPath:v5];

  v6 = MEMORY[0x1E69CA320];
  v7 = [v3 URL];
  v8 = [v6 punchoutWithURL:v7];

  return v8;
}

@end