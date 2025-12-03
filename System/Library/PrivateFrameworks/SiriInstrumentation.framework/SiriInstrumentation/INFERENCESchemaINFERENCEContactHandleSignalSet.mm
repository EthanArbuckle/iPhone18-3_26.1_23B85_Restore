@interface INFERENCESchemaINFERENCEContactHandleSignalSet
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsAllowedType:(BOOL)type;
- (void)setHasIsFaceTimeable:(BOOL)timeable;
- (void)setHasIsFavorite:(BOOL)favorite;
- (void)setHasIsNotFaceTimeable:(BOOL)timeable;
- (void)setHasIsPartialQueryValueMatch:(BOOL)match;
- (void)setHasIsPreferredType:(BOOL)type;
- (void)setHasIsQueryExactMatch:(BOOL)match;
- (void)setHasIsQueryMatch:(BOOL)match;
- (void)setHasIsRecentInAnyGroup:(BOOL)group;
- (void)setHasIsRecentInSameGroup:(BOOL)group;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEContactHandleSignalSet

- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = INFERENCESchemaINFERENCEContactHandleSignalSet;
  v5 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)&v27 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isSuggestedHandle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsSuggestedHandle:](v5, "setIsSuggestedHandle:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isFavorite"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsFavorite:](v5, "setIsFavorite:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isQueryExactMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsQueryExactMatch:](v5, "setIsQueryExactMatch:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isQueryMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsQueryMatch:](v5, "setIsQueryMatch:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isPartialQueryValueMatch"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsPartialQueryValueMatch:](v5, "setIsPartialQueryValueMatch:", [v10 BOOLValue]);
    }

    v23 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"historyStats"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[INFERENCESchemaINFERENCEPrivatizedHistoryStats alloc] initWithDictionary:v11];
      [(INFERENCESchemaINFERENCEContactHandleSignalSet *)v5 setHistoryStats:v12];
    }

    v22 = v11;
    v13 = [dictionaryCopy objectForKeyedSubscript:@"isRecentInAnyGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsRecentInAnyGroup:](v5, "setIsRecentInAnyGroup:", [v13 BOOLValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"isRecentInSameGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsRecentInSameGroup:](v5, "setIsRecentInSameGroup:", [v14 BOOLValue]);
    }

    v26 = v6;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"isPreferredType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsPreferredType:](v5, "setIsPreferredType:", [v15 BOOLValue]);
    }

    v24 = v9;
    v25 = v7;
    v16 = [dictionaryCopy objectForKeyedSubscript:@"isAllowedType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsAllowedType:](v5, "setIsAllowedType:", [v16 BOOLValue]);
    }

    v17 = v8;
    v18 = [dictionaryCopy objectForKeyedSubscript:@"isFaceTimeable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsFaceTimeable:](v5, "setIsFaceTimeable:", [v18 BOOLValue]);
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"isNotFaceTimeable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactHandleSignalSet setIsNotFaceTimeable:](v5, "setIsNotFaceTimeable:", [v19 BOOLValue]);
    }

    v20 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactHandleSignalSet)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_historyStats)
  {
    historyStats = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
    dictionaryRepresentation = [historyStats dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"historyStats"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"historyStats"];
    }
  }

  v7 = *(&self->_isNotFaceTimeable + 1);
  if ((v7 & 0x100) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isAllowedType](self, "isAllowedType")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isAllowedType"];

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
  [dictionary setObject:v11 forKeyedSubscript:@"isFaceTimeable"];

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
  [dictionary setObject:v12 forKeyedSubscript:@"isFavorite"];

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
  [dictionary setObject:v13 forKeyedSubscript:@"isNotFaceTimeable"];

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
  [dictionary setObject:v14 forKeyedSubscript:@"isPartialQueryValueMatch"];

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
  [dictionary setObject:v15 forKeyedSubscript:@"isPreferredType"];

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
  [dictionary setObject:v16 forKeyedSubscript:@"isQueryExactMatch"];

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
  [dictionary setObject:v17 forKeyedSubscript:@"isQueryMatch"];

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
  [dictionary setObject:v18 forKeyedSubscript:@"isRecentInAnyGroup"];

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
  [dictionary setObject:v19 forKeyedSubscript:@"isRecentInSameGroup"];

  if (*(&self->_isNotFaceTimeable + 1))
  {
LABEL_17:
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactHandleSignalSet isSuggestedHandle](self, "isSuggestedHandle")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isSuggestedHandle"];
  }

