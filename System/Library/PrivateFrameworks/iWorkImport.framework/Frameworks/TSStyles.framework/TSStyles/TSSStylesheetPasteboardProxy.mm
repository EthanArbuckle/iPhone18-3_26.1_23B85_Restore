@interface TSSStylesheetPasteboardProxy
- (TSSStylesheetPasteboardProxy)initWithContext:(id)context stylesheet:(id)stylesheet;
- (void)addStyleReference:(id)reference;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TSSStylesheetPasteboardProxy

- (TSSStylesheetPasteboardProxy)initWithContext:(id)context stylesheet:(id)stylesheet
{
  contextCopy = context;
  stylesheetCopy = stylesheet;
  v15.receiver = self;
  v15.super_class = TSSStylesheetPasteboardProxy;
  v8 = [(TSSStylesheetPasteboardProxy *)&v15 initWithContext:contextCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mStylesheet, stylesheet);
    v10 = objc_alloc_init(MEMORY[0x277D81268]);
    mReferencedStyles = v9->mReferencedStyles;
    v9->mReferencedStyles = v10;

    v12 = dispatch_queue_create("TSSStylesheetPasteboardProxy.referencedStyles", 0);
    mReferencedStylesQueue = v9->mReferencedStylesQueue;
    v9->mReferencedStylesQueue = v12;
  }

  return v9;
}

- (void)addStyleReference:(id)reference
{
  referenceCopy = reference;
  if (!self->mSelfArchiving)
  {
    v5 = self->mReferencedStyles;
    mReferencedStylesQueue = self->mReferencedStylesQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_276CAF7B0;
    v8[3] = &unk_27A6EEEB0;
    v9 = v5;
    v10 = referenceCopy;
    v7 = v5;
    dispatch_async(mReferencedStylesQueue, v8);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  self->mSelfArchiving = 1;
  v5 = self->mStylesheet;
  v6 = self->mReferencedStyles;
  mReferencedStylesQueue = self->mReferencedStylesQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276CAF8D8;
  block[3] = &unk_27A6EEED8;
  v12 = v5;
  v13 = v6;
  v14 = archiverCopy;
  v8 = archiverCopy;
  v9 = v6;
  v10 = v5;
  dispatch_sync(mReferencedStylesQueue, block);
  self->mSelfArchiving = 0;
}

@end