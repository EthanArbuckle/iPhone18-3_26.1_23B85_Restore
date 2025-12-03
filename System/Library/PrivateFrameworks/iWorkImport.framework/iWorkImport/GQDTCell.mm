@interface GQDTCell
- (int)readAttributesForBaseCell:(_xmlTextReader *)cell processor:(id)processor;
- (int)readAttributesForBaseTabularCell:(_xmlTextReader *)cell processor:(id)processor;
- (int)readBaseAttributesForBaseCell:(_xmlTextReader *)cell processor:(id)processor;
- (void)dealloc;
- (void)setCellStyle:(id)style;
@end

@implementation GQDTCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTCell;
  [(GQDTCell *)&v3 dealloc];
}

- (void)setCellStyle:(id)style
{
  styleCopy = style;

  self->mStyle = style;
}

- (int)readAttributesForBaseCell:(_xmlTextReader *)cell processor:(id)processor
{
  self->mColumnIndex = sub_4258C(cell, qword_A35E8, "col", 0);
  self->mRowIndex = sub_4258C(cell, qword_A35E8, "row", 0);

  return [(GQDTCell *)self readBaseAttributesForBaseCell:cell processor:processor];
}

- (int)readAttributesForBaseTabularCell:(_xmlTextReader *)cell processor:(id)processor
{
  documentState = [processor documentState];
  tableState = [documentState tableState];
  v23 = 0;
  if (sub_424A8(cell, qword_A35E8, "ct", &v23))
  {
    [tableState skipCells:v23 - 1];
  }

  self->mRowIndex = [tableState row];
  self->mColumnIndex = [tableState column];
  [tableState incrementCellPosition];
  AttributeNs = xmlTextReaderGetAttributeNs(cell, "s", *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v10 = AttributeNs;
    v11 = [objc_msgSend(documentState "root")];
    free(v10);
  }

  else if ([tableState isCounting])
  {
    v12 = [objc_msgSend(tableState "table")];
    v13 = [objc_msgSend(tableState "table")];
    rowCount = [v12 rowCount];
    headerRowCount = [v12 headerRowCount];
    headerColumnCount = [v12 headerColumnCount];
    footerRowCount = [v12 footerRowCount];
    mRowIndex = self->mRowIndex;
    if (mRowIndex >= headerRowCount)
    {
      if (self->mColumnIndex >= headerColumnCount)
      {
        v21 = rowCount - footerRowCount;
        v19 = v13;
        if (v21 >= mRowIndex)
        {
          v20 = 84;
        }

        else
        {
          v20 = 87;
        }
      }

      else
      {
        v19 = v13;
        v20 = 86;
      }
    }

    else
    {
      v19 = v13;
      v20 = 85;
    }

    v11 = [v19 valueForObjectProperty:v20];
  }

  else
  {
    v11 = 0;
  }

  [(GQDTCell *)self setCellStyle:v11];
  return [(GQDTCell *)self readBaseAttributesForBaseCell:cell processor:processor];
}

- (int)readBaseAttributesForBaseCell:(_xmlTextReader *)cell processor:(id)processor
{
  v7 = [objc_msgSend(processor "documentState")];
  self->mColumnSpan = sub_4258C(cell, qword_A35E8, "col-span", 1);
  self->mRowSpan = sub_4258C(cell, qword_A35E8, "row-span", 1);
  [objc_msgSend(objc_msgSend(processor "documentState")];
  currentOverlapCell = [v7 currentOverlapCell];
  if (currentOverlapCell)
  {
    v9 = currentOverlapCell;
    self->mColumnIndex = [currentOverlapCell columnIndex];
    self->mColumnSpan += [v9 columnSpan];
    [v7 setCurrentOverlapCell:0];
  }

  return 1;
}

@end