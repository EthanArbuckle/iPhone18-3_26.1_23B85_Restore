@interface TSTTableDataFormat
- (BOOL)isEqual:(id)a3;
- (id)initObjectWithFormat:(id *)a3;
- (void)dealloc;
@end

@implementation TSTTableDataFormat

- (id)initObjectWithFormat:(id *)a3
{
  v9.receiver = self;
  v9.super_class = TSTTableDataFormat;
  v4 = [(TSTTableDataFormat *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v6 = *(&a3->var1.var7 + 3);
    v7 = *&a3->var1.var7.var2;
    *&v4->mFormat.mFormatType = *&a3->var0;
    *&v4->mFormat.var0.mMultipleChoiceListFormatStruct.mData = v7;
    *(&v4->mFormat.var0.mMultipleChoiceListFormatStruct + 3) = v6;
    TSUFormatStructRetain();
    v5->super.mRefCount = 1;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_60;
  }

  p_mFormat = &self->mFormat;
  mFormatType = self->mFormat.mFormatType;
  v7 = a3 + 16;
  if (mFormatType != *(a3 + 4))
  {
    goto LABEL_60;
  }

  mMinimum = self->mFormat.var0.mControlFormatStruct.mMinimum;
  mMaximum = self->mFormat.var0.mControlFormatStruct.mMaximum;
  v10 = *(a3 + 3);
  v11 = *(a3 + 4);
  v12 = LOWORD(mMaximum);
  v13 = *(v7 + 2);
  mCurrencyCode = p_mFormat->var0.mNumberFormatStruct.mCurrencyCode;
  v15 = *(v7 + 1);
  LOBYTE(v16) = 1;
  if (mFormatType > 262)
  {
    v17 = HIDWORD(*&mMinimum);
    v18 = HIDWORD(*&v10);
    if (mFormatType > 267)
    {
      if ((mFormatType - 270) >= 3)
      {
        if (mFormatType == 268)
        {
          if ((*&mMaximum ^ v13) >> 32)
          {
            v25 = 0;
          }

          else
          {
            v25 = v17 == v18;
          }

          if (!v25 || LODWORD(mMaximum) != v13)
          {
            goto LABEL_60;
          }

          v22 = ((v15 ^ mCurrencyCode) & 1) == 0;
        }

        else
        {
          if (mFormatType != 269)
          {
            goto LABEL_41;
          }

          if (LOWORD(mMinimum) != LOWORD(v10))
          {
            goto LABEL_60;
          }

          v22 = ((LODWORD(v10) ^ LODWORD(mMinimum)) & 0x10000) == 0;
        }
      }

      else
      {
        v22 = LODWORD(mMinimum) == LODWORD(v10);
      }
    }

    else if (mFormatType > 265)
    {
      if (mFormatType != 266)
      {
        return v16;
      }

      v22 = LODWORD(mMinimum) == LODWORD(v10) && v17 == v18;
    }

    else
    {
      if ((mFormatType - 264) >= 2)
      {
        if (mFormatType == 263)
        {
          return v16;
        }

        goto LABEL_41;
      }

      v21 = mMinimum == v10 && mMaximum == v11 && p_mFormat->var0.mControlFormatStruct.mIncrement == *(v7 + 3) && p_mFormat->var0.mControlFormatStruct.mDisplayFormatType == *(v7 + 8);
      if (!v21 || ((v7[36] ^ *(&p_mFormat->var0.mMultipleChoiceListFormatStruct + 28)) & 3) != 0)
      {
        goto LABEL_60;
      }

      v22 = ((v7[36] ^ *(&p_mFormat->var0.mMultipleChoiceListFormatStruct + 28)) & 0xC) == 0;
    }

LABEL_57:
    LOBYTE(v16) = v22;
    return v16;
  }

  if (mFormatType > 259)
  {
    if (mFormatType == 260)
    {
      return v16;
    }

    if (mFormatType == 261)
    {
      v16 = [(NSString *)p_mFormat->var0.mDateFormatStruct.mDateTimeFormat isEqualToString:*(v7 + 2)];
      if (!v16)
      {
        return v16;
      }

      if ((v15 ^ mCurrencyCode))
      {
        goto LABEL_60;
      }

      v22 = ((v15 ^ mCurrencyCode) & 2) == 0;
    }

    else
    {
      v22 = mCurrencyCode == v15;
    }

    goto LABEL_57;
  }

  if ((mFormatType - 256) >= 4)
  {
    if (mFormatType < 2)
    {
      return v16;
    }

    if (mFormatType == 254)
    {
LABEL_30:
      LOBYTE(v16) = 1;
      return v16;
    }

LABEL_41:
    v23 = [MEMORY[0x277D6C290] currentHandler];
    v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUEqualFormatStructs(TSUFormatStruct, TSUFormatStruct)"}];
    [v23 handleFailureInFunction:v24 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Binaries/AlderShared/install/Root/usr/local/include/TSFrameworks/TSUtility/TSUFormatUtilities.h"), 191, @"We should have dealt with any types earlier."}];
    goto LABEL_60;
  }

  if (*&mMinimum == *&v10 || (v16 = [*&mMinimum isEqualToString:?]) != 0)
  {
    if (((v13 ^ v12) & 0x1FFF) == 0)
    {
      goto LABEL_30;
    }

LABEL_60:
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (void)dealloc
{
  v3 = *&self->mFormat.var0.mMultipleChoiceListFormatStruct.mData;
  v4[1] = *&self->mFormat.mFormatType;
  v4[2] = v3;
  v5 = *(&self->mFormat.var0.mMultipleChoiceListFormatStruct + 3);
  TSUFormatStructRelease();
  v4[0].receiver = self;
  v4[0].super_class = TSTTableDataFormat;
  [(objc_super *)v4 dealloc];
}

@end