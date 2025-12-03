@interface _SFECPublicKey(TPPublicKey)
- (BOOL)checkSignature:()TPPublicKey matchesData:;
@end

@implementation _SFECPublicKey(TPPublicKey)

- (BOOL)checkSignature:()TPPublicKey matchesData:
{
  v6 = a4;
  v7 = a3;
  v8 = signingOperation();
  v9 = [objc_alloc(MEMORY[0x277D4D308]) initWithData:v6 signature:v7];

  v10 = [v8 verify:v9 withKey:self error:0];
  v11 = v10 != 0;

  return v11;
}

@end