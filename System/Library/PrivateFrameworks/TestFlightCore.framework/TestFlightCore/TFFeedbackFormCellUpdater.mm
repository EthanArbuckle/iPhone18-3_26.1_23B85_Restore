@interface TFFeedbackFormCellUpdater
- (void)updateCell:(id)a3 displayingEntry:(id)a4 contentDataSource:(id)a5 updateProxy:(id)a6;
@end

@implementation TFFeedbackFormCellUpdater

- (void)updateCell:(id)a3 displayingEntry:(id)a4 contentDataSource:(id)a5 updateProxy:(id)a6
{
  v15 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  [v15 applyContentsOfEntry:v9];
  [v15 prepareSeparatorsForCellInSectionLocation:{objc_msgSend(v15, "sectionLocation")}];
  v12 = [v15 displayableDataType];
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = [v9 identifier];
      [v15 setDisplayedDataGroupInclusionBool:{objc_msgSend(v10, "isGroupWithIdentifierIncluded:", v13)}];
      goto LABEL_11;
    }

    if (v12 != 3)
    {
      goto LABEL_12;
    }

    v13 = [v9 identifier];
    v14 = [v10 imageCollectionForIdentifer:v13];
    [v15 setDisplayedDataImageCollection:v14];
  }

  else if (v12)
  {
    if (v12 != 1)
    {
      goto LABEL_12;
    }

    v13 = [v9 identifier];
    v14 = [v10 numberForIdentifier:v13];
    [v15 setDisplayedDataNumber:v14];
  }

  else
  {
    v13 = [v9 identifier];
    v14 = [v10 stringForIdentifier:v13];
    [v15 setDisplayedDataString:v14];
  }

LABEL_11:
LABEL_12:
  [v15 setUpdateProxy:v11];
}

@end