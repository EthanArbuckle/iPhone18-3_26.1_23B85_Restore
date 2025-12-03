@interface GQDTSpiceTableModel
- (__CFArray)createSizeArrayFromPositionVector:(void *)vector;
- (int)readAttributesFromReader:(_xmlTextReader *)reader;
- (int)setColumnWidthsFromState:(id)state;
- (int)setRowHeightsFromState:(id)state;
@end

@implementation GQDTSpiceTableModel

- (int)readAttributesFromReader:(_xmlTextReader *)reader
{
  self->super.mHeaderRowCount = sub_42340(reader, qword_A35E8, "tableModelIsHeaderRow", 0);
  self->super.mHeaderColumnCount = sub_42340(reader, qword_A35E8, "tableModelIsHeaderColumn", 0);
  return 1;
}

- (int)setRowHeightsFromState:(id)state
{
  v4 = [(GQDTSpiceTableModel *)self createSizeArrayFromPositionVector:*(state + 9)];
  self->super.mRowHeights = v4;
  if (!v4)
  {
    return 3;
  }

  self->super.mRowCount = CFArrayGetCount(v4);
  return 1;
}

- (int)setColumnWidthsFromState:(id)state
{
  v4 = [(GQDTSpiceTableModel *)self createSizeArrayFromPositionVector:*(state + 10)];
  self->super.mColumnWidths = v4;
  if (!v4)
  {
    return 3;
  }

  self->super.mColumnCount = CFArrayGetCount(v4);
  return 1;
}

- (__CFArray)createSizeArrayFromPositionVector:(void *)vector
{
  v3 = *(vector + 1) - *vector;
  v4 = v3 >> 2;
  if ((v3 >> 2) < 1)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(0, (v4 - 1), &kCFTypeArrayCallBacks);
  if (*(vector + 1) == *vector)
  {
    goto LABEL_10;
  }

  v7 = Mutable;
  if (v4 != 1)
  {
    v8 = **vector;
    v9 = (v3 >> 2) & 0x7FFFFFFF;
    v10 = 1;
    while (v10 < (*(vector + 1) - *vector) >> 2)
    {
      v11 = *(*vector + 4 * v10);
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