@interface _PXVisualDiagnosticsTableCell
- (_PXVisualDiagnosticsTableCell)initWithRenderingBlock:(id)block;
@end

@implementation _PXVisualDiagnosticsTableCell

- (_PXVisualDiagnosticsTableCell)initWithRenderingBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = _PXVisualDiagnosticsTableCell;
  v5 = [(_PXVisualDiagnosticsTableCell *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    renderingBlock = v5->_renderingBlock;
    v5->_renderingBlock = v6;
  }

  return v5;
}

@end