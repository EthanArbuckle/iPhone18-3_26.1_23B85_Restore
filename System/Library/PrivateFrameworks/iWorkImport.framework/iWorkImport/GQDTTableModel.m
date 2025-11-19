@interface GQDTTableModel
- (BOOL)hasGroupDisplayType:(unsigned __int16)a3 level:(int)a4 displayType:(int *)a5 isTypeVisible:(BOOL *)a6;
- (BOOL)visibilityForColumn:(unsigned __int16)a3;
- (BOOL)visibilityForRow:(unsigned __int16)a3;
- (float)heightForRow:(unsigned __int16)a3;
- (float)widthForColumn:(unsigned __int16)a3;
- (int)addColumnWidthFrom:(_xmlTextReader *)a3;
- (int)addRowHeightFrom:(_xmlTextReader *)a3;
- (int)readAttributesForGrid:(_xmlTextReader *)a3;
- (int)readAttributesForModel:(_xmlTextReader *)a3;
- (int)typeOfVectorAlongGridline:(unsigned __int16)a3 offset:(unsigned __int16)a4 length:(unsigned __int16)a5 vertical:(BOOL)a6;
- (unsigned)firstVisibleColumn;
- (void)dealloc;
- (void)setCells:(__CFArray *)a3;
@end

@implementation GQDTTableModel

- (void)dealloc
{
  mName = self->mName;
  if (mName)
  {
    CFRelease(mName);
  }

  mCells = self->mCells;
  if (mCells)
  {
    CFRelease(mCells);
  }

  mColumnWidths = self->mColumnWidths;
  if (mColumnWidths)
  {
    CFRelease(mColumnWidths);
  }

  mRowHeights = self->mRowHeights;
  if (mRowHeights)
  {
    CFRelease(mRowHeights);
  }

  mColumnVisibilities = self->mColumnVisibilities;
  if (mColumnVisibilities)
  {
    CFRelease(mColumnVisibilities);
  }

  mRowVisibilities = self->mRowVisibilities;
  if (mRowVisibilities)
  {
    CFRelease(mRowVisibilities);
  }

  mColumnGroupDisplayTypes = self->mColumnGroupDisplayTypes;
  if (mColumnGroupDisplayTypes)
  {
    CFRelease(mColumnGroupDisplayTypes);
  }

  v10.receiver = self;
  v10.super_class = GQDTTableModel;
  [(GQDTTableModel *)&v10 dealloc];
}

- (float)widthForColumn:(unsigned __int16)a3
{
  v3 = a3;
  Count = CFArrayGetCount(self->mColumnWidths);
  result = -1.0;
  if (Count > v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mColumnWidths, v3);
    valuePtr = 0.0;
    CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr);
    return valuePtr;
  }

  return result;
}

- (float)heightForRow:(unsigned __int16)a3
{
  v3 = a3;
  Count = CFArrayGetCount(self->mRowHeights);
  result = -1.0;
  if (Count > v3)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(self->mRowHeights, v3);
    valuePtr = 0.0;
    CFNumberGetValue(ValueAtIndex, kCFNumberFloatType, &valuePtr);
    return valuePtr;
  }

  return result;
}

