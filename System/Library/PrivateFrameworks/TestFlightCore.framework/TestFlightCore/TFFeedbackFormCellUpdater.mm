@interface TFFeedbackFormCellUpdater
- (void)updateCell:(id)cell displayingEntry:(id)entry contentDataSource:(id)source updateProxy:(id)proxy;
@end

@implementation TFFeedbackFormCellUpdater

- (void)updateCell:(id)cell displayingEntry:(id)entry contentDataSource:(id)source updateProxy:(id)proxy
{
  cellCopy = cell;
  entryCopy = entry;
  sourceCopy = source;
  proxyCopy = proxy;
  [cellCopy applyContentsOfEntry:entryCopy];
  [cellCopy prepareSeparatorsForCellInSectionLocation:{objc_msgSend(cellCopy, "sectionLocation")}];
  displayableDataType = [cellCopy displayableDataType];
  if (displayableDataType > 1)
  {
    if (displayableDataType == 2)
    {
      identifier = [entryCopy identifier];
      [cellCopy setDisplayedDataGroupInclusionBool:{objc_msgSend(sourceCopy, "isGroupWithIdentifierIncluded:", identifier)}];
      goto LABEL_11;
    }

    if (displayableDataType != 3)
    {
      goto LABEL_12;
    }

    identifier = [entryCopy identifier];
    v14 = [sourceCopy imageCollectionForIdentifer:identifier];
    [cellCopy setDisplayedDataImageCollection:v14];
  }

  else if (displayableDataType)
  {
    if (displayableDataType != 1)
    {
      goto LABEL_12;
    }

    identifier = [entryCopy identifier];
    v14 = [sourceCopy numberForIdentifier:identifier];
    [cellCopy setDisplayedDataNumber:v14];
  }

  else
  {
    identifier = [entryCopy identifier];
    v14 = [sourceCopy stringForIdentifier:identifier];
    [cellCopy setDisplayedDataString:v14];
  }

LABEL_11:
LABEL_12:
  [cellCopy setUpdateProxy:proxyCopy];
}

@end