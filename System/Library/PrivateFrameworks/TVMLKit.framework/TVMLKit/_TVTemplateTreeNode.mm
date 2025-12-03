@interface _TVTemplateTreeNode
- (NSArray)derivedTemplateNodes;
- (_TVTemplateTreeNode)initWithTemplateName:(id)name styleSheetURLs:(id)ls abstract:(BOOL)abstract;
- (void)addDerivedTemplateNode:(id)node;
@end

@implementation _TVTemplateTreeNode

- (NSArray)derivedTemplateNodes
{
  v2 = [(NSMutableArray *)self->_derivedTemplateNodes copy];

  return v2;
}

- (_TVTemplateTreeNode)initWithTemplateName:(id)name styleSheetURLs:(id)ls abstract:(BOOL)abstract
{
  nameCopy = name;
  lsCopy = ls;
  v16.receiver = self;
  v16.super_class = _TVTemplateTreeNode;
  v10 = [(_TVTemplateTreeNode *)&v16 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    templateName = v10->_templateName;
    v10->_templateName = v11;

    v13 = [lsCopy copy];
    styleSheetURLs = v10->_styleSheetURLs;
    v10->_styleSheetURLs = v13;

    v10->_isAbstract = abstract;
  }

  return v10;
}

- (void)addDerivedTemplateNode:(id)node
{
  nodeCopy = node;
  derivedTemplateNodes = self->_derivedTemplateNodes;
  v8 = nodeCopy;
  if (!derivedTemplateNodes)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = self->_derivedTemplateNodes;
    self->_derivedTemplateNodes = array;

    nodeCopy = v8;
    derivedTemplateNodes = self->_derivedTemplateNodes;
  }

  [(NSMutableArray *)derivedTemplateNodes addObject:nodeCopy];
}

@end