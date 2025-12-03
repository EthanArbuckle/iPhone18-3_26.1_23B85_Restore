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
    type = [self type];
    switch(type)
    {
      case 0:
        _genericCardIcon = [self _genericCardIcon];
        v8[2](v8, _genericCardIcon);
LABEL_11:

        break;
      case 2:
        v10 = +[PKPassSnapshotter sharedInstance];
        paymentService = [MEMORY[0x1E69B8DB8] paymentService];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62__PKVirtualCard_PassSnapshot__cardArtworkWithSize_completion___block_invoke;
        v14[3] = &unk_1E8017B18;
        v15 = v10;
        v18 = a2;
        v19 = a3;
        selfCopy = self;
        v17 = v8;
        v12 = v10;
        [paymentService paymentPassForVirtualCard:self completion:v14];

        break;
      case 1:
        if (a2 <= 40.0)
        {
          [self _smallAppleCardIcon];
        }

        else
        {
          [self _largeAppleCardIcon];
        }
        _genericCardIcon = ;
        v8[2](v8, _genericCardIcon);
        goto LABEL_11;
    }
  }
}

@end