LABEL_18:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_51;
  }

  v5 = *(&self->_isNotFaceTimeable + 1);
  v6 = equalCopy[15];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_51;
  }

  if (v5)
  {
    isSuggestedHandle = self->_isSuggestedHandle;
    if (isSuggestedHandle != [equalCopy isSuggestedHandle])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = equalCopy[15];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_51;
  }

  if (v8)
  {
    isFavorite = self->_isFavorite;
    if (isFavorite != [equalCopy isFavorite])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = equalCopy[15];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_51;
  }

  if (v10)
  {
    isQueryExactMatch = self->_isQueryExactMatch;
    if (isQueryExactMatch != [equalCopy isQueryExactMatch])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = equalCopy[15];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_51;
  }

  if (v12)
  {
    isQueryMatch = self->_isQueryMatch;
    if (isQueryMatch != [equalCopy isQueryMatch])
    {
      goto LABEL_51;
    }

    v5 = *(&self->_isNotFaceTimeable + 1);
    v6 = equalCopy[15];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_51;
  }

  if (v14)
  {
    isPartialQueryValueMatch = self->_isPartialQueryValueMatch;
    if (isPartialQueryValueMatch != [equalCopy isPartialQueryValueMatch])
    {
      goto LABEL_51;
    }
  }

  historyStats = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
  historyStats2 = [equalCopy historyStats];
  v18 = historyStats2;
  if ((historyStats != 0) == (historyStats2 == 0))
  {

    goto LABEL_51;
  }

  historyStats3 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
  if (historyStats3)
  {
    v20 = historyStats3;
    historyStats4 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
    historyStats5 = [equalCopy historyStats];
    v23 = [historyStats4 isEqual:historyStats5];

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
  v26 = equalCopy[15];
  if (v25 != ((v26 >> 5) & 1))
  {
LABEL_51:
    v38 = 0;
    goto LABEL_52;
  }

  if (v25)
  {
    isRecentInAnyGroup = self->_isRecentInAnyGroup;
    if (isRecentInAnyGroup != [equalCopy isRecentInAnyGroup])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = equalCopy[15];
  }

  v28 = (v24 >> 6) & 1;
  if (v28 != ((v26 >> 6) & 1))
  {
    goto LABEL_51;
  }

  if (v28)
  {
    isRecentInSameGroup = self->_isRecentInSameGroup;
    if (isRecentInSameGroup != [equalCopy isRecentInSameGroup])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = equalCopy[15];
  }

  v30 = (v24 >> 7) & 1;
  if (v30 != ((v26 >> 7) & 1))
  {
    goto LABEL_51;
  }

  if (v30)
  {
    isPreferredType = self->_isPreferredType;
    if (isPreferredType != [equalCopy isPreferredType])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = equalCopy[15];
  }

  v32 = (v24 >> 8) & 1;
  if (v32 != ((v26 >> 8) & 1))
  {
    goto LABEL_51;
  }

  if (v32)
  {
    isAllowedType = self->_isAllowedType;
    if (isAllowedType != [equalCopy isAllowedType])
    {
      goto LABEL_51;
    }

    v24 = *(&self->_isNotFaceTimeable + 1);
    v26 = equalCopy[15];
  }

  v34 = (v24 >> 9) & 1;
  if (v34 != ((v26 >> 9) & 1))
  {
    goto LABEL_51;
  }

  if (v34)
  {
    isFaceTimeable = self->_isFaceTimeable;
    if (isFaceTimeable == [equalCopy isFaceTimeable])
    {
      v24 = *(&self->_isNotFaceTimeable + 1);
      v26 = equalCopy[15];
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
    if (isNotFaceTimeable != [equalCopy isNotFaceTimeable])
    {
      goto LABEL_51;
    }
  }

  v38 = 1;
LABEL_52:

  return v38;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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
  historyStats = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];

  if (historyStats)
  {
    historyStats2 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats];
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

- (void)setHasIsNotFaceTimeable:(BOOL)timeable
{
  if (timeable)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFBFF | v3;
}

- (void)setHasIsFaceTimeable:(BOOL)timeable
{
  if (timeable)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFDFF | v3;
}

- (void)setHasIsAllowedType:(BOOL)type
{
  if (type)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFEFF | v3;
}

- (void)setHasIsPreferredType:(BOOL)type
{
  if (type)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFF7F | v3;
}

- (void)setHasIsRecentInSameGroup:(BOOL)group
{
  if (group)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFBF | v3;
}

- (void)setHasIsRecentInAnyGroup:(BOOL)group
{
  if (group)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFDF | v3;
}

- (void)setHasIsPartialQueryValueMatch:(BOOL)match
{
  if (match)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFEF | v3;
}

- (void)setHasIsQueryMatch:(BOOL)match
{
  if (match)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFF7 | v3;
}

- (void)setHasIsQueryExactMatch:(BOOL)match
{
  if (match)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFFB | v3;
}

- (void)setHasIsFavorite:(BOOL)favorite
{
  if (favorite)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isNotFaceTimeable + 1) = *(&self->_isNotFaceTimeable + 1) & 0xFFFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCEContactHandleSignalSet;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCEContactHandleSignalSet *)self historyStats:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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