@interface TSUFormatterDictionaryKey
- (BOOL)isEqual:(id)a3;
- (TSUFormatterDictionaryKey)initWithTSUFormatFormatStruct:(id *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation TSUFormatterDictionaryKey

- (TSUFormatterDictionaryKey)initWithTSUFormatFormatStruct:(id *)a3
{
  v9.receiver = self;
  v9.super_class = TSUFormatterDictionaryKey;
  v4 = [(TSUFormatterDictionaryKey *)&v9 init];
  if (v4)
  {
    v5 = *&a3->var1.var5.var1;
    v8[0] = *&a3->var0;
    v8[1] = v5;
    sub_2770BB180(v8);
    v6 = *&a3->var0;
    *(v4 + 24) = *&a3->var1.var5.var1;
    *(v4 + 8) = v6;
  }

  return v4;
}

- (void)dealloc
{
  v3 = *&self->_formatStruct.var0.mCustomFormatStruct.mCustomFormat;
  v5[0] = *&self->_formatStruct.mFormatType;
  v5[1] = v3;
  sub_2770BB110(v5);
  v4.receiver = self;
  v4.super_class = TSUFormatterDictionaryKey;
  [(TSUFormatterDictionaryKey *)&v4 dealloc];
}

- (unint64_t)hash
{
  p_formatStruct = &self->_formatStruct;
  v3 = self->_formatStruct.mFormatType - 270;
  if (v3 <= 4 && v3 != 3)
  {
    mDateTimeFormat = self->_formatStruct.var0.mDateFormatStruct.mDateTimeFormat;
    if (mDateTimeFormat)
    {
      return [(NSString *)mDateTimeFormat hash]^ self->_formatStruct.var0.mCustomFormatStruct.mAppliedConditionKey;
    }
  }

  v8 = *&p_formatStruct->var0.mCustomFormatStruct.mCustomFormat;
  v9[0] = *&p_formatStruct->mFormatType;
  v9[1] = v8;
  return sub_2770BB218(v9);
}

- (BOOL)isEqual:(id)a3
{
  v5 = objc_opt_class();
  v6 = TSUSpecificCast(v5, a3);
  if (!v6)
  {
    return v6;
  }

  v13 = v6;
  mFormatType = self->_formatStruct.mFormatType;
  v15 = mFormatType - 270;
  if ((mFormatType - 270) > 4 || v15 == 3)
  {
    mDateTimeFormat = self->_formatStruct.var0.mDateFormatStruct.mDateTimeFormat;
  }

  else
  {
    mDateTimeFormat = self->_formatStruct.var0.mDateFormatStruct.mDateTimeFormat;
    if (mDateTimeFormat)
    {
      v18 = *(v6 + 2) - 270;
      v19 = v18 > 4 || v18 == 3;
      if (!v19 && v6[3])
      {
        v33 = *&self->_formatStruct.var0.mNumberFormatStruct;
        v34 = *&self->_formatStruct.var0.mCustomFormatStruct.mLegacyID;
        v31 = *(v6 + 1);
        v32 = v6[4];
        LODWORD(v6) = sub_2770BB1F0(&v33, &v31);
        if (!v6)
        {
          return v6;
        }

        if (self->_formatStruct.var0.mCustomFormatStruct.mAppliedConditionKey == *(v13 + 36))
        {
          v20 = self->_formatStruct.var0.mDateFormatStruct.mDateTimeFormat == v13[3];
          goto LABEL_43;
        }

LABEL_21:
        LOBYTE(v6) = 0;
        return v6;
      }
    }
  }

  if (mFormatType != *(v6 + 2))
  {
    goto LABEL_21;
  }

  mCustomFormatKey = self->_formatStruct.var0.mCustomFormatStruct.mCustomFormatKey;
  v22 = self->_formatStruct.var0.mCustomFormatStruct.mCustomFormatKey;
  v23 = v6[2];
  v24 = v23;
  v25 = v6[3];
  LOBYTE(v6) = 1;
  if (mFormatType > 263)
  {
    if (mFormatType > 269)
    {
      v26 = *&self->_formatStruct.var0.mCustomFormatStruct.mLegacyID;
      v27 = v13[4];
      if (v15 < 3 || mFormatType == 274)
      {
        *&v33 = self->_formatStruct.var0.mCustomFormatStruct.mCustomFormatKey;
        *(&v33 + 1) = mDateTimeFormat;
        v34 = v26;
        *&v31 = v23;
        *(&v31 + 1) = v25;
        v32 = v27;
        LOBYTE(v6) = sub_2770BB1F0(&v33, &v31);
      }

      return v6;
    }

    if (mFormatType == 268)
    {
      LOBYTE(v6) = 0;
      if ((v23 ^ mCustomFormatKey) >> 24)
      {
        return v6;
      }

      if (BYTE1(mCustomFormatKey) != BYTE1(v23) || BYTE2(mCustomFormatKey) != BYTE2(v23))
      {
        return v6;
      }

      v28 = v23 ^ v22;
    }

    else
    {
      if (mFormatType != 269)
      {
        if ((mFormatType - 264) < 3)
        {
          sub_2771145F0(1, v7, v25, v8, v9, v10, v11, v12);
        }

        return v6;
      }

      if (self->_formatStruct.var0.mCustomFormatStruct.mCustomFormatKey != v23)
      {
        goto LABEL_21;
      }

      v28 = BYTE2(v23) ^ BYTE2(mCustomFormatKey);
    }

    v20 = (v28 & 1) == 0;
LABEL_43:
    LOBYTE(v6) = v20;
    return v6;
  }

  if (mFormatType > 260)
  {
    if (mFormatType != 261)
    {
      if (mFormatType != 262)
      {
        return v6;
      }

      v20 = v22 == v23;
      goto LABEL_43;
    }

    LODWORD(v6) = [(NSString *)mDateTimeFormat isEqualToString:v25];
    if (!v6)
    {
      return v6;
    }

    if ((v24 ^ v22))
    {
      goto LABEL_21;
    }

    v20 = ((v24 ^ v22) & 2) == 0;
    goto LABEL_43;
  }

  if ((mFormatType - 256) < 4 && ((v23 ^ mCustomFormatKey) & 0x1FFFFFFF) != 0)
  {
    goto LABEL_21;
  }

  return v6;
}

@end