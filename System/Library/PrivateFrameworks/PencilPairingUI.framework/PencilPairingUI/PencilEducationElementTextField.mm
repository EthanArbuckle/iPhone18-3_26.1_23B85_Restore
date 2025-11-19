@interface PencilEducationElementTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (void)buildMenuWithBuilder:(id)a3;
- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5;
@end

@implementation PencilEducationElementTextField

- (CGRect)textRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (CGRect)editingRectForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)buildMenuWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PencilEducationElementTextField;
  [(PencilEducationElementTextField *)&v7 buildMenuWithBuilder:v4];
  v5 = [v4 system];
  v6 = [MEMORY[0x277D75730] contextSystem];

  if (v5 == v6)
  {
    [v4 removeMenuForIdentifier:*MEMORY[0x277D76D08]];
  }
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v5 = [(PencilEducationElementTextField *)self allowedCalloutActions:a3];
  v6 = NSStringFromSelector(a3);
  v7 = [v5 containsObject:v6];

  return v7;
}

- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (![(PencilEducationElementTextField *)self ignoreScribbleInsertText])
  {
    v10.receiver = self;
    v10.super_class = PencilEducationElementTextField;
    [(PencilEducationElementTextField *)&v10 insertText:v8 alternatives:v9 style:a5];
  }
}

@end