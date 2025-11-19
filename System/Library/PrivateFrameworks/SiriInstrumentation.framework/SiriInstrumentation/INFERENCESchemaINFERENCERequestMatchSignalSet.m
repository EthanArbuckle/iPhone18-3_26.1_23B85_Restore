@interface INFERENCESchemaINFERENCERequestMatchSignalSet
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCERequestMatchSignalSet)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCERequestMatchSignalSet)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAreAllPrimaryContactTokensInQuery:(BOOL)a3;
- (void)setHasAreAllQueryTokensInContact:(BOOL)a3;
- (void)setHasIsFamilyNameMatch:(BOOL)a3;
- (void)setHasIsGivenNameMatch:(BOOL)a3;
- (void)setHasIsHandleQueryLabelNameMatch:(BOOL)a3;
- (void)setHasIsHandleQueryMatch:(BOOL)a3;
- (void)setHasIsMiddleNameMatch:(BOOL)a3;
- (void)setHasIsNamePrefixMatch:(BOOL)a3;
- (void)setHasIsNameSuffixMatch:(BOOL)a3;
- (void)setHasIsNicknameMatch:(BOOL)a3;
- (void)setHasIsOrganizationNameMatch:(BOOL)a3;
- (void)setHasIsWeakOrganizationMatch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCERequestMatchSignalSet

- (INFERENCESchemaINFERENCERequestMatchSignalSet)initWithDictionary:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = INFERENCESchemaINFERENCERequestMatchSignalSet;
  v5 = [(INFERENCESchemaINFERENCERequestMatchSignalSet *)&v28 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"numPrimaryTokens"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setNumPrimaryTokens:](v5, "setNumPrimaryTokens:", [v6 unsignedIntValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"areAllQueryTokensInContact"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setAreAllQueryTokensInContact:](v5, "setAreAllQueryTokensInContact:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"areAllPrimaryContactTokensInQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setAreAllPrimaryContactTokensInQuery:](v5, "setAreAllPrimaryContactTokensInQuery:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isGivenNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsGivenNameMatch:](v5, "setIsGivenNameMatch:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isMiddleNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsMiddleNameMatch:](v5, "setIsMiddleNameMatch:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"isFamilyNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsFamilyNameMatch:](v5, "setIsFamilyNameMatch:", [v11 BOOLValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"isOrganizationNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsOrganizationNameMatch:](v5, "setIsOrganizationNameMatch:", [v12 BOOLValue]);
    }

    v27 = v6;
    v13 = [v4 objectForKeyedSubscript:{@"isWeakOrganizationMatch", v12}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsWeakOrganizationMatch:](v5, "setIsWeakOrganizationMatch:", [v13 BOOLValue]);
    }

    v26 = v7;
    v14 = [v4 objectForKeyedSubscript:@"isNicknameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsNicknameMatch:](v5, "setIsNicknameMatch:", [v14 BOOLValue]);
    }

    v25 = v8;
    v15 = [v4 objectForKeyedSubscript:@"isNamePrefixMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsNamePrefixMatch:](v5, "setIsNamePrefixMatch:", [v15 BOOLValue]);
    }

    v23 = v11;
    v24 = v9;
    v16 = [v4 objectForKeyedSubscript:@"isNameSuffixMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsNameSuffixMatch:](v5, "setIsNameSuffixMatch:", [v16 BOOLValue]);
    }

    v17 = v10;
    v18 = [v4 objectForKeyedSubscript:@"isHandleQueryMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsHandleQueryMatch:](v5, "setIsHandleQueryMatch:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"isHandleQueryLabelNameMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCERequestMatchSignalSet setIsHandleQueryLabelNameMatch:](v5, "setIsHandleQueryLabelNameMatch:", [v19 BOOLValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCERequestMatchSignalSet)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCERequestMatchSignalSet *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCERequestMatchSignalSet *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet areAllPrimaryContactTokensInQuery](self, "areAllPrimaryContactTokensInQuery")}];
    [v3 setObject:v7 forKeyedSubscript:@"areAllPrimaryContactTokensInQuery"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet areAllQueryTokensInContact](self, "areAllQueryTokensInContact")}];
  [v3 setObject:v8 forKeyedSubscript:@"areAllQueryTokensInContact"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isFamilyNameMatch](self, "isFamilyNameMatch")}];
  [v3 setObject:v9 forKeyedSubscript:@"isFamilyNameMatch"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isGivenNameMatch](self, "isGivenNameMatch")}];
  [v3 setObject:v10 forKeyedSubscript:@"isGivenNameMatch"];

  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_6:
    if ((has & 0x800) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isHandleQueryLabelNameMatch](self, "isHandleQueryLabelNameMatch")}];
  [v3 setObject:v11 forKeyedSubscript:@"isHandleQueryLabelNameMatch"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isHandleQueryMatch](self, "isHandleQueryMatch")}];
  [v3 setObject:v12 forKeyedSubscript:@"isHandleQueryMatch"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isMiddleNameMatch](self, "isMiddleNameMatch")}];
  [v3 setObject:v13 forKeyedSubscript:@"isMiddleNameMatch"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_9:
    if ((has & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isNamePrefixMatch](self, "isNamePrefixMatch")}];
  [v3 setObject:v14 forKeyedSubscript:@"isNamePrefixMatch"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_10:
    if ((has & 0x100) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isNameSuffixMatch](self, "isNameSuffixMatch")}];
  [v3 setObject:v15 forKeyedSubscript:@"isNameSuffixMatch"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_11:
    if ((has & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isNicknameMatch](self, "isNicknameMatch")}];
  [v3 setObject:v16 forKeyedSubscript:@"isNicknameMatch"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_12:
    if ((has & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isOrganizationNameMatch](self, "isOrganizationNameMatch")}];
  [v3 setObject:v17 forKeyedSubscript:@"isOrganizationNameMatch"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_13:
    if ((has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCERequestMatchSignalSet isWeakOrganizationMatch](self, "isWeakOrganizationMatch")}];
  [v3 setObject:v18 forKeyedSubscript:@"isWeakOrganizationMatch"];

  if (*&self->_has)
  {
LABEL_14:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[INFERENCESchemaINFERENCERequestMatchSignalSet numPrimaryTokens](self, "numPrimaryTokens")}];
    [v3 setObject:v5 forKeyedSubscript:@"numPrimaryTokens"];
  }

