@interface PencilEducationElementTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (void)buildMenuWithBuilder:(id)builder;
- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style;
@end

@implementation PencilEducationElementTextField

- (CGRect)textRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13.receiver = self;
  v13.super_class = PencilEducationElementTextField;
  [(PencilEducationElementTextField *)&v13 textRectForBounds:?];
  v8 = v7;
  v10 = v9;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  result = CGRectInset(v14, 12.0, 0.0);
  v11 = v8;
  v12 = v10;
  result.size.height = v12;
  result.origin.y = v11;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13.receiver = self;
  v13.super_class = PencilEducationElementTextField;
  [(PencilEducationElementTextField *)&v13 editingRectForBounds:?];
  v8 = v7;
  v10 = v9;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  result = CGRectInset(v14, 12.0, 0.0);
  v11 = v8;
  v12 = v10;
  result.size.height = v12;
  result.origin.y = v11;
  return result;
}

- (void)buildMenuWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = PencilEducationElementTextField;
  [(PencilEducationElementTextField *)&v7 buildMenuWithBuilder:builderCopy];
  system = [builderCopy system];
  contextSystem = [MEMORY[0x277D75730] contextSystem];

  if (system == contextSystem)
  {
    [builderCopy removeMenuForIdentifier:*MEMORY[0x277D76D08]];
  }
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  v5 = [(PencilEducationElementTextField *)self allowedCalloutActions:action];
  v6 = NSStringFromSelector(action);
  v7 = [v5 containsObject:v6];

  return v7;
}

- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style
{
  textCopy = text;
  alternativesCopy = alternatives;
  if (![(PencilEducationElementTextField *)self ignoreScribbleInsertText])
  {
    v10.receiver = self;
    v10.super_class = PencilEducationElementTextField;
    [(PencilEducationElementTextField *)&v10 insertText:textCopy alternatives:alternativesCopy style:style];
  }
}

@end