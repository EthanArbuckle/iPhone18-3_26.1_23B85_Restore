@interface SiriUISnippetExtensionCardSnippetViewController
- (SiriUISnippetExtensionCardSnippetViewController)initWithSnippet:(id)a3 extension:(id)a4;
- (id)sashItem;
- (void)setSnippet:(id)a3;
@end

@implementation SiriUISnippetExtensionCardSnippetViewController

- (SiriUISnippetExtensionCardSnippetViewController)initWithSnippet:(id)a3 extension:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SiriUISnippetExtensionCardSnippetViewController;
  v8 = [(SiriUICardSnippetViewController *)&v11 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    [(SiriUISnippetExtensionCardSnippetViewController *)v8 setExtension:v7];
    [(SiriUISnippetExtensionCardSnippetViewController *)v9 setSnippet:v6];
  }

  return v9;
}

- (void)setSnippet:(id)a3
{
  v11 = a3;
  if (self->_snippet != v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(&self->_snippet, a3);
      v5 = objc_alloc(MEMORY[0x277CD3D58]);
      v6 = objc_alloc_init(MEMORY[0x277CD3D30]);
      v7 = [v5 initWithIntent:v6 response:0];

      [v7 _setSnippet:v11];
      v8 = objc_alloc_init(MEMORY[0x277CF9408]);
      v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
      [v8 setInteractions:v9];

      v10 = [objc_alloc(MEMORY[0x277CF93C0]) initWithCard:v8 delegate:self];
      [(SiriUICardSnippetViewController *)self _setCardViewController:v10];
    }
  }
}

- (id)sashItem
{
  sashItem = self->_sashItem;
  if (!sashItem)
  {
    v9.receiver = self;
    v9.super_class = SiriUISnippetExtensionCardSnippetViewController;
    v4 = [(SiriUIBaseSnippetViewController *)&v9 sashItem];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [[SiriUISashItem alloc] initWithExtension:self->_extension];
    }

    v7 = self->_sashItem;
    self->_sashItem = v6;

    sashItem = self->_sashItem;
  }

  return sashItem;
}

@end