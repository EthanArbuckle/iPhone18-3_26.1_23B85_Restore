@interface _SFECKeyPair(TPKeyPair)
- (id)signatureForData:()TPKeyPair withError:;
@end

@implementation _SFECKeyPair(TPKeyPair)

- (id)signatureForData:()TPKeyPair withError:
{
  v6 = a3;
  v7 = signingOperation();
  v8 = [v7 sign:v6 withKey:a1 error:a4];

  v9 = [v8 signature];

  return v9;
}

@end