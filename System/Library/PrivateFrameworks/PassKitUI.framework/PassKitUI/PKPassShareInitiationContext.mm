@interface PKPassShareInitiationContext
- (BOOL)isShareConfiguredEnoughToBeSentOverChannelWithDisplayableError:(id *)error pass:(id)pass;
- (PKPassShareInitiationContext)initWithFlow:(unint64_t)flow share:(id)share;
- (void)setComposedShare:(id)share;
- (void)setRecipient:(id)recipient fallbackNickname:(id)nickname;
@end

@implementation PKPassShareInitiationContext

- (PKPassShareInitiationContext)initWithFlow:(unint64_t)flow share:(id)share
{
  shareCopy = share;
  v11.receiver = self;
  v11.super_class = PKPassShareInitiationContext;
  v8 = [(PKPassShareInitiationContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_flow = flow;
    objc_storeStrong(&v8->_composedShare, share);
  }

  return v9;
}

- (void)setRecipient:(id)recipient fallbackNickname:(id)nickname
{
  recipientCopy = recipient;
  nicknameCopy = nickname;
  if (recipientCopy)
  {
    v7 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:recipientCopy];
    recipient = self->_recipient;
    self->_recipient = v7;
  }

  v9 = [MEMORY[0x1E69B8F30] redactedDisplayNameForCounterpartHandle:0 contact:?];
  v10 = v9;
  if (!v9 || ![v9 length])
  {
    v11 = nicknameCopy;

    v10 = v11;
  }

  composedShare = self->_composedShare;
  contactHandle = [(PKContact *)self->_recipient contactHandle];
  [(PKPassShare *)composedShare setRecipientHandle:contactHandle];

  [(PKPassShare *)self->_composedShare setRecipientNickname:v10];
}

- (void)setComposedShare:(id)share
{
  shareCopy = share;
  objc_storeStrong(&self->_composedShare, share);
  if (!self->_recipient)
  {
    defaultContactResolver = [MEMORY[0x1E69B8740] defaultContactResolver];
    recipientHandle = [shareCopy recipientHandle];
    v7 = [defaultContactResolver contactForHandle:recipientHandle];

    v8 = [objc_alloc(MEMORY[0x1E69B8728]) initWithCNContact:v7];
    recipient = self->_recipient;
    self->_recipient = v8;
  }
}

- (BOOL)isShareConfiguredEnoughToBeSentOverChannelWithDisplayableError:(id *)error pass:(id)pass
{
  passCopy = pass;
  recipientNickname = [(PKPassShare *)self->_composedShare recipientNickname];
  if (recipientNickname)
  {

LABEL_6:
    sharedEntitlements = [(PKPassShare *)self->_composedShare sharedEntitlements];
    v10 = [sharedEntitlements count];

    if (v10)
    {
      LOBYTE(error) = 1;
      goto LABEL_11;
    }

    if (!error)
    {
      goto LABEL_11;
    }

    v8 = @"SHARE_INITIATION_ERROR_NO_ENTITLEMENTS_TITLE";
LABEL_10:
    v11 = PKLocalizationKeyForPassType();
    v12 = PKLocalizedShareableCredentialString(&v8->isa);
    v13 = PKLocalizedShareableCredentialString(v11);
    *error = PKDisplayableErrorCustom();

    LOBYTE(error) = 0;
    goto LABEL_11;
  }

  if (![(PKPassShareInitiationContext *)self requiresContactSelection])
  {
    goto LABEL_6;
  }

  if (error)
  {
    v8 = @"SHARE_INITIATION_ERROR_NO_RECIPIENT_TITLE";
    goto LABEL_10;
  }

LABEL_11:

  return error;
}

@end