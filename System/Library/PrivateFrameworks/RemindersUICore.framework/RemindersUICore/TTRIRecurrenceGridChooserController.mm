@interface TTRIRecurrenceGridChooserController
- (double)heightForRow:(int64_t)row;
- (id)allCells;
- (id)cellLabels;
- (id)tableViewCell;
- (int64_t)gridViewType;
- (void)dividedGridViewControllerDidLayout:(id)layout;
- (void)prepareForDisplay;
- (void)refreshCells;
- (void)selectCell:(id)cell atIndex:(int64_t)index;
@end

@implementation TTRIRecurrenceGridChooserController

- (id)tableViewCell
{
  tableViewCell = self->_tableViewCell;
  if (!tableViewCell)
  {
    v4 = [TTRIUIDividedGridViewTableViewCell alloc];
    gridViewType = [(TTRIRecurrenceGridChooserController *)self gridViewType];
    cellLabels = [(TTRIRecurrenceGridChooserController *)self cellLabels];
    cellAccessibilityLabels = [(TTRIRecurrenceGridChooserController *)self cellAccessibilityLabels];
    backgroundColor = [(TTRIRecurrenceChooserController *)self backgroundColor];
    v9 = [(TTRIUIDividedGridViewTableViewCell *)v4 initWithStyle:0 reuseIdentifier:0 gridViewType:gridViewType buttonTitles:cellLabels buttonAccessibilityLabels:cellAccessibilityLabels cellBackgroundColor:backgroundColor];

    [(TTRIUIDividedGridViewTableViewCell *)v9 setDrawingEnabled:1];
    [(TTRIUIDividedGridViewTableViewCell *)v9 setSelectionStyle:0];
    gridViewController = [(TTRIUIDividedGridViewTableViewCell *)v9 gridViewController];
    [gridViewController setDelegate:self];

    [(TTRIUIDividedGridViewTableViewCell *)v9 setDrawsTopDivider:0];
    v11 = self->_tableViewCell;
    self->_tableViewCell = v9;

    tableViewCell = self->_tableViewCell;
  }

  return tableViewCell;
}

- (id)allCells
{
  tableViewCell = [(TTRIRecurrenceGridChooserController *)self tableViewCell];
  gridViewController = [tableViewCell gridViewController];
  allCells = [gridViewController allCells];

  return allCells;
}

- (double)heightForRow:(int64_t)row
{
  tableViewCell = [(TTRIRecurrenceGridChooserController *)self tableViewCell];
  [tableViewCell systemLayoutSizeFittingSize:{*MEMORY[0x277D76C78], *(MEMORY[0x277D76C78] + 8)}];
  v5 = v4;

  return v5;
}

- (void)dividedGridViewControllerDidLayout:(id)layout
{
  [(TTRIRecurrenceGridChooserController *)self prepareForDisplay];

  [(TTRIRecurrenceGridChooserController *)self refreshCells];
}

- (id)cellLabels
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)gridViewType
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  NSRequestConcreteImplementation();
  return -1;
}

- (void)prepareForDisplay
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)refreshCells
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

- (void)selectCell:(id)cell atIndex:(int64_t)index
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();

  NSRequestConcreteImplementation();
}

@end