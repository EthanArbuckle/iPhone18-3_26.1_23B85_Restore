@interface _PXVisualDiagnosticsTableCell
- (_PXVisualDiagnosticsTableCell)initWithRenderingBlock:(id)a3;
@end

@implementation _PXVisualDiagnosticsTableCell

- (_PXVisualDiagnosticsTableCell)initWithRenderingBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _PXVisualDiagnosticsTableCell;
  v5 = [(_PXVisualDiagnosticsTableCell *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    renderingBlock = v5->_renderingBlock;
    v5->_renderingBlock = v6;
  }

  return v5;
}

@end