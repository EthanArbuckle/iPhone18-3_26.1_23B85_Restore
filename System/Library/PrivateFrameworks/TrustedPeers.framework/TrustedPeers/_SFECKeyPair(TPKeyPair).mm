@interface _SFECKeyPair(TPKeyPair)
- (id)signatureForData:()TPKeyPair withError:;
@end

@implementation _SFECKeyPair(TPKeyPair)

- (id)signatureForData:()TPKeyPair withError:
{
  v6 = a3;
  v7 = signingOperation();
  v8 = [v7 sign:v6 withKey:self error:a4];

  signature = [v8 signature];

  return signature;
}

@end