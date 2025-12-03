@interface USOSchemaUSOEdge
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOEdge)initWithDictionary:(id)dictionary;
- (USOSchemaUSOEdge)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasToIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOEdge

- (USOSchemaUSOEdge)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = USOSchemaUSOEdge;
  v5 = [(USOSchemaUSOEdge *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"fromIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEdge setFromIndex:](v5, "setFromIndex:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"toIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEdge setToIndex:](v5, "setToIndex:", [v7 unsignedIntValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[USOSchemaUSOEdgeLabel alloc] initWithDictionary:v8];
      [(USOSchemaUSOEdge *)v5 setLabel:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (USOSchemaUSOEdge)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOEdge *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOEdge *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEdge fromIndex](self, "fromIndex")}];
    [dictionary setObject:v4 forKeyedSubscript:@"fromIndex"];
  }

  if (self->_label)
  {
    label = [(USOSchemaUSOEdge *)self label];
    dictionaryRepresentation = [label dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"label"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"label"];
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEdge toIndex](self, "toIndex")}];
    [dictionary setObject:v8 forKeyedSubscript:@"toIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_fromIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    return v7 ^ v6 ^ [(USOSchemaUSOEdgeLabel *)self->_label hash:v3];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = 2654435761 * self->_toIndex;
  return v7 ^ v6 ^ [(USOSchemaUSOEdgeLabel *)self->_label hash:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = equalCopy[24];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (*&has)
  {
    fromIndex = self->_fromIndex;
    if (fromIndex != [equalCopy fromIndex])
    {
      goto LABEL_14;
    }

    has = self->_has;
    v6 = equalCopy[24];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (toIndex = self->_toIndex, toIndex == [equalCopy toIndex]))
    {
      label = [(USOSchemaUSOEdge *)self label];
      label2 = [equalCopy label];
      v12 = label2;
      if ((label != 0) != (label2 == 0))
      {
        label3 = [(USOSchemaUSOEdge *)self label];
        if (!label3)
        {

LABEL_17:
          v18 = 1;
          goto LABEL_15;
        }

        v14 = label3;
        label4 = [(USOSchemaUSOEdge *)self label];
        label5 = [equalCopy label];
        v17 = [label4 isEqual:label5];

        if (v17)
        {
          goto LABEL_17;
        }
      }

      else
      {
      }
    }
  }

LABEL_14:
  v18 = 0;
LABEL_15:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  label = [(USOSchemaUSOEdge *)self label];

  v6 = toCopy;
  if (label)
  {
    label2 = [(USOSchemaUSOEdge *)self label];
    PBDataWriterWriteSubmessage();

    v6 = toCopy;
  }
}

- (void)setHasToIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = USOSchemaUSOEdge;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(USOSchemaUSOEdge *)self label:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(USOSchemaUSOEdge *)self deleteLabel];
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