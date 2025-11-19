@interface INFERENCESchemaINFERENCEContactHandleSignalSet
- (BOOL)isEqual:(id)a3;
- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithDictionary:(id)a3;
- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAllowedType:(BOOL)a3;
- (void)setHasIsFaceTimeable:(BOOL)a3;
- (void)setHasIsFavorite:(BOOL)a3;
- (void)setHasIsNotFaceTimeable:(BOOL)a3;
- (void)setHasIsPartialQueryValueMatch:(BOOL)a3;
- (void)setHasIsPreferredType:(BOOL)a3;
- (void)setHasIsQueryExactMatch:(BOOL)a3;
- (void)setHasIsQueryMatch:(BOOL)a3;
- (void)setHasIsRecentInAnyGroup:(BOOL)a3;
- (void)setHasIsRecentInSameGroup:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation INFERENCESchemaINFERENCEContactHandleSignalSet

- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithDictionary:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = INFERENCESchemaINFERENCEContactHandleSignalSet;
  v5 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)&v27 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isSuggestedHandle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsSuggestedHandle:](v5, "setIsSuggestedHandle:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isFavorite"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsFavorite:](v5, "setIsFavorite:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"isQueryExactMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsQueryExactMatch:](v5, "setIsQueryExactMatch:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isQueryMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsQueryMatch:](v5, "setIsQueryMatch:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"isPartialQueryValueMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsPartialQueryValueMatch:](v5, "setIsPartialQueryValueMatch:", [v10 BOOLValue]);
    }

    v23 = v10;
    v11 = [v4 objectForKeyedSubscript:@"historyStats"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[INFERENCESchemaINFERENCEPrivatizedHistoryStats alloc] initWithDictionary:v11];
      [(INFERENCESchemaINFERENCEContactHandleSignalSet *)v5 setHistoryStats:v12];
    }

    v22 = v11;
    v13 = [v4 objectForKeyedSubscript:@"isRecentInAnyGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsRecentInAnyGroup:](v5, "setIsRecentInAnyGroup:", [v13 BOOLValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"isRecentInSameGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsRecentInSameGroup:](v5, "setIsRecentInSameGroup:", [v14 BOOLValue]);
    }

    v26 = v6;
    v15 = [v4 objectForKeyedSubscript:@"isPreferredType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsPreferredType:](v5, "setIsPreferredType:", [v15 BOOLValue]);
    }

    v24 = v9;
    v25 = v7;
    v16 = [v4 objectForKeyedSubscript:@"isAllowedType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsAllowedType:](v5, "setIsAllowedType:", [v16 BOOLValue]);
    }

    v17 = v8;
    v18 = [v4 objectForKeyedSubscript:@"isFaceTimeable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsFaceTimeable:](v5, "setIsFaceTimeable:", [v18 BOOLValue]);
    }

    v19 = [v4 objectForKeyedSubscript:@"isNotFaceTimeable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsNotFaceTimeable:](v5, "setIsNotFaceTimeable:", [v19 BOOLValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self dictionaryRepresentation];
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
  if (self->_historyStats)
  {
    v4 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"historyStats"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"historyStats"];
    }
  }

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x100) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isAllowedType](self, "isAllowedType")}];
    [v3 setObject:v10 forKeyedSubscript:@"isAllowedType"];

    v7 = *(&self->_isNotFaceTimeable + 1);
    if ((v7 & 0x200) == 0)
    {
LABEL_8:
      if ((v7 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if ((*(&self->_isNotFaceTimeable + 1) & 0x200) == 0)
  {
    goto LABEL_8;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isFaceTimeable](self, "isFaceTimeable")}];
  [v3 setObject:v11 forKeyedSubscript:@"isFaceTimeable"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 2) == 0)
  {
LABEL_9:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isFavorite](self, "isFavorite")}];
  [v3 setObject:v12 forKeyedSubscript:@"isFavorite"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x400) == 0)
  {
LABEL_10:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isNotFaceTimeable](self, "isNotFaceTimeable")}];
  [v3 setObject:v13 forKeyedSubscript:@"isNotFaceTimeable"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x10) == 0)
  {
LABEL_11:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isPartialQueryValueMatch](self, "isPartialQueryValueMatch")}];
  [v3 setObject:v14 forKeyedSubscript:@"isPartialQueryValueMatch"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x80) == 0)
  {
LABEL_12:
    if ((v7 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isPreferredType](self, "isPreferredType")}];
  [v3 setObject:v15 forKeyedSubscript:@"isPreferredType"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 4) == 0)
  {
LABEL_13:
    if ((v7 & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isQueryExactMatch](self, "isQueryExactMatch")}];
  [v3 setObject:v16 forKeyedSubscript:@"isQueryExactMatch"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 8) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isQueryMatch](self, "isQueryMatch")}];
  [v3 setObject:v17 forKeyedSubscript:@"isQueryMatch"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x20) == 0)
  {
LABEL_15:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isRecentInAnyGroup](self, "isRecentInAnyGroup")}];
  [v3 setObject:v18 forKeyedSubscript:@"isRecentInAnyGroup"];

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x40) == 0)
  {
LABEL_16:
    if ((v7 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_30:
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isRecentInSameGroup](self, "isRecentInSameGroup")}];
  [v3 setObject:v19 forKeyedSubscript:@"isRecentInSameGroup"];

  if (*(&self->_isNotFaceTimeable + 1))
  {
LABEL_17:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isSuggestedHandle](self, "isSuggestedHandle")}];
    [v3 setObject:v8 forKeyedSubscript:@"isSuggestedHandle"];
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = *(&self->_isNotFaceTimeable + 1);
  if (v3)
  {
    v4 = 2654435761 * self->_isSuggestedHandle;
    if ((v3 & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_isFavorite;
      if ((v3 & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((v3 & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((v3 & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_isQueryExactMatch;
    if ((v3 & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((v3 & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  v6 = 0;
  if ((v3 & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_isQueryMatch;
  if ((v3 & 0x10) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_isPartialQueryValueMatch;
    goto LABEL_12;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = [(INFERENCESchemaINFERENCEPrivatizedHistoryStats *)self->_historyStats hash];
  v10 = *(&self->_isNotFaceTimeable + 1);
  if ((v10 & 0x20) != 0)
  {
    v11 = 2654435761 * self->_isRecentInAnyGroup;
    if ((v10 & 0x40) != 0)
    {
LABEL_14:
      v12 = 2654435761 * self->_isRecentInSameGroup;
      if ((v10 & 0x80) != 0)
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v11 = 0;
    if ((v10 & 0x40) != 0)
    {
      goto LABEL_14;
    }
  }

  v12 = 0;
  if ((v10 & 0x80) != 0)
  {
LABEL_15:
    v13 = 2654435761 * self->_isPreferredType;
    if ((*(&self->_isNotFaceTimeable + 1) & 0x100) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = 0;
  if ((*(&self->_isNotFaceTimeable + 1) & 0x100) != 0)
  {
LABEL_16:
    v14 = 2654435761 * self->_isAllowedType;
    if ((*(&self->_isNotFaceTimeable + 1) & 0x200) != 0)
    {
      goto LABEL_17;
    }

LABEL_23:
    v15 = 0;
    if ((*(&self->_isNotFaceTimeable + 1) & 0x400) != 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v16 = 0;
    return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v9;
  }

LABEL_22:
  v14 = 0;
  if ((*(&self->_isNotFaceTimeable + 1) & 0x200) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v15 = 2654435761 * self->_isFaceTimeable;
  if ((*(&self->_isNotFaceTimeable + 1) & 0x400) == 0)
  {
    goto LABEL_24;
  }

LABEL_18:
  v16 = 2654435761 * self->_isNotFaceTimeable;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = *(&self->_isNotFaceTimeable + 1);
  v6 = v4[15];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_51;
  }

  if (v5)
  {
    isSuggestedHandle = self->_isSuggestedHandle;
    if (isSuggestedHandle != [v4 isSuggestedHandle])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = v4[15];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_51;
  }

  if (v8)
  {
    isFavorite = self->_isFavorite;
    if (isFavorite != [v4 isFavorite])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = v4[15];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_51;
  }

  if (v10)
  {
    isQueryExactMatch = self->_isQueryExactMatch;
    if (isQueryExactMatch != [v4 isQueryExactMatch])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = v4[15];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_51;
  }

  if (v12)
  {
    isQueryMatch = self->_isQueryMatch;
    if (isQueryMatch != [v4 isQueryMatch])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = v4[15];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_51;
  }

  if (v14)
  {
    isPartialQueryValueMatch = self->_isPartialQueryValueMatch;
    if (isPartialQueryValueMatch != [v4 isPartialQueryValueMatch])
    {
      goto LABEL_51;
    }
  }

  v16 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
  v17 = [v4 historyStats];
  v18 = v17;
  if ((v16 != 0) == (v17 == 0))
  {

    goto LABEL_51;
  }

  v19 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
  if (v19)
  {
    v20 = v19;
    v21 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
    v22 = [v4 historyStats];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_51;
    }
  }

  else
  {
  }

  v24 = *(&self->_isNotFaceTimeable + 1);
  v25 = (v24 >> 5) & 1;
  v26 = v4[15];
  if (v25 != ((v26 >> 5) & 1))
  {
LABEL_51:
    v38 = 0;
    goto LABEL_52;
  }

  if (v25)
  {
    isRecentInAnyGroup = self->_isRecentInAnyGroup;
    if (isRecentInAnyGroup != [v4 isRecentInAnyGroup])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = v4[15];
  }

  v28 = (v24 >> 6) & 1;
  if (v28 != ((v26 >> 6) & 1))
  {
    goto LABEL_51;
  }

  if (v28)
  {
    isRecentInSameGroup = self->_isRecentInSameGroup;
    if (isRecentInSameGroup != [v4 isRecentInSameGroup])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = v4[15];
  }

  v30 = (v24 >> 7) & 1;
  if (v30 != ((v26 >> 7) & 1))
  {
    goto LABEL_51;
  }

  if (v30)
  {
    isPreferredType = self->_isPreferredType;
    if (isPreferredType != [v4 isPreferredType])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = v4[15];
  }

  v32 = (v24 >> 8) & 1;
  if (v32 != ((v26 >> 8) & 1))
  {
    goto LABEL_51;
  }

  if (v32)
  {
    isAllowedType = self->_isAllowedType;
    if (isAllowedType != [v4 isAllowedType])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = v4[15];
  }

  v34 = (v24 >> 9) & 1;
  if (v34 != ((v26 >> 9) & 1))
  {
    goto LABEL_51;
  }

  if (v34)
  {
    isFaceTimeable = self->_isFaceTimeable;
    if (isFaceTimeable == [v4 isFaceTimeable])
    {
      v24 = *(&self->_isNotFaceTimeable + 1);
      v26 = v4[15];
      goto LABEL_47;
    }

    goto LABEL_51;
  }

LABEL_47:
  v36 = (v24 >> 10) & 1;
  if (v36 != ((v26 >> 10) & 1))
  {
    goto LABEL_51;
  }

  if (v36)
  {
    isNotFaceTimeable = self->_isNotFaceTimeable;
    if (isNotFaceTimeable != [v4 isNotFaceTimeable])
    {
      goto LABEL_51;
    }
  }

  v38 = 1;
LABEL_52:

  return v38;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = *(&self->_isNotFaceTimeable + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_isNotFaceTimeable + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isNotFaceTimeable + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

LABEL_21:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isNotFaceTimeable + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_22:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isNotFaceTimeable + 1) & 0x10) != 0)
  {
LABEL_6:
    PBDataWriterWriteBOOLField();
  }

LABEL_7:
  v5 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];

  if (v5)
  {
    v6 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
    PBDataWriterWriteSubmessage();
  }

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x20) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = *(&self->_isNotFaceTimeable + 1);
    if ((v7 & 0x40) == 0)
    {
LABEL_11:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteBOOLField();
  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x80) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteBOOLField();
  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteBOOLField();
  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x200) == 0)
  {
LABEL_14:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_28:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isNotFaceTimeable + 1) & 0x400) != 0)
  {
LABEL_15:
    PBDataWriterWriteBOOLField();
  }

LABEL_16:
}

- (void)setHasIsNotFaceTimeable:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFBFF | v3;
}

- (void)setHasIsFaceTimeable:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFDFF | v3;
}

- (void)setHasIsAllowedType:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFEFF | v3;
}

- (void)setHasIsPreferredType:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFF7F | v3;
}

- (void)setHasIsRecentInSameGroup:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFBF | v3;
}

- (void)setHasIsRecentInAnyGroup:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFDF | v3;
}

- (void)setHasIsPartialQueryValueMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFEF | v3;
}

- (void)setHasIsQueryMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFF7 | v3;
}

- (void)setHasIsQueryExactMatch:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFFB | v3;
}

- (void)setHasIsFavorite:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEContactHandleSignalSet;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self deleteHistoryStats];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end