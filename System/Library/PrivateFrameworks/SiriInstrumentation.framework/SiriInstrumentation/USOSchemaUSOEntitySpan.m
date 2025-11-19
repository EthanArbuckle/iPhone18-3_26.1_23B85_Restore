@interface USOSchemaUSOEntitySpan
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (USOSchemaUSOEntitySpan)initWithDictionary:(id)a3;
- (USOSchemaUSOEntitySpan)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEndIndex:(BOOL)a3;
- (void)setHasOriginAppBundleIdType:(BOOL)a3;
- (void)setHasSourceComponent:(BOOL)a3;
- (void)setHasStartIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation USOSchemaUSOEntitySpan

- (USOSchemaUSOEntitySpan)initWithDictionary:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = USOSchemaUSOEntitySpan;
  v5 = [(USOSchemaUSOEntitySpan *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"nodeIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setNodeIndex:](v5, "setNodeIndex:", [v6 unsignedIntValue]);
    }

    v19 = v6;
    v7 = [v4 objectForKeyedSubscript:@"sourceComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setSourceComponent:](v5, "setSourceComponent:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(USOSchemaUSOEntitySpan *)v5 setLabel:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"matchInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[USOSchemaUSOMatchInfo alloc] initWithDictionary:v10];
      [(USOSchemaUSOEntitySpan *)v5 setMatchInfo:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"startIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setStartIndex:](v5, "setStartIndex:", [v12 unsignedIntValue]);
    }

    v13 = [v4 objectForKeyedSubscript:@"endIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setEndIndex:](v5, "setEndIndex:", [v13 unsignedIntValue]);
    }

    v14 = [v4 objectForKeyedSubscript:@"originAppBundleIdType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntitySpan setOriginAppBundleIdType:](v5, "setOriginAppBundleIdType:", [v14 intValue]);
    }

    v15 = [v4 objectForKeyedSubscript:@"payloadAttachmentInfo"];
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

- (USOSchemaUSOEntitySpan)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(USOSchemaUSOEntitySpan *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(USOSchemaUSOEntitySpan *)self dictionaryRepresentation];
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
  if ((*&self->_has & 8) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpan endIndex](self, "endIndex")}];
    [v3 setObject:v4 forKeyedSubscript:@"endIndex"];
  }

  if (self->_label)
  {
    v5 = [(USOSchemaUSOEntitySpan *)self label];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"label"];
  }

  if (self->_matchInfo)
  {
    v7 = [(USOSchemaUSOEntitySpan *)self matchInfo];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"matchInfo"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"matchInfo"];
    }
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpan nodeIndex](self, "nodeIndex")}];
    [v3 setObject:v11 forKeyedSubscript:@"nodeIndex"];

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

    [v3 setObject:v13 forKeyedSubscript:@"originAppBundleIdType"];
  }

  if (self->_payloadAttachmentInfo)
  {
    v14 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
    v15 = [v14 dictionaryRepresentation];
    if (v15)
    {
      [v3 setObject:v15 forKeyedSubscript:@"payloadAttachmentInfo"];
    }

    else
    {
      v16 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v16 forKeyedSubscript:@"payloadAttachmentInfo"];
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

    [v3 setObject:v19 forKeyedSubscript:@"sourceComponent"];
    v17 = self->_has;
  }

  if ((v17 & 4) != 0)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntitySpan startIndex](self, "startIndex")}];
    [v3 setObject:v20 forKeyedSubscript:@"startIndex"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_35;
  }

  has = self->_has;
  v6 = v4[56];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_35;
  }

  if (*&has)
  {
    nodeIndex = self->_nodeIndex;
    if (nodeIndex != [v4 nodeIndex])
    {
      goto LABEL_35;
    }

    has = self->_has;
    v6 = v4[56];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_35;
  }

  if (v8)
  {
    sourceComponent = self->_sourceComponent;
    if (sourceComponent != [v4 sourceComponent])
    {
      goto LABEL_35;
    }
  }

  v10 = [(USOSchemaUSOEntitySpan *)self label];
  v11 = [v4 label];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_34;
  }

  v12 = [(USOSchemaUSOEntitySpan *)self label];
  if (v12)
  {
    v13 = v12;
    v14 = [(USOSchemaUSOEntitySpan *)self label];
    v15 = [v4 label];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  v10 = [(USOSchemaUSOEntitySpan *)self matchInfo];
  v11 = [v4 matchInfo];
  if ((v10 != 0) == (v11 == 0))
  {
    goto LABEL_34;
  }

  v17 = [(USOSchemaUSOEntitySpan *)self matchInfo];
  if (v17)
  {
    v18 = v17;
    v19 = [(USOSchemaUSOEntitySpan *)self matchInfo];
    v20 = [v4 matchInfo];
    v21 = [v19 isEqual:v20];

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
  v24 = v4[56];
  if (v23 != ((v24 >> 2) & 1))
  {
    goto LABEL_35;
  }

  if (v23)
  {
    startIndex = self->_startIndex;
    if (startIndex != [v4 startIndex])
    {
      goto LABEL_35;
    }

    v22 = self->_has;
    v24 = v4[56];
  }

  v26 = (*&v22 >> 3) & 1;
  if (v26 != ((v24 >> 3) & 1))
  {
    goto LABEL_35;
  }

  if (v26)
  {
    endIndex = self->_endIndex;
    if (endIndex != [v4 endIndex])
    {
      goto LABEL_35;
    }

    v22 = self->_has;
    v24 = v4[56];
  }

  v28 = (*&v22 >> 4) & 1;
  if (v28 != ((v24 >> 4) & 1))
  {
    goto LABEL_35;
  }

  if (v28)
  {
    originAppBundleIdType = self->_originAppBundleIdType;
    if (originAppBundleIdType != [v4 originAppBundleIdType])
    {
      goto LABEL_35;
    }
  }

  v10 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  v11 = [v4 payloadAttachmentInfo];
  if ((v10 != 0) == (v11 == 0))
  {
LABEL_34:

    goto LABEL_35;
  }

  v30 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  if (!v30)
  {

LABEL_38:
    v35 = 1;
    goto LABEL_36;
  }

  v31 = v30;
  v32 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  v33 = [v4 payloadAttachmentInfo];
  v34 = [v32 isEqual:v33];

  if (v34)
  {
    goto LABEL_38;
  }

LABEL_35:
  v35 = 0;
LABEL_36:

  return v35;
}

- (void)writeTo:(id)a3
{
  v12 = a3;
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

  v5 = [(USOSchemaUSOEntitySpan *)self label];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(USOSchemaUSOEntitySpan *)self matchInfo];

  if (v6)
  {
    v7 = [(USOSchemaUSOEntitySpan *)self matchInfo];
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
  v9 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];

  v10 = v12;
  if (v9)
  {
    v11 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
    PBDataWriterWriteSubmessage();

    v10 = v12;
  }
}

- (void)setHasOriginAppBundleIdType:(BOOL)a3
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

- (void)setHasEndIndex:(BOOL)a3
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

- (void)setHasStartIndex:(BOOL)a3
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

- (void)setHasSourceComponent:(BOOL)a3
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

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = USOSchemaUSOEntitySpan;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(USOSchemaUSOEntitySpan *)self matchInfo];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(USOSchemaUSOEntitySpan *)self deleteMatchInfo];
  }

  v9 = [(USOSchemaUSOEntitySpan *)self payloadAttachmentInfo];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
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