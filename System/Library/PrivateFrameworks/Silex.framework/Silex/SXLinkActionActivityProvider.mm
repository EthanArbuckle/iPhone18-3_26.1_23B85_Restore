@interface SXLinkActionActivityProvider
- (SXLinkActionActivityProvider)initWithURLHandler:(id)handler URLPreviewing:(id)previewing host:(id)host URLQualifier:(id)qualifier;
- (id)activityGroupForAction:(id)action;
- (id)previewActivityForAction:(id)action;
- (void)open:(id)open;
- (void)openInNewWindow:(id)window;
- (void)openInSafari:(id)safari;
@end

@implementation SXLinkActionActivityProvider

- (SXLinkActionActivityProvider)initWithURLHandler:(id)handler URLPreviewing:(id)previewing host:(id)host URLQualifier:(id)qualifier
{
  handlerCopy = handler;
  previewingCopy = previewing;
  hostCopy = host;
  qualifierCopy = qualifier;
  v18.receiver = self;
  v18.super_class = SXLinkActionActivityProvider;
  v15 = [(SXLinkActionActivityProvider *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_URLHandler, handler);
    objc_storeStrong(&v16->_URLPreviewing, previewing);
    objc_storeStrong(&v16->_host, host);
    objc_storeStrong(&v16->_URLQualifier, qualifier);
  }

  return v16;
}

- (id)activityGroupForAction:(id)action
{
  actionCopy = action;
  v5 = MEMORY[0x1E696AF20];
  v6 = [actionCopy URL];
  v7 = [v5 componentsWithURL:v6 resolvingAgainstBaseURL:0];

  [v7 setQuery:0];
  [v7 setFragment:0];
  v8 = [v7 URL];
  absoluteString = [v8 absoluteString];

  v10 = [[SXActionActivityGroup alloc] initWithTitle:absoluteString];
  v11 = [SXBlockActionActivity alloc];
  v12 = SXBundle();
  v13 = [v12 localizedStringForKey:@"SXLinkActionOpen" value:&stru_1F532F6C0 table:0];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __55__SXLinkActionActivityProvider_activityGroupForAction___block_invoke;
  v43[3] = &unk_1E84FF668;
  v43[4] = self;
  v14 = [(SXBlockActionActivity *)v11 initWithLabel:v13 type:0 block:v43];
  [(SXActionActivityGroup *)v10 addActivity:v14];

  uRLQualifier = [(SXLinkActionActivityProvider *)self URLQualifier];
  if (objc_opt_respondsToSelector())
  {
    uRLQualifier2 = [(SXLinkActionActivityProvider *)self URLQualifier];
    v17 = [actionCopy URL];
    v18 = [uRLQualifier2 allowOpenInNewWindowForURL:v17];

    if (v18)
    {
      v19 = [SXBlockActionActivity alloc];
      v20 = SXBundle();
      v21 = [v20 localizedStringForKey:@"Open In New Window" value:&stru_1F532F6C0 table:0];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __55__SXLinkActionActivityProvider_activityGroupForAction___block_invoke_2;
      v42[3] = &unk_1E84FF668;
      v42[4] = self;
      v22 = [(SXBlockActionActivity *)v19 initWithLabel:v21 type:0 block:v42];
      [(SXActionActivityGroup *)v10 addActivity:v22];
    }
  }

  else
  {
  }

  uRLQualifier3 = [(SXLinkActionActivityProvider *)self URLQualifier];
  v24 = [actionCopy URL];
  v25 = [uRLQualifier3 allowOpenInSafariForURL:v24];

  if (v25)
  {
    v26 = [SXBlockActionActivity alloc];
    v27 = SXBundle();
    v28 = [v27 localizedStringForKey:@"Open in Safari" value:&stru_1F532F6C0 table:0];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __55__SXLinkActionActivityProvider_activityGroupForAction___block_invoke_3;
    v41[3] = &unk_1E84FF668;
    v41[4] = self;
    v29 = [(SXBlockActionActivity *)v26 initWithLabel:v28 type:1 block:v41];
    [(SXActionActivityGroup *)v10 addActivity:v29];
  }

  uRLQualifier4 = [(SXLinkActionActivityProvider *)self URLQualifier];
  v31 = [actionCopy URL];
  v32 = [uRLQualifier4 allowCopyingOfURL:v31];

  if (v32)
  {
    v33 = [SXPasteboardActionActivity alloc];
    v34 = SXBundle();
    v35 = [v34 localizedStringForKey:@"Copy Link" value:&stru_1F532F6C0 table:0];
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    v37 = [actionCopy URL];
    absoluteString2 = [v37 absoluteString];
    v39 = [(SXPasteboardActionActivity *)v33 initWithLabel:v35 type:1 pasteboard:generalPasteboard string:absoluteString2];
    [(SXActionActivityGroup *)v10 addActivity:v39];
  }

  return v10;
}

void __55__SXLinkActionActivityProvider_activityGroupForAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URL];
  [v2 open:v3];
}

void __55__SXLinkActionActivityProvider_activityGroupForAction___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URL];
  [v2 openInNewWindow:v3];
}

void __55__SXLinkActionActivityProvider_activityGroupForAction___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URL];
  [v2 openInSafari:v3];
}

- (id)previewActivityForAction:(id)action
{
  actionCopy = action;
  v5 = [SXURLPreviewActivity alloc];
  uRLPreviewing = [(SXLinkActionActivityProvider *)self URLPreviewing];
  v7 = [actionCopy URL];

  v8 = [(SXURLPreviewActivity *)v5 initWithURLPreviewing:uRLPreviewing URL:v7];

  return v8;
}

- (void)open:(id)open
{
  openCopy = open;
  uRLHandler = [(SXLinkActionActivityProvider *)self URLHandler];
  [uRLHandler openURL:openCopy];
}

- (void)openInNewWindow:(id)window
{
  windowCopy = window;
  uRLHandler = [(SXLinkActionActivityProvider *)self URLHandler];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    uRLHandler2 = [(SXLinkActionActivityProvider *)self URLHandler];
    [uRLHandler2 openNewWindowWithURL:windowCopy];
  }
}

- (void)openInSafari:(id)safari
{
  safariCopy = safari;
  host = [(SXLinkActionActivityProvider *)self host];
  [host openURL:safariCopy completion:0];
}

@end