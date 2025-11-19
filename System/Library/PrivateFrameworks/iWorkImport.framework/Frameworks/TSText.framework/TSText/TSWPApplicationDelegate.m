@interface TSWPApplicationDelegate
- (BOOL)isValidURLForImportedHyperlink:(id)a3 targetDocumentRoot:(id)a4 forCrossDocumentPaste:(BOOL)a5;
- (id)defaultHyperlinkURL;
@end

@implementation TSWPApplicationDelegate

- (BOOL)isValidURLForImportedHyperlink:(id)a3 targetDocumentRoot:(id)a4 forCrossDocumentPaste:(BOOL)a5
{
  v7 = objc_msgSend_scheme(a3, a2, a3, a4, a5);
  if (v7)
  {
    v8 = objc_msgSend_invalidURLSchemes(TSWPHyperlinkField, v5, v6);
    v10 = objc_msgSend_member_(v8, v9, v7);
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)defaultHyperlinkURL
{
  v3 = objc_msgSend_sharedDelegate(MEMORY[0x277D80610], a2, v2);
  v6 = objc_msgSend_defaultWebHyperlinkURL(v3, v4, v5);

  return v6;
}

@end