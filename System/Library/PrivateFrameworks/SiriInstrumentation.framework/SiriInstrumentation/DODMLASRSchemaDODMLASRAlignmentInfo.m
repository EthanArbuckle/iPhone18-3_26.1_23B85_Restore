@interface DODMLASRSchemaDODMLASRAlignmentInfo
- (BOOL)isEqual:(id)a3;
- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithDictionary:(id)a3;
- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEditDistance:(BOOL)a3;
- (void)setHasNumInsertions:(BOOL)a3;
- (void)setHasNumSubstitutions:(BOOL)a3;
- (void)setHasReferenceSize:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DODMLASRSchemaDODMLASRAlignmentInfo

- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRAlignmentInfo;
  v5 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"referenceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRAlignmentInfo *)v5 setReferenceName:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"numDeletions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setNumDeletions:](v5, "setNumDeletions:", [v8 unsignedIntValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"numInsertions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setNumInsertions:](v5, "setNumInsertions:", [v9 unsignedIntValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"numSubstitutions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setNumSubstitutions:](v5, "setNumSubstitutions:", [v10 unsignedIntValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"editDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setEditDistance:](v5, "setEditDistance:", [v11 unsignedIntValue]);
    }

    v12 = [v4 objectForKeyedSubscript:@"referenceSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setReferenceSize:](v5, "setReferenceSize:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self dictionaryRepresentation];
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
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo editDistance](self, "editDistance")}];
    [v3 setObject:v10 forKeyedSubscript:@"editDistance"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo numDeletions](self, "numDeletions")}];
  [v3 setObject:v11 forKeyedSubscript:@"numDeletions"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_15:
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo numInsertions](self, "numInsertions")}];
  [v3 setObject:v12 forKeyedSubscript:@"numInsertions"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo numSubstitutions](self, "numSubstitutions")}];
    [v3 setObject:v5 forKeyedSubscript:@"numSubstitutions"];
  }

LABEL_6:
  if (self->_referenceName)
  {
    v6 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"referenceName"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo referenceSize](self, "referenceSize")}];
    [v3 setObject:v8 forKeyedSubscript:@"referenceSize"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_referenceName hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_numDeletions;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_numInsertions;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_numSubstitutions;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v7 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    v8 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_9:
  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v7 = 2654435761 * self->_editDistance;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v8 = 2654435761 * self->_referenceSize;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
  v6 = [v4 referenceName];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_28;
  }

  v8 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
  if (v8)
  {
    v9 = v8;
    v10 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
    v11 = [v4 referenceName];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = v4[36];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  if (*&has)
  {
    numDeletions = self->_numDeletions;
    if (numDeletions != [v4 numDeletions])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v16)
  {
    numInsertions = self->_numInsertions;
    if (numInsertions != [v4 numInsertions])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    numSubstitutions = self->_numSubstitutions;
    if (numSubstitutions != [v4 numSubstitutions])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = v4[36];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_28;
  }

  if (v20)
  {
    editDistance = self->_editDistance;
    if (editDistance == [v4 editDistance])
    {
      has = self->_has;
      v14 = v4[36];
      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_24:
  v22 = (*&has >> 4) & 1;
  if (v22 != ((v14 >> 4) & 1))
  {
    goto LABEL_28;
  }

  if (v22)
  {
    referenceSize = self->_referenceSize;
    if (referenceSize != [v4 referenceSize])
    {
      goto LABEL_28;
    }
  }

  v24 = 1;
LABEL_29:

  return v24;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = v7;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = v7;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint32Field();
  v6 = v7;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  PBDataWriterWriteUint32Field();
  v6 = v7;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteUint32Field();
    v6 = v7;
  }

LABEL_10:
}

- (void)setHasReferenceSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEditDistance:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumSubstitutions:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumInsertions:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end