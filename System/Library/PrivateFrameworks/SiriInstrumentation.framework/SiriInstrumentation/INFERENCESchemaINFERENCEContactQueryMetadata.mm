@interface INFERENCESchemaINFERENCEContactQueryMetadata
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCEContactQueryMetadata)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCEContactQueryMetadata)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasHasContactId:(BOOL)id;
- (void)setHasHasHandleLabel:(BOOL)label;
- (void)setHasHasHandleValue:(BOOL)value;
- (void)setHasHasMeReference:(BOOL)reference;
- (void)setHasHasRelationship:(BOOL)relationship;
- (void)setHasIsEmergencyQuery:(BOOL)query;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCEContactQueryMetadata

- (INFERENCESchemaINFERENCEContactQueryMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INFERENCESchemaINFERENCEContactQueryMetadata;
  v5 = [(INFERENCESchemaINFERENCEContactQueryMetadata *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"hasName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactQueryMetadata setHasName:](v5, "setHasName:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"hasRelationship"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactQueryMetadata setHasRelationship:](v5, "setHasRelationship:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"hasHandleLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactQueryMetadata setHasHandleLabel:](v5, "setHasHandleLabel:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"hasHandleValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactQueryMetadata setHasHandleValue:](v5, "setHasHandleValue:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"hasMeReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactQueryMetadata setHasMeReference:](v5, "setHasMeReference:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"hasContactId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactQueryMetadata setHasContactId:](v5, "setHasContactId:", [v11 BOOLValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"isEmergencyQuery"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[INFERENCESchemaINFERENCEContactQueryMetadata setIsEmergencyQuery:](v5, "setIsEmergencyQuery:", [v12 BOOLValue]);
    }

    v13 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCEContactQueryMetadata)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCEContactQueryMetadata *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCEContactQueryMetadata *)self dictionaryRepresentation];
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
  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 0x20) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactQueryMetadata hasContactId](self, "hasContactId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"hasContactId"];

    v4 = *(&self->_isEmergencyQuery + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(&self->_isEmergencyQuery + 1) & 4) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactQueryMetadata hasHandleLabel](self, "hasHandleLabel")}];
  [dictionary setObject:v8 forKeyedSubscript:@"hasHandleLabel"];

  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactQueryMetadata hasHandleValue](self, "hasHandleValue")}];
  [dictionary setObject:v9 forKeyedSubscript:@"hasHandleValue"];

  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_5:
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactQueryMetadata hasMeReference](self, "hasMeReference")}];
  [dictionary setObject:v10 forKeyedSubscript:@"hasMeReference"];

  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 1) == 0)
  {
LABEL_6:
    if ((v4 & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactQueryMetadata hasName](self, "hasName")}];
  [dictionary setObject:v11 forKeyedSubscript:@"hasName"];

  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 2) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactQueryMetadata hasRelationship](self, "hasRelationship")}];
  [dictionary setObject:v12 forKeyedSubscript:@"hasRelationship"];

  if ((*(&self->_isEmergencyQuery + 1) & 0x40) != 0)
  {
LABEL_8:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[INFERENCESchemaINFERENCEContactQueryMetadata isEmergencyQuery](self, "isEmergencyQuery")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isEmergencyQuery"];
  }

