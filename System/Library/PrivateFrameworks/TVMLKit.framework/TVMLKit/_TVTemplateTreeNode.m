@interface _TVTemplateTreeNode
- (NSArray)derivedTemplateNodes;
- (_TVTemplateTreeNode)initWithTemplateName:(id)a3 styleSheetURLs:(id)a4 abstract:(BOOL)a5;
- (void)addDerivedTemplateNode:(id)a3;
@end

@implementation _TVTemplateTreeNode

- (NSArray)derivedTemplateNodes
{
  v2 = [(NSMutableArray *)self->_derivedTemplateNodes copy];

  return v2;
}

- (_TVTemplateTreeNode)initWithTemplateName:(id)a3 styleSheetURLs:(id)a4 abstract:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = _TVTemplateTreeNode;
  v10 = [(_TVTemplateTreeNode *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    templateName = v10->_templateName;
    v10->_templateName = v11;

    v13 = [v9 copy];
    styleSheetURLs = v10->_styleSheetURLs;
    v10->_styleSheetURLs = v13;

    v10->_isAbstract = a5;
  }

  return v10;
}

- (void)addDerivedTemplateNode:(id)a3
{
  v4 = a3;
  derivedTemplateNodes = self->_derivedTemplateNodes;
  v8 = v4;
  if (!derivedTemplateNodes)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v7 = self->_derivedTemplateNodes;
    self->_derivedTemplateNodes = v6;

    v4 = v8;
    derivedTemplateNodes = self->_derivedTemplateNodes;
  }

  [(NSMutableArray *)derivedTemplateNodes addObject:v4];
}

@end