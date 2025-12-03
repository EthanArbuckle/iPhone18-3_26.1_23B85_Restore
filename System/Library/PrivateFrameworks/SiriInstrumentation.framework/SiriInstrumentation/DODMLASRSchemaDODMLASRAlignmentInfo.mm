@interface DODMLASRSchemaDODMLASRAlignmentInfo
- (BOOL)isEqual:(id)equal;
- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithDictionary:(id)dictionary;
- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEditDistance:(BOOL)distance;
- (void)setHasNumInsertions:(BOOL)insertions;
- (void)setHasNumSubstitutions:(BOOL)substitutions;
- (void)setHasReferenceSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation DODMLASRSchemaDODMLASRAlignmentInfo

- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = DODMLASRSchemaDODMLASRAlignmentInfo;
  v5 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"referenceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(DODMLASRSchemaDODMLASRAlignmentInfo *)v5 setReferenceName:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"numDeletions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setNumDeletions:](v5, "setNumDeletions:", [v8 unsignedIntValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"numInsertions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setNumInsertions:](v5, "setNumInsertions:", [v9 unsignedIntValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"numSubstitutions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setNumSubstitutions:](v5, "setNumSubstitutions:", [v10 unsignedIntValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"editDistance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setEditDistance:](v5, "setEditDistance:", [v11 unsignedIntValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"referenceSize"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[DODMLASRSchemaDODMLASRAlignmentInfo setReferenceSize:](v5, "setReferenceSize:", [v12 unsignedIntValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (DODMLASRSchemaDODMLASRAlignmentInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self dictionaryRepresentation];
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
  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo editDistance](self, "editDistance")}];
    [dictionary setObject:v10 forKeyedSubscript:@"editDistance"];

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
  [dictionary setObject:v11 forKeyedSubscript:@"numDeletions"];

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
  [dictionary setObject:v12 forKeyedSubscript:@"numInsertions"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo numSubstitutions](self, "numSubstitutions")}];
    [dictionary setObject:v5 forKeyedSubscript:@"numSubstitutions"];
  }

LABEL_6:
  if (self->_referenceName)
  {
    referenceName = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
    v7 = [referenceName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"referenceName"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[DODMLASRSchemaDODMLASRAlignmentInfo referenceSize](self, "referenceSize")}];
    [dictionary setObject:v8 forKeyedSubscript:@"referenceSize"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  referenceName = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
  referenceName2 = [equalCopy referenceName];
  v7 = referenceName2;
  if ((referenceName != 0) == (referenceName2 == 0))
  {

    goto LABEL_28;
  }

  referenceName3 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
  if (referenceName3)
  {
    v9 = referenceName3;
    referenceName4 = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];
    referenceName5 = [equalCopy referenceName];
    v12 = [referenceName4 isEqual:referenceName5];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
  }

  has = self->_has;
  v14 = equalCopy[36];
  if ((*&has & 1) != (v14 & 1))
  {
LABEL_28:
    v24 = 0;
    goto LABEL_29;
  }

  if (*&has)
  {
    numDeletions = self->_numDeletions;
    if (numDeletions != [equalCopy numDeletions])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v16 = (*&has >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_28;
  }

  if (v16)
  {
    numInsertions = self->_numInsertions;
    if (numInsertions != [equalCopy numInsertions])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v18 = (*&has >> 2) & 1;
  if (v18 != ((v14 >> 2) & 1))
  {
    goto LABEL_28;
  }

  if (v18)
  {
    numSubstitutions = self->_numSubstitutions;
    if (numSubstitutions != [equalCopy numSubstitutions])
    {
      goto LABEL_28;
    }

    has = self->_has;
    v14 = equalCopy[36];
  }

  v20 = (*&has >> 3) & 1;
  if (v20 != ((v14 >> 3) & 1))
  {
    goto LABEL_28;
  }

  if (v20)
  {
    editDistance = self->_editDistance;
    if (editDistance == [equalCopy editDistance])
    {
      has = self->_has;
      v14 = equalCopy[36];
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
    if (referenceSize != [equalCopy referenceSize])
    {
      goto LABEL_28;
    }
  }

  v24 = 1;
LABEL_29:

  return v24;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  referenceName = [(DODMLASRSchemaDODMLASRAlignmentInfo *)self referenceName];

  if (referenceName)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
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
  v6 = toCopy;
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
  v6 = toCopy;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_9:
    PBDataWriterWriteUint32Field();
    v6 = toCopy;
  }

LABEL_10:
}

- (void)setHasReferenceSize:(BOOL)size
{
  if (size)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEditDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNumSubstitutions:(BOOL)substitutions
{
  if (substitutions)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasNumInsertions:(BOOL)insertions
{
  if (insertions)
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