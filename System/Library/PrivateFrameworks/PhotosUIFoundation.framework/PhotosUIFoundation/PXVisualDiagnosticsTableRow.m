@interface PXVisualDiagnosticsTableRow
@end

@implementation PXVisualDiagnosticsTableRow

void __68___PXVisualDiagnosticsTableRow_addCellForColumnWithIdentifier_text___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  v20 = CGRectInset(v19, 1.0, 1.0);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68___PXVisualDiagnosticsTableRow_addCellForColumnWithIdentifier_text___block_invoke_2;
  v16[3] = &unk_1E7BB6490;
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  [v11 drawTextInRect:v16 configuration:{x, y, width, height}];
}

void __68___PXVisualDiagnosticsTableRow_addCellForColumnWithIdentifier_text___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setText:v3];
  [v4 setFontSize:*(a1 + 40)];
  [v4 setRelativePosition:{0.0, 0.5}];
}

@end