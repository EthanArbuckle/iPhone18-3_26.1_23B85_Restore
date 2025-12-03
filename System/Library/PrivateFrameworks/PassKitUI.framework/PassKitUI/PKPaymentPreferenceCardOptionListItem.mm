@interface PKPaymentPreferenceCardOptionListItem
- (PKPaymentPass)pass;
- (id)_censoredPANTextForPass:(id)pass;
- (id)_image;
- (id)_secondaryText;
- (id)_text;
@end

@implementation PKPaymentPreferenceCardOptionListItem

- (PKPaymentPass)pass
{
  preference = [(PKPaymentPreferenceOptionListItem *)self preference];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pass = [preference pass];
LABEL_5:
    v4 = pass;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pass = preference;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)_text
{
  pass = [(PKPaymentPreferenceCardOptionListItem *)self pass];
  localizedDescription = [pass localizedDescription];

  return localizedDescription;
}

- (id)_secondaryText
{
  pass = [(PKPaymentPreferenceCardOptionListItem *)self pass];
  v4 = [(PKPaymentPreferenceCardOptionListItem *)self _censoredPANTextForPass:pass];

  return v4;
}

- (id)_image
{
  v3 = [PKPassView alloc];
  pass = [(PKPaymentPreferenceCardOptionListItem *)self pass];
  v5 = [(PKPassView *)v3 initWithPass:pass content:4 suppressedContent:2039];

  PKPassFrontFaceContentSize();
  PKFloatRoundToPixel();
  v7 = [(PKPassView *)v5 snapshotOfFrontFaceWithRequestedSize:66.0, v6];

  return v7;
}

- (id)_censoredPANTextForPass:(id)pass
{
  passCopy = pass;
  if ([passCopy isAccessPass])
  {
    v4 = [passCopy fieldForKey:*MEMORY[0x1E69BC0D8]];
    value = [v4 value];
  }

  else if (![passCopy hasAssociatedPeerPaymentAccount] || (objc_msgSend(passCopy, "peerPaymentBalance"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || (objc_msgSend(passCopy, "peerPaymentBalance"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "minimalFormattedStringValue"), v8 = objc_claimAutoreleasedReturnValue(), PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInA.isa, &stru_1F3BD5BF0.isa, v8), value = objc_claimAutoreleasedReturnValue(), v8, v7, !value))
  {
    value = PKSanitizedPrimaryAccountRepresentationForPass();
  }

  return value;
}

@end