LABEL_15:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v3 = 2654435761 * self->_numPrimaryTokens;
    if ((has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_areAllQueryTokensInContact;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_areAllPrimaryContactTokensInQuery;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v5 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_isGivenNameMatch;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_isMiddleNameMatch;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_isFamilyNameMatch;
    if ((has & 0x40) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_isOrganizationNameMatch;
    if ((has & 0x80) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_9:
    v10 = 2654435761 * self->_isWeakOrganizationMatch;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_10:
    v11 = 2654435761 * self->_isNicknameMatch;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_11:
    v12 = 2654435761 * self->_isNamePrefixMatch;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_12:
    v13 = 2654435761 * self->_isNameSuffixMatch;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v14 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
  }

LABEL_25:
  v13 = 0;
  if ((*&self->_has & 0x800) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v14 = 2654435761 * self->_isHandleQueryMatch;
  if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v15 = 2654435761 * self->_isHandleQueryLabelNameMatch;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_54;
  }

  has = self->_has;
  v6 = v4[12];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_54;
  }

  if (*&has)
  {
    numPrimaryTokens = self->_numPrimaryTokens;
    if (numPrimaryTokens != [v4 numPrimaryTokens])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_54;
  }

  if (v8)
  {
    areAllQueryTokensInContact = self->_areAllQueryTokensInContact;
    if (areAllQueryTokensInContact != [v4 areAllQueryTokensInContact])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v10 = (*&has >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_54;
  }

  if (v10)
  {
    areAllPrimaryContactTokensInQuery = self->_areAllPrimaryContactTokensInQuery;
    if (areAllPrimaryContactTokensInQuery != [v4 areAllPrimaryContactTokensInQuery])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v12 = (*&has >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_54;
  }

  if (v12)
  {
    isGivenNameMatch = self->_isGivenNameMatch;
    if (isGivenNameMatch != [v4 isGivenNameMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v14 = (*&has >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_54;
  }

  if (v14)
  {
    isMiddleNameMatch = self->_isMiddleNameMatch;
    if (isMiddleNameMatch != [v4 isMiddleNameMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v16 = (*&has >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_54;
  }

  if (v16)
  {
    isFamilyNameMatch = self->_isFamilyNameMatch;
    if (isFamilyNameMatch != [v4 isFamilyNameMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v18 = (*&has >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_54;
  }

  if (v18)
  {
    isOrganizationNameMatch = self->_isOrganizationNameMatch;
    if (isOrganizationNameMatch != [v4 isOrganizationNameMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v20 = (*&has >> 7) & 1;
  if (v20 != ((v6 >> 7) & 1))
  {
    goto LABEL_54;
  }

  if (v20)
  {
    isWeakOrganizationMatch = self->_isWeakOrganizationMatch;
    if (isWeakOrganizationMatch != [v4 isWeakOrganizationMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v22 = (*&has >> 8) & 1;
  if (v22 != ((v6 >> 8) & 1))
  {
    goto LABEL_54;
  }

  if (v22)
  {
    isNicknameMatch = self->_isNicknameMatch;
    if (isNicknameMatch != [v4 isNicknameMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v24 = (*&has >> 9) & 1;
  if (v24 != ((v6 >> 9) & 1))
  {
    goto LABEL_54;
  }

  if (v24)
  {
    isNamePrefixMatch = self->_isNamePrefixMatch;
    if (isNamePrefixMatch != [v4 isNamePrefixMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v26 = (*&has >> 10) & 1;
  if (v26 != ((v6 >> 10) & 1))
  {
    goto LABEL_54;
  }

  if (v26)
  {
    isNameSuffixMatch = self->_isNameSuffixMatch;
    if (isNameSuffixMatch != [v4 isNameSuffixMatch])
    {
      goto LABEL_54;
    }

    has = self->_has;
    v6 = v4[12];
  }

  v28 = (*&has >> 11) & 1;
  if (v28 != ((v6 >> 11) & 1))
  {
    goto LABEL_54;
  }

  if (v28)
  {
    isHandleQueryMatch = self->_isHandleQueryMatch;
    if (isHandleQueryMatch == [v4 isHandleQueryMatch])
    {
      has = self->_has;
      v6 = v4[12];
      goto LABEL_50;
    }

LABEL_54:
    v32 = 0;
    goto LABEL_55;
  }

LABEL_50:
  v30 = (*&has >> 12) & 1;
  if (v30 != ((v6 >> 12) & 1))
  {
    goto LABEL_54;
  }

  if (v30)
  {
    isHandleQueryLabelNameMatch = self->_isHandleQueryLabelNameMatch;
    if (isHandleQueryLabelNameMatch != [v4 isHandleQueryLabelNameMatch])
    {
      goto LABEL_54;
    }
  }

  v32 = 1;
LABEL_55:

  return v32;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_23;
  }

LABEL_22:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_11:
    if ((has & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_12:
    if ((has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_13:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_29:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_14:
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
}

- (void)setHasIsHandleQueryLabelNameMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasIsHandleQueryMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasIsNameSuffixMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsNamePrefixMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsNicknameMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsWeakOrganizationMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsOrganizationNameMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsFamilyNameMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsMiddleNameMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsGivenNameMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasAreAllPrimaryContactTokensInQuery:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasAreAllQueryTokensInContact:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end