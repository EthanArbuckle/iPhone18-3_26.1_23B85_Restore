@interface PKPaymentPreferenceCardOptionListItem
- (PKPaymentPass)pass;
- (id)_censoredPANTextForPass:(id)a3;
- (id)_image;
- (id)_secondaryText;
- (id)_text;
@end

@implementation PKPaymentPreferenceCardOptionListItem

- (PKPaymentPass)pass
{
  v2 = [(PKPaymentPreferenceOptionListItem *)self preference];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 pass];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (id)_text
{
  v2 = [(PKPaymentPreferenceCardOptionListItem *)self pass];
  v3 = [v2 localizedDescription];

  return v3;
}

- (id)_secondaryText
{
  v3 = [(PKPaymentPreferenceCardOptionListItem *)self pass];
  v4 = [(PKPaymentPreferenceCardOptionListItem *)self _censoredPANTextForPass:v3];

  return v4;
}

- (id)_image
{
  v3 = [PKPassView alloc];
  v4 = [(PKPaymentPreferenceCardOptionListItem *)self pass];
  v5 = [(PKPassView *)v3 initWithPass:v4 content:4 suppressedContent:2039];

  PKPassFrontFaceContentSize();
  PKFloatRoundToPixel();
  v7 = [(PKPassView *)v5 snapshotOfFrontFaceWithRequestedSize:66.0, v6];

  return v7;
}

- (id)_censoredPANTextForPass:(id)a3
{
  v3 = a3;
  if ([v3 isAccessPass])
  {
    v4 = [v3 fieldForKey:*MEMORY[0x1E69BC0D8]];
    v5 = [v4 value];
  }

  else if (![v3 hasAssociatedPeerPaymentAccount] || (objc_msgSend(v3, "peerPaymentBalance"), v6 = objc_claimAutoreleasedReturnValue(), v6, !v6) || (objc_msgSend(v3, "peerPaymentBalance"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "minimalFormattedStringValue"), v8 = objc_claimAutoreleasedReturnValue(), PKLocalizedPeerPaymentString(&cfstr_PeerPaymentInA.isa, &stru_1F3BD5BF0.isa, v8), v5 = objc_claimAutoreleasedReturnValue(), v8, v7, !v5))
  {
    v5 = PKSanitizedPrimaryAccountRepresentationForPass();
  }

  return v5;
}

@end