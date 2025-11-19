@interface WFParameterEditorHostingCellContext
- (WFParameterEditorHostingCell)cell;
@end

@implementation WFParameterEditorHostingCellContext

- (WFParameterEditorHostingCell)cell
{
  WeakRetained = objc_loadWeakRetained(&self->_cell);

  return WeakRetained;
}

@end