@interface PKVirtualCard(PassSnapshot)
- (id)_genericCardIcon;
- (id)_largeAppleCardIcon;
- (void)cardArtworkWithSize:()PassSnapshot completion:;
@end

@implementation PKVirtualCard(PassSnapshot)

- (id)_largeAppleCardIcon
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = PKPassKitUIFoundationBundle();
  v2 = [v0 imageNamed:@"AppleCardAutoFillCreditCardIconLarge" inBundle:v1];

  return v2;
}

- (id)_genericCardIcon
{
  v0 = MEMORY[0x1E69DCAB8];
  v1 = PKPassKitUIFoundationBundle();
  v2 = [v0 imageNamed:@"GenericAutofill" inBundle:v1];

  return v2;
}

- (void)cardArtworkWithSize:()PassSnapshot completion:
{
  v8 = a5;
  if (v8)
  {
    v9 = [a1 type];
    switch(v9)
    {
      case 0:
        v13 = [a1 _genericCardIcon];
        v8[2](v8, v13);
LABEL_11:

        break;
      case 2:
        v10 = +[PKPassSnapshotter sharedInstance];
        v11 = [MEMORY[0x1E69B8DB8] paymentService];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke;
        v14[3] = &unk_1E8017B18;
        v15 = v10;
        v18 = a2;
        v19 = a3;
        v16 = a1;
        v17 = v8;
        v12 = v10;
        [v11 paymentPassForVirtualCard:a1 completion:v14];

        break;
      case 1:
        if (a2 <= 40.0)
        {
          [a1 _smallAppleCardIcon];
        }

        else
        {
          [a1 _largeAppleCardIcon];
        }
        v13 = ;
        v8[2](v8, v13);
        goto LABEL_11;
    }
  }
}

@end