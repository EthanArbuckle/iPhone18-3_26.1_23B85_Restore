@interface TSUFormatReferenceObject
- ($ECB5568EE2D6808D4932FEEA0574138F)getFormatStruct;
- (BOOL)isEqual:(id)a3;
- (TSUFormatReferenceObject)init;
- (TSUFormatReferenceObject)initWithTSUFormatFormatStruct:(id *)a3;
- (void)dealloc;
@end

@implementation TSUFormatReferenceObject

- (TSUFormatReferenceObject)init
{
  v2 = +[TSUAssertionHandler currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUFormatReferenceObject init]"];
  [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatReferenceObject.m"), 16, @"don't call this. call initWithFormatStruct"}];
  return 0;
}

- (TSUFormatReferenceObject)initWithTSUFormatFormatStruct:(id *)a3
{
  v5 = *&a3->var1.var7.var2;
  v9[0] = *&a3->var0;
  v9[1] = v5;
  v10 = *(&a3->var1.var7 + 3);
  TSUFormatStructRetain(v9);
  v6 = *&a3->var0;
  v7 = *&a3->var1.var7.var2;
  *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 3) = *(&a3->var1.var7 + 3);
  *&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct.mData = v7;
  *&self->mFormatStruct.mFormatType = v6;
  return self;
}

- ($ECB5568EE2D6808D4932FEEA0574138F)getFormatStruct
{
  v3 = *(&self->var1.var7 + 1);
  *&retstr->var0 = self->var1.var0;
  *&retstr->var1.var7.var2 = v3;
  *(&retstr->var1.var7 + 3) = *&self[1].var0;
  return self;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    [a3 getFormatStruct];
    v4 = v14[0];
  }

  else
  {
    v4 = 0;
    v15 = 0;
    memset(v14, 0, sizeof(v14));
  }

  if (self->mFormatStruct.mFormatType != v4)
  {
    goto LABEL_50;
  }

  mCurrencyCode = self->mFormatStruct.var0.mNumberFormatStruct.mCurrencyCode;
  mDateTimeFormat = self->mFormatStruct.var0.mDateFormatStruct.mDateTimeFormat;
  v7 = mCurrencyCode;
  LOBYTE(v8) = 1;
  if (v4 > 262)
  {
    if (v4 > 267)
    {
      if ((v4 - 270) >= 3)
      {
        if (v4 == 268)
        {
          LOBYTE(v8) = 0;
          if (DWORD1(v14[1]) != HIDWORD(mDateTimeFormat) || *(v14 + 12) != __PAIR64__(mDateTimeFormat, HIDWORD(mCurrencyCode)))
          {
            return v8;
          }

          v10 = BYTE8(v14[0]) ^ mCurrencyCode;
        }

        else
        {
          if (v4 != 269)
          {
            goto LABEL_37;
          }

          if (WORD4(v14[0]) != mCurrencyCode)
          {
            goto LABEL_50;
          }

          v10 = BYTE10(v14[0]) ^ BYTE2(mCurrencyCode);
        }

        v9 = (v10 & 1) == 0;
      }

      else
      {
        v9 = DWORD2(v14[0]) == mCurrencyCode;
      }
    }

    else
    {
      if (v4 <= 265)
      {
        if ((v4 - 264) < 2)
        {
          LOBYTE(v8) = 0;
          if (self->mFormatStruct.var0.mControlFormatStruct.mMinimum == *(v14 + 1) && self->mFormatStruct.var0.mControlFormatStruct.mMaximum == *&v14[1] && self->mFormatStruct.var0.mControlFormatStruct.mIncrement == *(&v14[1] + 1) && self->mFormatStruct.var0.mControlFormatStruct.mDisplayFormatType == v15)
          {
            LOBYTE(v8) = ((BYTE4(v15) ^ *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 28)) & 3) == 0 && ((BYTE4(v15) ^ *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 28)) & 0xC) == 0;
          }

          return v8;
        }

        if (v4 == 263)
        {
          return v8;
        }

LABEL_37:
        v11 = +[TSUAssertionHandler currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"BOOL TSUEqualFormatStructs(TSUFormatStruct, TSUFormatStruct)"}];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/utility/TSUFormatUtilities.h"), 191, @"We should have dealt with any types earlier."}];
        goto LABEL_50;
      }

      if (v4 != 266)
      {
        return v8;
      }

      if (DWORD2(v14[0]) != mCurrencyCode)
      {
        goto LABEL_50;
      }

      v9 = HIDWORD(v14[0]) == HIDWORD(mCurrencyCode);
    }

LABEL_44:
    LOBYTE(v8) = v9;
    return v8;
  }

  if (v4 > 259)
  {
    if (v4 == 260)
    {
      return v8;
    }

    if (v4 == 261)
    {
      v8 = [(NSString *)self->mFormatStruct.var0.mDateFormatStruct.mDateTimeFormat isEqualToString:*&v14[1]];
      if (!v8)
      {
        return v8;
      }

      if ((BYTE8(v14[0]) ^ v7))
      {
        goto LABEL_50;
      }

      v9 = ((BYTE8(v14[0]) ^ v7) & 2) == 0;
    }

    else
    {
      v9 = BYTE8(v14[0]) == mCurrencyCode;
    }

    goto LABEL_44;
  }

  if ((v4 - 256) >= 4)
  {
    if (v4 < 2)
    {
      return v8;
    }

    if (v4 == 254)
    {
LABEL_26:
      LOBYTE(v8) = 1;
      return v8;
    }

    goto LABEL_37;
  }

  if (*(&v14[0] + 1) == mCurrencyCode || (v8 = [(NSString *)self->mFormatStruct.var0.mNumberFormatStruct.mCurrencyCode isEqualToString:?]))
  {
    if (((LOWORD(v14[1]) ^ mDateTimeFormat) & 0x1FFF) == 0)
    {
      goto LABEL_26;
    }

LABEL_50:
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)dealloc
{
  v3 = *&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct.mData;
  v5[0] = *&self->mFormatStruct.mFormatType;
  v5[1] = v3;
  v6 = *(&self->mFormatStruct.var0.mMultipleChoiceListFormatStruct + 3);
  TSUFormatStructRelease(v5);
  v4.receiver = self;
  v4.super_class = TSUFormatReferenceObject;
  [(TSUFormatReferenceObject *)&v4 dealloc];
}

@end