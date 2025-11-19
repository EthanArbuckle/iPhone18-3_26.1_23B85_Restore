@interface PKPassShareInitiationContext
- (BOOL)isShareConfiguredEnoughToBeSentOverChannelWithDisplayableError:(id *)a3 pass:(id)a4;
- (PKPassShareInitiationContext)initWithFlow:(unint64_t)a3 share:(id)a4;
- (void)setComposedShare:(id)a3;
- (void)setRecipient:(id)a3 fallbackNickname:(id)a4;
@end

@implementation PKPassShareInitiationContext

- (PKPassShareInitiationContext)initWithFlow:(unint64_t)a3 share:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = PKPassShareInitiationContext;
  v8 = [(PKPassShareInitiationContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_flow = a3;
    objc_storeStrong(&v8->_composedShare, a4);
  }

  return v9;
}

- (void)setRecipient:(id)a3 fallbackNickname:(id)a4
{
  v14 = a3;
  v6 = a4;
  if (v14)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:v14];
    recipient = self->_recipient;
    self->_recipient = v7;
  }

  v9 = [MEMORY[0x1E69B8F30] redactedDisplayNameForCounterpartHandle:0 contact:?];
  v10 = v9;
  if (!v9 || ![v9 length])
  {
    v11 = v6;

    v10 = v11;
  }

  composedShare = self->_composedShare;
  v13 = [(PKContact *)self->_recipient contactHandle];
  [(PKPassShare *)composedShare setRecipientHandle:v13];

  [(PKPassShare *)self->_composedShare setRecipientNickname:v10];
}

- (void)setComposedShare:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_composedShare, a3);
  if (!self->_recipient)
  {
    v5 = [MEMORY[0x1E69B8740] defaultContactResolver];
    v6 = [v10 recipientHandle];
    v7 = [v5 contactForHandle:v6];

    v8 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:v7];
    recipient = self->_recipient;
    self->_recipient = v8;
  }
}

- (BOOL)isShareConfiguredEnoughToBeSentOverChannelWithDisplayableError:(id *)a3 pass:(id)a4
{
  v6 = a4;
  v7 = [(PKPassShare *)self->_composedShare recipientNickname];
  if (v7)
  {

LABEL_6:
    v9 = [(PKPassShare *)self->_composedShare sharedEntitlements];
    v10 = [v9 count];

    if (v10)
    {
      LOBYTE(a3) = 1;
      goto LABEL_11;
    }

    if (!a3)
    {
      goto LABEL_11;
    }

    v8 = @"SHARE_INITIATION_ERROR_NO_ENTITLEMENTS_TITLE";
LABEL_10:
    v11 = PKLocalizationKeyForPassType();
    v12 = PKLocalizedShareableCredentialString(&v8->isa);
    v13 = PKLocalizedShareableCredentialString(v11);
    *a3 = PKDisplayableErrorCustom();

    LOBYTE(a3) = 0;
    goto LABEL_11;
  }

  if (![(PKPassShareInitiationContext *)self requiresContactSelection])
  {
    goto LABEL_6;
  }

  if (a3)
  {
    v8 = @"SHARE_INITIATION_ERROR_NO_RECIPIENT_TITLE";
    goto LABEL_10;
  }

LABEL_11:

  return a3;
}

@end