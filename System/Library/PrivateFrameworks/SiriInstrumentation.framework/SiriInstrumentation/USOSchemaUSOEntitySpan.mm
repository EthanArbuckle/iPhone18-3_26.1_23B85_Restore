@interface USOSchemaUSOEntitySpan
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOEntitySpan)initWithDictionary:(id)dictionary;
- (USOSchemaUSOEntitySpan)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndIndex:(BOOL)index;
- (void)setHasOriginAppBundleIdType:(BOOL)type;
- (void)setHasSourceComponent:(BOOL)component;
- (void)setHasStartIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOEntitySpan

- (USOSchemaUSOEntitySpan)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = USOSchemaUSOEntitySpan;
  v5 = [(USOSchemaUSOEntitySpan *)&v20 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nodeIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setNodeIndex:](v5, "setNodeIndex:", [v6 unsignedIntValue]);
    }

    v19 = v6;
    v7 = [dictionaryCopy objectForKeyedSubscript:@"sourceComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setSourceComponent:](v5, "setSourceComponent:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(USOSchemaUSOEntitySpan *)v5 setLabel:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"matchInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[USOSchemaUSOMatchInfo alloc] initWithDictionary:v10];
      [(USOSchemaUSOEntitySpan *)v5 setMatchInfo:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"startIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setStartIndex:](v5, "setStartIndex:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"endIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setEndIndex:](v5, "setEndIndex:", [v13 unsignedIntValue]);
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"originAppBundleIdType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setOriginAppBundleIdType:](v5, "setOriginAppBundleIdType:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"payloadAttachmentInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[USOSchemaUSOPayloadAttachmentInfo alloc] initWithDictionary:v15];
      [(USOSchemaUSOEntitySpan *)v5 setPayloadAttachmentInfo:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (USOSchemaUSOEntitySpan)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOEntitySpan *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOEntitySpan *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpan endIndex](self, "endIndex")}];
    [dictionary setObject:v4 forKeyedSubscript:@"endIndex"];
  }

  if (self->_label)
  {
    label = [(USOSchemaUSOEntitySpan *)self label];
    v6 = [label copy];
    [dictionary setObject:v6 forKeyedSubscript:@"label"];
  }

  if (self->_matchInfo)
  {
    matchInfo = [(USOSchemaUSOEntitySpan *)self matchInfo];
    dictionaryRepresentation = [matchInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"matchInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"matchInfo"];
    }
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpan nodeIndex](self, "nodeIndex")}];
    [dictionary setObject:v11 forKeyedSubscript:@"nodeIndex"];

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v12 = [(USOSchemaUSOEntitySpan *)self originAppBundleIdType]- 1;
    if (v12 > 0x18)
    {
      v13 = @"USOBACKINGAPPBUNDLETYPE_UNKNOWN";
    }

    else
    {
      v13 = off_1E78E8B28[v12];
    }

    [dictionary setObject:v13 forKeyedSubscript:@"originAppBundleIdType"];
  }

  if (self->_payloadAttachmentInfo)
  {
    payloadAttachmentInfo = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
    dictionaryRepresentation2 = [payloadAttachmentInfo dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"payloadAttachmentInfo"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"payloadAttachmentInfo"];
    }
  }

  v17 = self->_has;
  if ((v17 & 2) != 0)
  {
    v18 = [(USOSchemaUSOEntitySpan *)self sourceComponent]- 1;
    if (v18 > 6)
    {
      v19 = @"USOENTITYSPANNLUCOMPONENT_UNKNOWN";
    }

    else
    {
      v19 = off_1E78E8BF0[v18];
    }

    [dictionary setObject:v19 forKeyedSubscript:@"sourceComponent"];
    v17 = self->_has;
  }

  if ((v17 & 4) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpan startIndex](self, "startIndex")}];
    [dictionary setObject:v20 forKeyedSubscript:@"startIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_nodeIndex;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_sourceComponent;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_label hash];
  v6 = [(USOSchemaUSOMatchInfo *)self->_matchInfo hash];
  if ((*&self->_has & 4) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v9 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(USOSchemaUSOPayloadAttachmentInfo *)self->_payloadAttachmentInfo hash];
  }

  v7 = 2654435761 * self->_startIndex;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = 2654435761 * self->_endIndex;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v9 = 2654435761 * self->_originAppBundleIdType;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ [(USOSchemaUSOPayloadAttachmentInfo *)self->_payloadAttachmentInfo hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = equalCopy[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_35;
  }

  if (*&has)
  {
    nodeIndex = self->_nodeIndex;
    if (nodeIndex != [equalCopy nodeIndex])
    {
      goto LABEL_35;
    }

    has = self->_has;
    v6 = equalCopy[56];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_35;
  }

  if (v8)
  {
    sourceComponent = self->_sourceComponent;
    if (sourceComponent != [equalCopy sourceComponent])
    {
      goto LABEL_35;
    }
  }

  label = [(USOSchemaUSOEntitySpan *)self label];
  label2 = [equalCopy label];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_34;
  }

  label3 = [(USOSchemaUSOEntitySpan *)self label];
  if (label3)
  {
    v13 = label3;
    label4 = [(USOSchemaUSOEntitySpan *)self label];
    label5 = [equalCopy label];
    v16 = [label4 isEqual:label5];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  label = [(USOSchemaUSOEntitySpan *)self matchInfo];
  label2 = [equalCopy matchInfo];
  if ((label != 0) == (label2 == 0))
  {
    goto LABEL_34;
  }

  matchInfo = [(USOSchemaUSOEntitySpan *)self matchInfo];
  if (matchInfo)
  {
    v18 = matchInfo;
    matchInfo2 = [(USOSchemaUSOEntitySpan *)self matchInfo];
    matchInfo3 = [equalCopy matchInfo];
    v21 = [matchInfo2 isEqual:matchInfo3];

    if (!v21)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v22 = self->_has;
  v23 = (*&v22 >> 2) & 1;
  v24 = equalCopy[56];
  if (v23 != ((v24 >> 2) & 1))
  {
    goto LABEL_35;
  }

  if (v23)
  {
    startIndex = self->_startIndex;
    if (startIndex != [equalCopy startIndex])
    {
      goto LABEL_35;
    }

    v22 = self->_has;
    v24 = equalCopy[56];
  }

  v26 = (*&v22 >> 3) & 1;
  if (v26 != ((v24 >> 3) & 1))
  {
    goto LABEL_35;
  }

  if (v26)
  {
    endIndex = self->_endIndex;
    if (endIndex != [equalCopy endIndex])
    {
      goto LABEL_35;
    }

    v22 = self->_has;
    v24 = equalCopy[56];
  }

  v28 = (*&v22 >> 4) & 1;
  if (v28 != ((v24 >> 4) & 1))
  {
    goto LABEL_35;
  }

  if (v28)
  {
    originAppBundleIdType = self->_originAppBundleIdType;
    if (originAppBundleIdType != [equalCopy originAppBundleIdType])
    {
      goto LABEL_35;
    }
  }

  label = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  label2 = [equalCopy payloadAttachmentInfo];
  if ((label != 0) == (label2 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  payloadAttachmentInfo = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  if (!payloadAttachmentInfo)
  {

LABEL_38:
    v35 = 1;
    goto LABEL_36;
  }

  v31 = payloadAttachmentInfo;
  payloadAttachmentInfo2 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  payloadAttachmentInfo3 = [equalCopy payloadAttachmentInfo];
  v34 = [payloadAttachmentInfo2 isEqual:payloadAttachmentInfo3];

  if (v34)
  {
    goto LABEL_38;
  }

LABEL_35:
  v35 = 0;
LABEL_36:

  return v35;
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
    PBDataWriterWriteInt32Field();
  }

  label = [(USOSchemaUSOEntitySpan *)self label];

  if (label)
  {
    PBDataWriterWriteStringField();
  }

  matchInfo = [(USOSchemaUSOEntitySpan *)self matchInfo];

  if (matchInfo)
  {
    matchInfo2 = [(USOSchemaUSOEntitySpan *)self matchInfo];
    PBDataWriterWriteSubmessage();
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v8 = self->_has;
    if ((v8 & 8) == 0)
    {
LABEL_11:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_11;
  }

  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_12:
    PBDataWriterWriteInt32Field();
  }

LABEL_13:
  payloadAttachmentInfo = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];

  v10 = toCopy;
  if (payloadAttachmentInfo)
  {
    payloadAttachmentInfo2 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
    PBDataWriterWriteSubmessage();

    v10 = toCopy;
  }
}

- (void)setHasOriginAppBundleIdType:(BOOL)type
{
  if (type)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasEndIndex:(BOOL)index
{
  if (index)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasStartIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSourceComponent:(BOOL)component
{
  if (component)
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
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = USOSchemaUSOEntitySpan;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  matchInfo = [(USOSchemaUSOEntitySpan *)self matchInfo];
  v7 = [matchInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(USOSchemaUSOEntitySpan *)self deleteMatchInfo];
  }

  payloadAttachmentInfo = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  v10 = [payloadAttachmentInfo applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(USOSchemaUSOEntitySpan *)self deletePayloadAttachmentInfo];
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