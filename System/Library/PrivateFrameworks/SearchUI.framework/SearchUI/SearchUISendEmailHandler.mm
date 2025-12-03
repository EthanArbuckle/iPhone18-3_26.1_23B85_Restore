@interface SearchUISendEmailHandler
- (id)destinationPunchout;
@end

@implementation SearchUISendEmailHandler

- (id)destinationPunchout
{
  v3 = objc_opt_new();
  [v3 setScheme:@"mailto"];
  command = [(SearchUICommandHandler *)self command];
  email = [command email];
  [v3 setPath:email];

  v6 = MEMORY[0x1E69CA320];
  v7 = [v3 URL];
  v8 = [v6 punchoutWithURL:v7];

  return v8;
}

@end