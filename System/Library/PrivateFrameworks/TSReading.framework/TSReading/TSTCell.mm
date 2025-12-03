@interface TSTCell
+ (id)cell;
- (BOOL)isCellContentsEqualToCell:(id)cell;
- (TSTCell)init;
- (TSTCell)initWithCell:(id)cell;
- (TSTCell)initWithStorageRef:(TSTCellStorage *)ref dataStore:(id)store;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
@end

@implementation TSTCell

+ (id)cell
{
  v2 = objc_alloc_init(TSTCell);

  return v2;
}

- (TSTCell)init
{
  v3.receiver = self;
  v3.super_class = TSTCell;
  result = [(TSTCell *)&v3 init];
  if (result)
  {
    *&result->mPrivate = 0u;
    *&result->mPrivate.mCellFormats.mBaseFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mMultipleChoiceListFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mControlFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mCustomFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mDurationFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mDateFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mNumberFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mCurrencyFormatRef = 0u;
    *&result->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct.mData = 0u;
    *(&result->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 24) = 0u;
    *&result->mPrivate.mCommentStorage = 0u;
    *&result->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType = 0u;
    *&result->mPrivate.mTextStyle = 0u;
    *&result->mPrivate.mRichTextPayload = 0u;
    *(&result->mPrivate.mValue + 8) = 0u;
    *&result->mPrivate.mCellStyle = 0u;
    result->mPrivate.mStrokePresetNumber = -1;
  }

  return result;
}

- (TSTCell)initWithCell:(id)cell
{
  v4 = [(TSTCell *)self init];
  if (v4)
  {
    TSTCellCopy(cell, v4);
  }

  return v4;
}

- (TSTCell)initWithStorageRef:(TSTCellStorage *)ref dataStore:(id)store
{
  v6 = [(TSTCell *)self init];
  v7 = v6;
  if (v6)
  {
    [(TSTCell *)v6 inflateFromStorageRef:ref dataStore:store];
  }

  return v7;
}

