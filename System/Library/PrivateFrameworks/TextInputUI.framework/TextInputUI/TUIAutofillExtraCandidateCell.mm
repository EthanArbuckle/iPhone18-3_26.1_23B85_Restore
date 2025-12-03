@interface TUIAutofillExtraCandidateCell
- (id)bodyText;
- (id)image;
@end

@implementation TUIAutofillExtraCandidateCell

- (id)image
{
  style = [(TUICandidateBaseCell *)self style];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_5;
  }

  style2 = [(TUICandidateBaseCell *)self style];
  autofillExtraCandidateImage = [style2 autofillExtraCandidateImage];

  if (!autofillExtraCandidateImage)
  {
LABEL_5:
    style3 = [(TUICandidateBaseCell *)self style];
    textColor = [style3 textColor];
    v10 = textColor;
    if (textColor)
    {
      clearColor = textColor;
    }

    else
    {
      clearColor = [MEMORY[0x1E69DC888] clearColor];
    }

    style4 = clearColor;

    v12 = [MEMORY[0x1E69DCAB8] kitImageNamed:@"kb-autofill-key"];
    autofillExtraCandidateImage2 = [v12 _flatImageWithColor:style4];

    goto LABEL_9;
  }

  style4 = [(TUICandidateBaseCell *)self style];
  autofillExtraCandidateImage2 = [style4 autofillExtraCandidateImage];
LABEL_9:

  return autofillExtraCandidateImage2;
}

- (id)bodyText
{
  [(TUIAutofillExtraCandidateCell *)self bounds];
  if (CGRectGetWidth(v6) <= 50.0)
  {
    v3 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v3 = [v2 localizedStringInDeviceLanguageForKey:@"Passwords"];
  }

  return v3;
}

@end