- (BOOL)visibilityForColumn:(unsigned __int16)a3
{
  mColumnVisibilities = self->mColumnVisibilities;
  if (!mColumnVisibilities)
  {
    return 1;
  }

  v5 = a3;
  if (CFArrayGetCount(mColumnVisibilities) <= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(self->mColumnVisibilities, v5);
  return CFBooleanGetValue(ValueAtIndex) != 0;
}

- (BOOL)visibilityForRow:(unsigned __int16)a3
{
  mRowVisibilities = self->mRowVisibilities;
  if (!mRowVisibilities)
  {
    return 1;
  }

  v5 = a3;
  if (CFArrayGetCount(mRowVisibilities) <= a3)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(self->mRowVisibilities, v5);
  return CFBooleanGetValue(ValueAtIndex) != 0;
}

- (int)typeOfVectorAlongGridline:(unsigned __int16)a3 offset:(unsigned __int16)a4 length:(unsigned __int16)a5 vertical:(BOOL)a6
{
  if (a6)
  {
    v6 = 0;
    p_mColumnCount = &self->mColumnCount;
    p_mHeaderColumnCount = &self->mHeaderColumnCount;
    p_mRowCount = &self->mRowCount;
    mFooterRowCount = self->mFooterRowCount;
    p_mHeaderRowCount = &self->mHeaderRowCount;
  }

  else
  {
    mFooterRowCount = 0;
    p_mColumnCount = &self->mRowCount;
    p_mHeaderColumnCount = &self->mHeaderRowCount;
    v6 = self->mFooterRowCount;
    p_mRowCount = &self->mColumnCount;
    p_mHeaderRowCount = &self->mHeaderColumnCount;
  }

  v12 = *p_mHeaderRowCount;
  v13 = *p_mColumnCount;
  if (a3)
  {
    v14 = v13 == a3;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14;
  if (a5 + a4 <= v12)
  {
    LOBYTE(v19) = 1;
    result = v15;
  }

  else
  {
    v16 = mFooterRowCount != 0;
    v17 = *p_mRowCount - mFooterRowCount <= a4;
    if (v15)
    {
      v18 = 4;
    }

    else
    {
      v18 = 3;
    }

    v19 = v16 && v17;
    if (v19)
    {
      result = v18;
    }

    else
    {
      result = 7;
    }
  }

  v21 = *p_mHeaderColumnCount;
  if ((v19 & 1) == 0 || !a6)
  {
    if (v21)
    {
      if (!a3)
      {
        return 1;
      }

      if (v21 > a3)
      {
        return 0;
      }

      if (v21 == a3)
      {
        return 2;
      }
    }

    if (!v6)
    {
      goto LABEL_34;
    }

    if (v13 == a3)
    {
      return 4;
    }

    v22 = v13 - v6;
    if (v22 < a3)
    {
      return 3;
    }

    if (v22 == a3)
    {
      return 5;
    }

    else
    {
LABEL_34:
      if (v15)
      {
        v23 = 6;
      }

      else
      {
        v23 = 7;
      }

      if ((v19 & 1) == 0)
      {
        return v23;
      }
    }
  }

  return result;
}

- (BOOL)hasGroupDisplayType:(unsigned __int16)a3 level:(int)a4 displayType:(int *)a5 isTypeVisible:(BOOL *)a6
{
  v8 = a4;
  valuePtr = a4;
  ValueAtIndex = CFArrayGetValueAtIndex(self->mColumnGroupDisplayTypes, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0;
    v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
    if (CFDictionaryGetValueIfPresent(ValueAtIndex, v11, &v14))
    {
      v12 = v14;
      *a5 = v14[2];
      *a6 = *(v12 + 12);
      CFRelease(v11);
      return 1;
    }

    CFRelease(v11);
    v8 = valuePtr;
  }

  result = 0;
  if (v8 < self->mNumGroupLevels)
  {
    *a5 = 0;
    *a6 = 1;
  }

  return result;
}

- (unsigned)firstVisibleColumn
{
  if (!self->mColumnVisibilities)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    if (self->mColumnCount <= v3)
    {
      break;
    }

    if ([(GQDTTableModel *)self visibilityForColumn:v3])
    {
      break;
    }

    ++v3;
  }

  while (self->mColumnVisibilities);
  return v3;
}

- (int)readAttributesForModel:(_xmlTextReader *)a3
{
  self->mName = sub_4294C(a3, qword_A35E8, "name");
  self->mNameVisible = sub_42340(a3, qword_A35E8, "name-is-visible", 0);
  self->mHeaderRowCount = sub_4258C(a3, qword_A35E8, "num-header-rows", 0);
  self->mHeaderColumnCount = sub_4258C(a3, qword_A35E8, "num-header-columns", 0);
  self->mFooterRowCount = sub_4258C(a3, qword_A35E8, "num-footer-rows", 0);
  return 1;
}

- (int)readAttributesForGrid:(_xmlTextReader *)a3
{
  self->mColumnCount = sub_4258C(a3, qword_A35E8, "numcols", 0);
  self->mRowCount = sub_4258C(a3, qword_A35E8, "numrows", 0);
  self->mColumnWidths = CFArrayCreateMutable(kCFAllocatorDefault, self->mColumnCount, &kCFTypeArrayCallBacks);
  self->mRowHeights = CFArrayCreateMutable(kCFAllocatorDefault, self->mRowCount, &kCFTypeArrayCallBacks);
  self->mColumnVisibilities = CFArrayCreateMutable(kCFAllocatorDefault, self->mColumnCount, &kCFTypeArrayCallBacks);
  self->mRowVisibilities = CFArrayCreateMutable(kCFAllocatorDefault, self->mRowCount, &kCFTypeArrayCallBacks);
  self->mColumnGroupDisplayTypes = CFArrayCreateMutable(kCFAllocatorDefault, self->mColumnCount, &kCFTypeArrayCallBacks);
  return 1;
}

- (int)addColumnWidthFrom:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, "width");
  *&v5 = v5;
  valuePtr = LODWORD(v5);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  CFArrayAppendValue(self->mColumnWidths, v6);
  CFRelease(v6);
  v7 = sub_42468(a3, qword_A35E8, "hiding-state", 0);
  v8 = &kCFBooleanTrue;
  mColumnVisibilities = self->mColumnVisibilities;
  if (v7)
  {
    v8 = &kCFBooleanFalse;
  }

  CFArrayAppendValue(self->mColumnVisibilities, *v8);
  return 1;
}

- (int)addRowHeightFrom:(_xmlTextReader *)a3
{
  sub_4290C(a3, qword_A35E8, "height");
  *&v5 = v5;
  valuePtr = LODWORD(v5);
  v6 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
  CFArrayAppendValue(self->mRowHeights, v6);
  CFRelease(v6);
  v7 = sub_42468(a3, qword_A35E8, "hiding-state", 0);
  v8 = &kCFBooleanTrue;
  mRowVisibilities = self->mRowVisibilities;
  if (v7)
  {
    v8 = &kCFBooleanFalse;
  }

  CFArrayAppendValue(self->mRowVisibilities, *v8);
  return 1;
}

- (void)setCells:(__CFArray *)a3
{
  mCells = self->mCells;
  if (mCells)
  {
    CFRelease(mCells);
  }

  self->mCells = a3;
}

@end