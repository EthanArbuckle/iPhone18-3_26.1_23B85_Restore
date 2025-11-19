@interface GQDTSpiceTableModel
- (__CFArray)createSizeArrayFromPositionVector:(void *)a3;
- (int)readAttributesFromReader:(_xmlTextReader *)a3;
- (int)setColumnWidthsFromState:(id)a3;
- (int)setRowHeightsFromState:(id)a3;
@end

@implementation GQDTSpiceTableModel

- (int)readAttributesFromReader:(_xmlTextReader *)a3
{
  self->super.mHeaderRowCount = sub_42340(a3, qword_A35E8, "tableModelIsHeaderRow", 0);
  self->super.mHeaderColumnCount = sub_42340(a3, qword_A35E8, "tableModelIsHeaderColumn", 0);
  return 1;
}

- (int)setRowHeightsFromState:(id)a3
{
  v4 = [(GQDTSpiceTableModel *)self createSizeArrayFromPositionVector:*(a3 + 9)];
  self->super.mRowHeights = v4;
  if (!v4)
  {
    return 3;
  }

  self->super.mRowCount = CFArrayGetCount(v4);
  return 1;
}

- (int)setColumnWidthsFromState:(id)a3
{
  v4 = [(GQDTSpiceTableModel *)self createSizeArrayFromPositionVector:*(a3 + 10)];
  self->super.mColumnWidths = v4;
  if (!v4)
  {
    return 3;
  }

  self->super.mColumnCount = CFArrayGetCount(v4);
  return 1;
}

- (__CFArray)createSizeArrayFromPositionVector:(void *)a3
{
  v3 = *(a3 + 1) - *a3;
  v4 = v3 >> 2;
  if ((v3 >> 2) < 1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, (v4 - 1), &kCFTypeArrayCallBacks);
  if (*(a3 + 1) == *a3)
  {
    goto LABEL_10;
  }

  v7 = Mutable;
  if (v4 != 1)
  {
    v8 = **a3;
    v9 = (v3 >> 2) & 0x7FFFFFFF;
    v10 = 1;
    while (v10 < (*(a3 + 1) - *a3) >> 2)
    {
      v11 = *(*a3 + 4 * v10);
      valuePtr = v11 - v8;
      v12 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(v7, v12);
      CFRelease(v12);
      ++v10;
      v8 = v11;
      if (v9 == v10)
      {
        return v7;
      }
    }

LABEL_10:
    sub_19FF0();
  }

  return v7;
}

@end