LABEL_9:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isEmergencyQuery + 1))
  {
    v2 = 2654435761 * self->_hasName;
    if ((*(&self->_isEmergencyQuery + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_hasRelationship;
      if ((*(&self->_isEmergencyQuery + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_isEmergencyQuery + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_isEmergencyQuery + 1) & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_hasHandleLabel;
    if ((*(&self->_isEmergencyQuery + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  v4 = 0;
  if ((*(&self->_isEmergencyQuery + 1) & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_hasHandleValue;
    if ((*(&self->_isEmergencyQuery + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  v5 = 0;
  if ((*(&self->_isEmergencyQuery + 1) & 0x10) != 0)
  {
LABEL_6:
    v6 = 2654435761 * self->_hasMeReference;
    if ((*(&self->_isEmergencyQuery + 1) & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_14:
    v7 = 0;
    if ((*(&self->_isEmergencyQuery + 1) & 0x40) != 0)
    {
      goto LABEL_8;
    }

LABEL_15:
    v8 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
  }

LABEL_13:
  v6 = 0;
  if ((*(&self->_isEmergencyQuery + 1) & 0x20) == 0)
  {
    goto LABEL_14;
  }

LABEL_7:
  v7 = 2654435761 * self->_hasContactId;
  if ((*(&self->_isEmergencyQuery + 1) & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v8 = 2654435761 * self->_isEmergencyQuery;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_30;
  }

  v5 = *(&self->_isEmergencyQuery + 1);
  v6 = equalCopy[15];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_30;
  }

  if (v5)
  {
    hasName = self->_hasName;
    if (hasName != [equalCopy hasName])
    {
      goto LABEL_30;
    }

    v5 = *(&self->_isEmergencyQuery + 1);
    v6 = equalCopy[15];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_30;
  }

  if (v8)
  {
    hasRelationship = self->_hasRelationship;
    if (hasRelationship != [equalCopy hasRelationship])
    {
      goto LABEL_30;
    }

    v5 = *(&self->_isEmergencyQuery + 1);
    v6 = equalCopy[15];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_30;
  }

  if (v10)
  {
    hasHandleLabel = self->_hasHandleLabel;
    if (hasHandleLabel != [equalCopy hasHandleLabel])
    {
      goto LABEL_30;
    }

    v5 = *(&self->_isEmergencyQuery + 1);
    v6 = equalCopy[15];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_30;
  }

  if (v12)
  {
    hasHandleValue = self->_hasHandleValue;
    if (hasHandleValue != [equalCopy hasHandleValue])
    {
      goto LABEL_30;
    }

    v5 = *(&self->_isEmergencyQuery + 1);
    v6 = equalCopy[15];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_30;
  }

  if (v14)
  {
    hasMeReference = self->_hasMeReference;
    if (hasMeReference != [equalCopy hasMeReference])
    {
      goto LABEL_30;
    }

    v5 = *(&self->_isEmergencyQuery + 1);
    v6 = equalCopy[15];
  }

  v16 = (v5 >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_30;
  }

  if (v16)
  {
    hasContactId = self->_hasContactId;
    if (hasContactId == [equalCopy hasContactId])
    {
      v5 = *(&self->_isEmergencyQuery + 1);
      v6 = equalCopy[15];
      goto LABEL_26;
    }

LABEL_30:
    v20 = 0;
    goto LABEL_31;
  }

LABEL_26:
  v18 = (v5 >> 6) & 1;
  if (v18 != ((v6 >> 6) & 1))
  {
    goto LABEL_30;
  }

  if (v18)
  {
    isEmergencyQuery = self->_isEmergencyQuery;
    if (isEmergencyQuery != [equalCopy isEmergencyQuery])
    {
      goto LABEL_30;
    }
  }

  v20 = 1;
LABEL_31:

  return v20;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_isEmergencyQuery + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_isEmergencyQuery + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*(&self->_isEmergencyQuery + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isEmergencyQuery + 1);
  if ((v4 & 0x20) == 0)
  {
LABEL_7:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_isEmergencyQuery + 1) & 0x40) != 0)
  {
LABEL_8:
    PBDataWriterWriteBOOLField();
  }

LABEL_9:
}

- (void)setHasIsEmergencyQuery:(BOOL)query
{
  if (query)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmergencyQuery + 1) = *(&self->_isEmergencyQuery + 1) & 0xBF | v3;
}

- (void)setHasHasContactId:(BOOL)id
{
  if (id)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmergencyQuery + 1) = *(&self->_isEmergencyQuery + 1) & 0xDF | v3;
}

- (void)setHasHasMeReference:(BOOL)reference
{
  if (reference)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmergencyQuery + 1) = *(&self->_isEmergencyQuery + 1) & 0xEF | v3;
}

- (void)setHasHasHandleValue:(BOOL)value
{
  if (value)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmergencyQuery + 1) = *(&self->_isEmergencyQuery + 1) & 0xF7 | v3;
}

- (void)setHasHasHandleLabel:(BOOL)label
{
  if (label)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmergencyQuery + 1) = *(&self->_isEmergencyQuery + 1) & 0xFB | v3;
}

- (void)setHasHasRelationship:(BOOL)relationship
{
  if (relationship)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isEmergencyQuery + 1) = *(&self->_isEmergencyQuery + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end