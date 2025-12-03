@interface ACAccount(Seeding)
- (void)fetchCredentialTokenWithCompletion:()Seeding;
@end

@implementation ACAccount(Seeding)

- (void)fetchCredentialTokenWithCompletion:()Seeding
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__ACAccount_Seeding__fetchCredentialTokenWithCompletion___block_invoke;
  v6[3] = &unk_2787CC208;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [self aida_tokenForService:@"com.apple.gs.beta.auth" completionHandler:v6];
}

@end