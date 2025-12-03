@interface SXTextTangierDocumentRoot
- (SXTextTangierDocumentRoot)init;
- (SXTextTangierDocumentRoot)initWithContext:(id)context;
- (UIViewController)viewController;
@end

@implementation SXTextTangierDocumentRoot

- (SXTextTangierDocumentRoot)init
{
  v3 = +[SXTemporaryObjectContext temporaryObjectContext];
  v4 = [(SXTextTangierDocumentRoot *)self initWithContext:v3];

  return v4;
}

- (SXTextTangierDocumentRoot)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = SXTextTangierDocumentRoot;
  v5 = [(TSKDocumentRoot *)&v9 initWithContext:contextCopy];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69D56B0]) initWithContext:contextCopy];
    aStylesheet = v5->_aStylesheet;
    v5->_aStylesheet = v6;

    [(TSKDocumentRoot *)v5 documentDidLoad];
  }

  return v5;
}

- (UIViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end