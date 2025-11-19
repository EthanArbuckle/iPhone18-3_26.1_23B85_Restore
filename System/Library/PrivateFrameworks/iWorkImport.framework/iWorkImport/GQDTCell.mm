@interface GQDTCell
- (int)readAttributesForBaseCell:(_xmlTextReader *)a3 processor:(id)a4;
- (int)readAttributesForBaseTabularCell:(_xmlTextReader *)a3 processor:(id)a4;
- (int)readBaseAttributesForBaseCell:(_xmlTextReader *)a3 processor:(id)a4;
- (void)dealloc;
- (void)setCellStyle:(id)a3;
@end

@implementation GQDTCell

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GQDTCell;
  [(GQDTCell *)&v3 dealloc];
}

- (void)setCellStyle:(id)a3
{
  v5 = a3;

  self->mStyle = a3;
}

- (int)readAttributesForBaseCell:(_xmlTextReader *)a3 processor:(id)a4
{
  self->mColumnIndex = sub_4258C(a3, qword_A35E8, "col", 0);
  self->mRowIndex = sub_4258C(a3, qword_A35E8, "row", 0);

  return [(GQDTCell *)self readBaseAttributesForBaseCell:a3 processor:a4];
}

- (int)readAttributesForBaseTabularCell:(_xmlTextReader *)a3 processor:(id)a4
{
  v7 = [a4 documentState];
  v8 = [v7 tableState];
  v23 = 0;
  if (sub_424A8(a3, qword_A35E8, "ct", &v23))
  {
    [v8 skipCells:v23 - 1];
  }

  self->mRowIndex = [v8 row];
  self->mColumnIndex = [v8 column];
  [v8 incrementCellPosition];
  AttributeNs = xmlTextReaderGetAttributeNs(a3, "s", *(qword_A35E8 + 16));
  if (AttributeNs)
  {
    v10 = AttributeNs;
    v11 = [objc_msgSend(v7 "root")];
    free(v10);
  }

  else if ([v8 isCounting])
  {
    v12 = [objc_msgSend(v8 "table")];
    v13 = [objc_msgSend(v8 "table")];
    v14 = [v12 rowCount];
    v15 = [v12 headerRowCount];
    v16 = [v12 headerColumnCount];
    v17 = [v12 footerRowCount];
    mRowIndex = self->mRowIndex;
    if (mRowIndex >= v15)
    {
      if (self->mColumnIndex >= v16)
      {
        v21 = v14 - v17;
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
  return [(GQDTCell *)self readBaseAttributesForBaseCell:a3 processor:a4];
}

- (int)readBaseAttributesForBaseCell:(_xmlTextReader *)a3 processor:(id)a4
{
  v7 = [objc_msgSend(a4 "documentState")];
  self->mColumnSpan = sub_4258C(a3, qword_A35E8, "col-span", 1);
  self->mRowSpan = sub_4258C(a3, qword_A35E8, "row-span", 1);
  [objc_msgSend(objc_msgSend(a4 "documentState")];
  v8 = [v7 currentOverlapCell];
  if (v8)
  {
    v9 = v8;
    self->mColumnIndex = [v8 columnIndex];
    self->mColumnSpan += [v9 columnSpan];
    [v7 setCurrentOverlapCell:0];
  }

  return 1;
}

@end