@interface SXQuickLookFile
- (SXQuickLookFile)initWithFileURL:(id)l shareURL:(id)rL;
- (SXQuickLookFile)initWithFileURL:(id)l title:(id)title shareURL:(id)rL;
@end

@implementation SXQuickLookFile

- (SXQuickLookFile)initWithFileURL:(id)l shareURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v12.receiver = self;
  v12.super_class = SXQuickLookFile;
  v9 = [(SXQuickLookFile *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fileURL, l);
    objc_storeStrong(&v10->_shareURL, rL);
  }

  return v10;
}

- (SXQuickLookFile)initWithFileURL:(id)l title:(id)title shareURL:(id)rL
{
  titleCopy = title;
  v10 = [(SXQuickLookFile *)self initWithFileURL:l shareURL:rL];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_title, title);
  }

  return v11;
}

@end