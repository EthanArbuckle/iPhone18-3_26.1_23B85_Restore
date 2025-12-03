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
    snippet = [(SiriUIBaseSnippetViewController *)self snippet];
    sash = [snippet sash];

    if (sash)
    {
      applicationBundleIdentifier = [sash applicationBundleIdentifier];
      title = [sash title];
      backgroundColor = [sash backgroundColor];
      textColor = [sash textColor];
      image = [sash image];
      if ([applicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
      {
        v11 = +[SiriUIUtilities defaultBrowserBundleIdentifier];

        applicationBundleIdentifier = v11;
      }

      v47 = image;
      if (applicationBundleIdentifier)
      {
        v46 = textColor;
        if ([applicationBundleIdentifier isEqualToString:@"com.apple.ApplePayCash"])
        {
          v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          [MEMORY[0x277D755B8] imageNamed:@"ApplePay" inBundle:v12];
          v14 = v13 = backgroundColor;
          [MEMORY[0x277D759A0] mainScreen];
          v16 = v15 = title;
          [v16 scale];
          v17 = [v14 _applicationIconImageForFormat:5 precomposed:0 scale:?];

          title = v15;
          backgroundColor = v13;
          v18 = [(SiriSharedUISashItem *)[SiriUISashItem alloc] initWithTitle:v15 image:v17];
          v19 = self->_sashItem;
          self->_sashItem = v18;
        }

        else
        {
          v21 = [(SiriSharedUISashItem *)[SiriUISashItem alloc] initWithApplicationBundleIdentifier:applicationBundleIdentifier];
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

        image = v47;
LABEL_17:

        if (title)
        {
          [(SiriUISashItem *)self->_sashItem setTitle:title];
        }

        if (!image)
        {
          goto LABEL_25;
        }

        resourceUrl = [v47 resourceUrl];
        isFileURL = [resourceUrl isFileURL];

        if (isFileURL)
        {
          v44 = title;
          v45 = backgroundColor;
          v43 = self->_sashItem;
          v27 = MEMORY[0x277D755B8];
          resourceUrl2 = [v47 resourceUrl];
          path = [resourceUrl2 path];
          lastPathComponent = [path lastPathComponent];
          v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v32 = [v27 imageNamed:lastPathComponent inBundle:v31 compatibleWithTraitCollection:0];
          [(SiriUISashItem *)v43 setImage:v32];

          title = v44;
        }

        else
        {
          imageData = [v47 imageData];

          if (!imageData)
          {
LABEL_25:
            if (backgroundColor)
            {
              v36 = self->_sashItem;
              v37 = [MEMORY[0x277D75348] siriui_colorWithAceColor:backgroundColor];
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
            commands = [sash commands];
            [(SiriSharedUISashItem *)v40 setCommands:commands];

            sashItem = self->_sashItem;
            goto LABEL_30;
          }

          v45 = backgroundColor;
          v34 = self->_sashItem;
          v35 = MEMORY[0x277D755B8];
          resourceUrl2 = [v47 imageData];
          path = [v35 imageWithData:resourceUrl2];
          [(SiriUISashItem *)v34 setImage:path];
        }

        backgroundColor = v45;
        goto LABEL_25;
      }

      if (title | image)
      {
        v46 = textColor;
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
  sashItem = [(SiriUIBaseSnippetViewController *)self sashItem];
  v3 = sashItem != 0;

  return v3;
}

- (SiriUIBaseAceObjectViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end