- (void)dealloc
{
  v3 = TSTCellClear(self);
  v4.receiver = self;
  v4.super_class = TSTCell;
  [(TSTCell *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSTCell allocWithZone:zone];

  return [(TSTCell *)v4 initWithCell:self];
}

- (BOOL)isCellContentsEqualToCell:(id)cell
{
  if (!self)
  {
    v5 = 0;
    if (cell)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = *(&self->mPrivate + 1);
  if (!cell)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *(cell + 9);
LABEL_6:
  if (v5 != v6)
  {
    return 0;
  }

  if (!self)
  {
    goto LABEL_25;
  }

  v7 = *(&self->mPrivate + 1);
  isEqual = 1;
  if (v7 > 4)
  {
    if (*(&self->mPrivate + 1) <= 6u)
    {
      if (v7 != 5)
      {
        if (v7 == 6)
        {
          mDouble = self->mPrivate.mValue.mDouble;
          if (cell && *(cell + 9))
          {
            if (*(cell + 9) == 6)
            {
              if ((mDouble != 0.0) != (*(cell + 2) != 0.0))
              {
                return 0;
              }

              goto LABEL_67;
            }

            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BOOL TSTCellBoolValue(TSTCell *)"];
            [currentHandler handleFailureInFunction:v43 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 925, @"can't get BOOL value from non-BOOL cell: %p", cell}];
          }

          if (mDouble != 0.0)
          {
            return 0;
          }

LABEL_67:
          v39 = *&self->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct.mData;
          v51 = *&self->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
          v52 = v39;
          v53 = *(&self->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 3);
          v13 = (cell + 104);
          if (!cell)
          {
            v13 = &TSUInvalidFormat;
          }

LABEL_29:
          v16 = v13[1];
          v48 = *v13;
          v49 = v16;
          v50 = *(v13 + 4);
          return TSUEqualFormatStructs(&v51, &v48);
        }

        return isEqual;
      }

      mDate = self->mPrivate.mValue.mDate;
      if (cell && *(cell + 9))
      {
        if (*(cell + 9) == 5)
        {
          v20 = *(cell + 2);
          goto LABEL_66;
        }

        currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSDate *TSTCellDateValue(TSTCell *)"];
        [currentHandler2 handleFailureInFunction:v38 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1021, @"can't get date value from a non-date cell: %p", cell}];
      }

      v20 = 0;
LABEL_66:
      if (![(NSDate *)mDate isEqualToDate:v20])
      {
        return 0;
      }

      goto LABEL_67;
    }

    if (v7 != 7)
    {
      if (v7 != 9)
      {
        return isEqual;
      }

      mRichTextPayload = self->mPrivate.mRichTextPayload;
      if (cell)
      {
        v18 = *(cell + 9);
      }

      else
      {
        v18 = 0;
      }

      return [(TSTRichTextPayload *)mRichTextPayload isEqual:v18];
    }

    v21 = (*MEMORY[0x277D6C3D8] << 32) | 4;
    mNumberFormatStruct.mCurrencyCode = 0x1000000001;
    *(&mNumberFormatStruct + 1) = v21;
    v56 = self->mPrivate.mValue.mDouble;
    if (self->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType == 268)
    {
      mNumberFormatStruct = self->mPrivate.mCellFormats.mCurrentCellFormat.var0.mNumberFormatStruct;
    }

    v54 = 0.0;
    v55 = 0uLL;
    if (cell)
    {
      v22 = *(cell + 9);
      *&v55 = 0x1000000001;
      *(&v55 + 1) = v21;
      if (v22)
      {
        if (v22 == 7)
        {
          v54 = *(cell + 2);
          if (*(cell + 26) == 268)
          {
            v55 = *(cell + 7);
          }

          goto LABEL_72;
        }

        currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
        v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSTDurationWrapper TSTCellDurationValue(TSTCell *)"];
        [currentHandler3 handleFailureInFunction:v41 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 1064, @"can't get duration value from a non-duration cell: %p", cell}];
      }
    }

    else
    {
      *&v55 = 0x1000000001;
      *(&v55 + 1) = v21;
    }

    v54 = 0.0;
LABEL_72:
    TSUFormat::TSUFormat();
    TSUFormat::TSUFormat();
    if (v56 == v54)
    {
      isEqual = TSUFormat::isEqual(&v51, &v48);
    }

    else
    {
      isEqual = 0;
    }

    MEMORY[0x26D6A97B0](&v48);
    MEMORY[0x26D6A97B0](&v51);
    return isEqual;
  }

  if (!*(&self->mPrivate + 1))
  {
LABEL_25:
    v13 = &TSUInvalidFormat;
    p_mCurrentCellFormat = &self->mPrivate.mCellFormats.mCurrentCellFormat;
    if (!self)
    {
      p_mCurrentCellFormat = &TSUInvalidFormat;
    }

    v15 = *&p_mCurrentCellFormat->var0.mMultipleChoiceListFormatStruct.mData;
    v51 = *&p_mCurrentCellFormat->mFormatType;
    v52 = v15;
    v53 = *(&p_mCurrentCellFormat->var0.mMultipleChoiceListFormatStruct + 3);
    if (cell)
    {
      v13 = (cell + 104);
    }

    goto LABEL_29;
  }

  if (v7 == 2)
  {
    v23 = *&self->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct.mData;
    v51 = *&self->mPrivate.mCellFormats.mCurrentCellFormat.mFormatType;
    v52 = v23;
    v53 = *(&self->mPrivate.mCellFormats.mCurrentCellFormat.var0.mMultipleChoiceListFormatStruct + 3);
    v24 = (cell + 104);
    if (!cell)
    {
      v24 = &TSUInvalidFormat;
    }

    v25 = v24[1];
    v48 = *v24;
    v49 = v25;
    v50 = *(v24 + 4);
    if (TSUEqualFormatStructs(&v51, &v48))
    {
      mPrivate = self->mPrivate;
      if ((mPrivate & 0xFB00) == 0x200 || (v27 = BYTE1(mPrivate), v27 == 7))
      {
        v28 = self->mPrivate.mValue.mDouble;
      }

      else
      {
        v28 = 0.0;
        if (v27)
        {
          currentHandler4 = [MEMORY[0x277D6C290] currentHandler];
          v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [currentHandler4 handleFailureInFunction:v30 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", self}];
        }
      }

      if (cell)
      {
        v32 = *(cell + 2);
        if ((v32 & 0xFB00) == 0x200 || (v33 = BYTE1(v32), v33 == 7))
        {
          v34 = *(cell + 2);
        }

        else
        {
          v34 = 0.0;
          if (v33)
          {
            currentHandler5 = [MEMORY[0x277D6C290] currentHandler];
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
            [currentHandler5 handleFailureInFunction:v36 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", cell}];
          }
        }
      }

      else
      {
        currentHandler6 = [MEMORY[0x277D6C290] currentHandler];
        v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
        [currentHandler6 handleFailureInFunction:v45 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 889, @"invalid nil value for '%s'", "cell"}];
        v34 = 0.0;
      }

      return v28 == v34;
    }

    return 0;
  }

  if (v7 != 3)
  {
    return isEqual;
  }

  mString = self->mPrivate.mValue.mString.mString;
  if (cell && (v11 = *(cell + 9), *(cell + 9)))
  {
    if (v11 == 9)
    {
      string = [*(cell + 9) string];
    }

    else if (v11 == 3)
    {
      string = *(cell + 3);
    }

    else
    {
      currentHandler7 = [MEMORY[0x277D6C290] currentHandler];
      v47 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSTCellStringValue(TSTCell *)"];
      [currentHandler7 handleFailureInFunction:v47 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 972, @"can't get string from non-string cell: %p", cell}];
      string = 0;
    }
  }

  else
  {
    string = &stru_287D36338;
  }

  return [(NSString *)mString isEqualToString:string];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (!self)
  {
    goto LABEL_13;
  }

  mPrivate = self->mPrivate;
  if (BYTE1(mPrivate) <= 4u)
  {
    if (BYTE1(mPrivate) > 2u)
    {
      if (BYTE1(mPrivate) == 3)
      {
        mDate = [MEMORY[0x277CCACA8] stringWithFormat:@"<string: '%@'>", self->mPrivate.mValue.mString.mString];
        v8 = @"String";
        return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
      }

      if (BYTE1(mPrivate) == 4)
      {
        v8 = @"DEPRECATED";
LABEL_26:
        mDate = @"<unknown cell type>";
        return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
      }

      goto LABEL_25;
    }

    if (BYTE1(mPrivate))
    {
      if (BYTE1(mPrivate) == 2)
      {
        v9 = MEMORY[0x277CCACA8];
        if ((*&self->mPrivate & 0xFB00) == 0x200)
        {
          mDate = self->mPrivate.mValue.mDate;
        }

        else
        {
          mDate = 0;
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
          [currentHandler handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", self}];
        }

        mDate = [v9 stringWithFormat:@"<number: %f>", mDate];
        v8 = @"Number";
        return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
      }

LABEL_25:
      v8 = 0;
      goto LABEL_26;
    }

LABEL_13:
    mDate = @"<empty>";
    v8 = @"No content";
    return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
  }

  if (BYTE1(mPrivate) > 6u)
  {
    switch(BYTE1(mPrivate))
    {
      case 7u:
        mDate = [MEMORY[0x277CCACA8] stringWithFormat:@"<duration: %f>", self->mPrivate.mValue.mDate];
        v8 = @"Duration";
        return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
      case 8u:
        mDate = [MEMORY[0x277CCACA8] stringWithFormat:@"<error>"];
        v8 = @"FormulaError";
        return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
      case 9u:
        mDate = [MEMORY[0x277CCACA8] stringWithFormat:@"<rich text: '%@'>", -[TSTRichTextPayload string](self->mPrivate.mRichTextPayload, "string")];
        v8 = @"RichText";
        return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
    }

    goto LABEL_25;
  }

  if (BYTE1(mPrivate) == 5)
  {
    mDate = [MEMORY[0x277CCACA8] stringWithFormat:@"<date: '%@'>", -[NSDate description](self->mPrivate.mValue.mDate, "description")];
    v8 = @"Date";
    return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
  }

  if (BYTE1(mPrivate) != 6)
  {
    goto LABEL_25;
  }

  v13 = MEMORY[0x277CCACA8];
  if ((*&self->mPrivate & 0xFB00) == 0x200)
  {
    v16 = @"TRUE";
    if (self->mPrivate.mValue.mDouble == 0.0)
    {
      v16 = @"FALSE";
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"double TSTCellDoubleValue(TSTCell *)"];
    [currentHandler2 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTCell.h"), 897, @"can't get value from non-value cell: %p", self}];
    v16 = @"FALSE";
  }

  mDate = [v13 stringWithFormat:@"<BOOL: '%@'>", v16];
  v8 = @"Bool";
  return [v3 stringWithFormat:@"<%@:%p: value type %@ value %@>", v5, self, v8, mDate];
}

@end