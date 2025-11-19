@interface SiriUIBaseSnippetViewController
- (BOOL)hasSash;
- (SiriUIBaseAceObjectViewControllerDelegate)delegate;
- (SiriUISashItem)sashItem;
@end

@implementation SiriUIBaseSnippetViewController

- (SiriUISashItem)sashItem
{
  sashItem = self->_sashItem;
  if (!sashItem)
  {
    v4 = [(SiriUIBaseSnippetViewController *)self snippet];
    v5 = [v4 sash];

    if (v5)
    {
      v6 = [v5 applicationBundleIdentifier];
      v7 = [v5 title];
      v8 = [v5 backgroundColor];
      v9 = [v5 textColor];
      v10 = [v5 image];
      if ([v6 isEqualToString:@"com.apple.mobilesafari"])
      {
        v11 = +[SiriUIUtilities defaultBrowserBundleIdentifier];

        v6 = v11;
      }

      v47 = v10;
      if (v6)
      {
        v46 = v9;
        if ([v6 isEqualToString:@"com.apple.ApplePayCash"])
        {
          v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [MEMORY[0x277D755B8] imageNamed:@"ApplePay" inBundle:v12];
          v14 = v13 = v8;
          [MEMORY[0x277D759A0] mainScreen];
          v16 = v15 = v7;
          [v16 scale];
          v17 = [v14 _applicationIconImageForFormat:5 precomposed:0 scale:?];

          v7 = v15;
          v8 = v13;
          v18 = [(SiriSharedUISashItem *)[SiriUISashItem alloc] initWithTitle:v15 image:v17];
          v19 = self->_sashItem;
          self->_sashItem = v18;
        }

        else
        {
          v21 = [(SiriSharedUISashItem *)[SiriUISashItem alloc] initWithApplicationBundleIdentifier:v6];
          v12 = v21;
          if (v21)
          {
            v22 = v21;
          }

          else
          {
            v22 = +[SiriUISashItem defaultSashItem];
          }

          v24 = self->_sashItem;
          self->_sashItem = v22;
        }

        v10 = v47;
LABEL_17:

        if (v7)
        {
          [(SiriUISashItem *)self->_sashItem setTitle:v7];
        }

        if (!v10)
        {
          goto LABEL_25;
        }

        v25 = [v47 resourceUrl];
        v26 = [v25 isFileURL];

        if (v26)
        {
          v44 = v7;
          v45 = v8;
          v43 = self->_sashItem;
          v27 = MEMORY[0x277D755B8];
          v28 = [v47 resourceUrl];
          v29 = [v28 path];
          v30 = [v29 lastPathComponent];
          v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v32 = [v27 imageNamed:v30 inBundle:v31 compatibleWithTraitCollection:0];
          [(SiriUISashItem *)v43 setImage:v32];

          v7 = v44;
        }

        else
        {
          v33 = [v47 imageData];

          if (!v33)
          {
LABEL_25:
            if (v8)
            {
              v36 = self->_sashItem;
              v37 = [MEMORY[0x277D75348] siriui_colorWithAceColor:v8];
              [(SiriSharedUISashItem *)v36 setBackgroundColor:v37];
            }

            if (v46)
            {
              v38 = self->_sashItem;
              v39 = [MEMORY[0x277D75348] siriui_colorWithAceColor:v46];
              [(SiriSharedUISashItem *)v38 setTextColor:v39];
            }

            [(SiriSharedUISashItem *)self->_sashItem setRequestsExtraPadding:1];
            v40 = self->_sashItem;
            v41 = [v5 commands];
            [(SiriSharedUISashItem *)v40 setCommands:v41];

            sashItem = self->_sashItem;
            goto LABEL_30;
          }

          v45 = v8;
          v34 = self->_sashItem;
          v35 = MEMORY[0x277D755B8];
          v28 = [v47 imageData];
          v29 = [v35 imageWithData:v28];
          [(SiriUISashItem *)v34 setImage:v29];
        }

        v8 = v45;
        goto LABEL_25;
      }

      if (v7 | v10)
      {
        v46 = v9;
        v20 = objc_alloc_init(SiriUISashItem);
        v12 = self->_sashItem;
        self->_sashItem = v20;
        goto LABEL_17;
      }
    }

    v23 = 0;
    goto LABEL_31;
  }

LABEL_30:
  v23 = sashItem;
LABEL_31:

  return v23;
}

- (BOOL)hasSash
{
  v2 = [(SiriUIBaseSnippetViewController *)self sashItem];
  v3 = v2 != 0;

  return v3;
}

- (SiriUIBaseAceObjectViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end