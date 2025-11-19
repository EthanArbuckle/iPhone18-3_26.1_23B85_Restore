@interface WFTreeXMLDocumentStripper
+ (id)treeStripperWithXMLDocument:(_xmlDoc *)a3;
- (WFTreeXMLDocumentStripper)initWithXMLDocument:(_xmlDoc *)a3;
- (id)description;
- (void)dealloc;
- (void)processXMLDocument:(_xmlDoc *)a3;
- (void)setPageTitle:(id)a3;
@end

@implementation WFTreeXMLDocumentStripper

+ (id)treeStripperWithXMLDocument:(_xmlDoc *)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithXMLDocument:a3];

  return v3;
}

- (WFTreeXMLDocumentStripper)initWithXMLDocument:(_xmlDoc *)a3
{
  if (a3)
  {
    v7.receiver = self;
    v7.super_class = WFTreeXMLDocumentStripper;
    v4 = [(WFTreeXMLDocumentStripper *)&v7 init];
    v5 = v4;
    if (v4)
    {
      [(WFTreeXMLDocumentStripper *)v4 setXMLDocument:a3];
      [(WFTreeXMLDocumentStripper *)v5 strip];
    }
  }

  else
  {
    NSLog(&cfstr_SErrorPassingA.isa, a2, "[WFTreeXMLDocumentStripper initWithXMLDocument:]");
    return 0;
  }

  return v5;
}

- (void)setPageTitle:(id)a3
{
  v5 = a3;

  self->pageTitle = a3;
}

- (void)processXMLDocument:(_xmlDoc *)a3
{
  v7 = objc_opt_new();
  self->scriptBlocks = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->images = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->metaTagsLabeled = objc_alloc_init(MEMORY[0x277CBEB38]);
  self->metaTagsUnlabeled = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->links = objc_alloc_init(MEMORY[0x277CBEB18]);
  *&self->hasFrameset = 0;
  v5 = [(WFTreeXMLDocumentStripper *)self processXMLDocument:a3 blockComments:1];
  self->pageContent = v5;
  v6 = v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@:%p\n", objc_msgSend(objc_opt_class(), "description"), self];
  [v3 appendFormat:@"\tpageTitle:%@\n", self->pageTitle];
  [v3 appendFormat:@"\tmetaTagDescription:%@\n", -[WFTreeXMLDocumentStripper metaTagDescription](self, "metaTagDescription")];
  [v3 appendFormat:@"\tmetaTagKeywords:%@\n", -[WFTreeXMLDocumentStripper metaTagKeywords](self, "metaTagKeywords")];
  [v3 appendFormat:@"\tscriptBlocks:%@\n", self->scriptBlocks];
  [v3 appendFormat:@"\timages:%@\n", self->images];
  [v3 appendFormat:@"\tpageContent:%@\n", self->pageContent];
  [v3 appendString:@">"];
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WFTreeXMLDocumentStripper;
  [(WFTreeXMLDocumentStripper *)&v3 dealloc];
}

@end