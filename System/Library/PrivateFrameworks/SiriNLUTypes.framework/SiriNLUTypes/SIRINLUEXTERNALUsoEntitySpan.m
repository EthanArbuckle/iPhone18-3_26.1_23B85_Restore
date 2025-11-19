@interface SIRINLUEXTERNALUsoEntitySpan
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSourceComponent:(id)a3;
- (int)sourceComponent;
- (unint64_t)hash;
- (unsigned)nodeIndex;
- (void)addAlternatives:(id)a3;
- (void)addProperties:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSourceComponent:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUsoEntitySpan

- (void)mergeFrom:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[24])
  {
    self->_nodeIndex = v4[10];
    *&self->_has |= 1u;
  }

  originAppId = self->_originAppId;
  v7 = *(v5 + 6);
  if (originAppId)
  {
    if (v7)
    {
      [(SIRICOMMONStringValue *)originAppId mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(SIRINLUEXTERNALUsoEntitySpan *)self setOriginAppId:?];
  }

  if ((*(v5 + 96) & 2) != 0)
  {
    self->_sourceComponent = *(v5 + 20);
    *&self->_has |= 2u;
  }

  label = self->_label;
  v9 = *(v5 + 3);
  if (label)
  {
    if (v9)
    {
      [(SIRICOMMONStringValue *)label mergeFrom:?];
    }
  }

  else if (v9)
  {
    [(SIRINLUEXTERNALUsoEntitySpan *)self setLabel:?];
  }

  matchInfo = self->_matchInfo;
  v11 = *(v5 + 4);
  if (matchInfo)
  {
    if (v11)
    {
      [(SIRINLUEXTERNALMatchInfo *)matchInfo mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(SIRINLUEXTERNALUsoEntitySpan *)self setMatchInfo:?];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = *(v5 + 9);
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(SIRINLUEXTERNALUsoEntitySpan *)self addProperties:*(*(&v35 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v14);
  }

  startIndex = self->_startIndex;
  v18 = *(v5 + 11);
  if (startIndex)
  {
    if (v18)
    {
      [(SIRICOMMONUInt32Value *)startIndex mergeFrom:?];
    }
  }

  else if (v18)
  {
    [(SIRINLUEXTERNALUsoEntitySpan *)self setStartIndex:?];
  }

  endIndex = self->_endIndex;
  v20 = *(v5 + 2);
  if (endIndex)
  {
    if (v20)
    {
      [(SIRICOMMONUInt32Value *)endIndex mergeFrom:?];
    }
  }

  else if (v20)
  {
    [(SIRINLUEXTERNALUsoEntitySpan *)self setEndIndex:?];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v21 = *(v5 + 1);
  v22 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v32;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(v21);
        }

        [(SIRINLUEXTERNALUsoEntitySpan *)self addAlternatives:*(*(&v31 + 1) + 8 * j), v31];
      }

      v23 = [v21 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v23);
  }

  originEntityId = self->_originEntityId;
  v27 = *(v5 + 7);
  if (originEntityId)
  {
    if (v27)
    {
      [(SIRICOMMONStringValue *)originEntityId mergeFrom:?];
    }
  }

  else if (v27)
  {
    [(SIRINLUEXTERNALUsoEntitySpan *)self setOriginEntityId:?];
  }

  payloadAttachmentInfo = self->_payloadAttachmentInfo;
  v29 = *(v5 + 8);
  if (payloadAttachmentInfo)
  {
    if (v29)
    {
      [(SIRINLUEXTERNALPayloadAttachmentInfo *)payloadAttachmentInfo mergeFrom:?];
    }
  }

  else if (v29)
  {
    [(SIRINLUEXTERNALUsoEntitySpan *)self setPayloadAttachmentInfo:?];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_nodeIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SIRICOMMONStringValue *)self->_originAppId hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_sourceComponent;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(SIRICOMMONStringValue *)self->_label hash];
  v7 = [(SIRINLUEXTERNALMatchInfo *)self->_matchInfo hash];
  v8 = v7 ^ [(NSMutableArray *)self->_properties hash];
  v9 = v6 ^ v8 ^ [(SIRICOMMONUInt32Value *)self->_startIndex hash];
  v10 = [(SIRICOMMONUInt32Value *)self->_endIndex hash];
  v11 = v10 ^ [(NSMutableArray *)self->_alternatives hash];
  v12 = v11 ^ [(SIRICOMMONStringValue *)self->_originEntityId hash];
  return v9 ^ v12 ^ [(SIRINLUEXTERNALPayloadAttachmentInfo *)self->_payloadAttachmentInfo hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  has = self->_has;
  v6 = *(v4 + 96);
  if (has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_nodeIndex != *(v4 + 10))
    {
      goto LABEL_31;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_31;
  }

  originAppId = self->_originAppId;
  if (originAppId | *(v4 + 6))
  {
    if (![(SIRICOMMONStringValue *)originAppId isEqual:?])
    {
LABEL_31:
      v16 = 0;
      goto LABEL_32;
    }

    has = self->_has;
    v6 = *(v4 + 96);
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_sourceComponent != *(v4 + 20))
    {
      goto LABEL_31;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_31;
  }

  label = self->_label;
  if (label | *(v4 + 3) && ![(SIRICOMMONStringValue *)label isEqual:?])
  {
    goto LABEL_31;
  }

  matchInfo = self->_matchInfo;
  if (matchInfo | *(v4 + 4))
  {
    if (![(SIRINLUEXTERNALMatchInfo *)matchInfo isEqual:?])
    {
      goto LABEL_31;
    }
  }

  properties = self->_properties;
  if (properties | *(v4 + 9))
  {
    if (![(NSMutableArray *)properties isEqual:?])
    {
      goto LABEL_31;
    }
  }

  startIndex = self->_startIndex;
  if (startIndex | *(v4 + 11))
  {
    if (![(SIRICOMMONUInt32Value *)startIndex isEqual:?])
    {
      goto LABEL_31;
    }
  }

  endIndex = self->_endIndex;
  if (endIndex | *(v4 + 2))
  {
    if (![(SIRICOMMONUInt32Value *)endIndex isEqual:?])
    {
      goto LABEL_31;
    }
  }

  alternatives = self->_alternatives;
  if (alternatives | *(v4 + 1))
  {
    if (![(NSMutableArray *)alternatives isEqual:?])
    {
      goto LABEL_31;
    }
  }

  originEntityId = self->_originEntityId;
  if (originEntityId | *(v4 + 7))
  {
    if (![(SIRICOMMONStringValue *)originEntityId isEqual:?])
    {
      goto LABEL_31;
    }
  }

  payloadAttachmentInfo = self->_payloadAttachmentInfo;
  if (payloadAttachmentInfo | *(v4 + 8))
  {
    v16 = [(SIRINLUEXTERNALPayloadAttachmentInfo *)payloadAttachmentInfo isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_32:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_nodeIndex;
    *(v5 + 96) |= 1u;
  }

  v7 = [(SIRICOMMONStringValue *)self->_originAppId copyWithZone:a3];
  v8 = *(v6 + 48);
  *(v6 + 48) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 80) = self->_sourceComponent;
    *(v6 + 96) |= 2u;
  }

  v9 = [(SIRICOMMONStringValue *)self->_label copyWithZone:a3];
  v10 = *(v6 + 24);
  *(v6 + 24) = v9;

  v11 = [(SIRINLUEXTERNALMatchInfo *)self->_matchInfo copyWithZone:a3];
  v12 = *(v6 + 32);
  *(v6 + 32) = v11;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = self->_properties;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    do
    {
      v17 = 0;
      do
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v39 + 1) + 8 * v17) copyWithZone:a3];
        [v6 addProperties:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v15);
  }

  v19 = [(SIRICOMMONUInt32Value *)self->_startIndex copyWithZone:a3];
  v20 = *(v6 + 88);
  *(v6 + 88) = v19;

  v21 = [(SIRICOMMONUInt32Value *)self->_endIndex copyWithZone:a3];
  v22 = *(v6 + 16);
  *(v6 + 16) = v21;

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v23 = self->_alternatives;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v36;
    do
    {
      v27 = 0;
      do
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v35 + 1) + 8 * v27) copyWithZone:{a3, v35}];
        [v6 addAlternatives:v28];

        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v25);
  }

  v29 = [(SIRICOMMONStringValue *)self->_originEntityId copyWithZone:a3];
  v30 = *(v6 + 56);
  *(v6 + 56) = v29;

  v31 = [(SIRINLUEXTERNALPayloadAttachmentInfo *)self->_payloadAttachmentInfo copyWithZone:a3];
  v32 = *(v6 + 64);
  *(v6 + 64) = v31;

  v33 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[10] = self->_nodeIndex;
    *(v4 + 96) |= 1u;
  }

  v14 = v4;
  if (self->_originAppId)
  {
    [v4 setOriginAppId:?];
    v4 = v14;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[20] = self->_sourceComponent;
    *(v4 + 96) |= 2u;
  }

  if (self->_label)
  {
    [v14 setLabel:?];
  }

  if (self->_matchInfo)
  {
    [v14 setMatchInfo:?];
  }

  if ([(SIRINLUEXTERNALUsoEntitySpan *)self propertiesCount])
  {
    [v14 clearProperties];
    v5 = [(SIRINLUEXTERNALUsoEntitySpan *)self propertiesCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUEXTERNALUsoEntitySpan *)self propertiesAtIndex:i];
        [v14 addProperties:v8];
      }
    }
  }

  if (self->_startIndex)
  {
    [v14 setStartIndex:?];
  }

  if (self->_endIndex)
  {
    [v14 setEndIndex:?];
  }

  if ([(SIRINLUEXTERNALUsoEntitySpan *)self alternativesCount])
  {
    [v14 clearAlternatives];
    v9 = [(SIRINLUEXTERNALUsoEntitySpan *)self alternativesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(SIRINLUEXTERNALUsoEntitySpan *)self alternativesAtIndex:j];
        [v14 addAlternatives:v12];
      }
    }
  }

  if (self->_originEntityId)
  {
    [v14 setOriginEntityId:?];
  }

  v13 = v14;
  if (self->_payloadAttachmentInfo)
  {
    [v14 setPayloadAttachmentInfo:?];
    v13 = v14;
  }
}

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    nodeIndex = self->_nodeIndex;
    PBDataWriterWriteUint32Field();
  }

  if (self->_originAppId)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    sourceComponent = self->_sourceComponent;
    PBDataWriterWriteInt32Field();
  }

  if (self->_label)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_matchInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_properties;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  if (self->_startIndex)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_endIndex)
  {
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_alternatives;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  if (self->_originEntityId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_payloadAttachmentInfo)
  {
    PBDataWriterWriteSubmessage();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nodeIndex];
    [v3 setObject:v4 forKey:@"node_index"];
  }

  originAppId = self->_originAppId;
  if (originAppId)
  {
    v6 = [(SIRICOMMONStringValue *)originAppId dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"origin_app_id"];
  }

  if ((*&self->_has & 2) != 0)
  {
    sourceComponent = self->_sourceComponent;
    if (sourceComponent >= 7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sourceComponent];
    }

    else
    {
      v8 = off_1E83283A0[sourceComponent];
    }

    [v3 setObject:v8 forKey:@"source_component"];
  }

  label = self->_label;
  if (label)
  {
    v10 = [(SIRICOMMONStringValue *)label dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"label"];
  }

  matchInfo = self->_matchInfo;
  if (matchInfo)
  {
    v12 = [(SIRINLUEXTERNALMatchInfo *)matchInfo dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"match_info"];
  }

  if ([(NSMutableArray *)self->_properties count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_properties, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v14 = self->_properties;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v41 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"properties"];
  }

  startIndex = self->_startIndex;
  if (startIndex)
  {
    v21 = [(SIRICOMMONUInt32Value *)startIndex dictionaryRepresentation];
    [v3 setObject:v21 forKey:@"start_index"];
  }

  endIndex = self->_endIndex;
  if (endIndex)
  {
    v23 = [(SIRICOMMONUInt32Value *)endIndex dictionaryRepresentation];
    [v3 setObject:v23 forKey:@"end_index"];
  }

  if ([(NSMutableArray *)self->_alternatives count])
  {
    v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_alternatives, "count")}];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v25 = self->_alternatives;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v38;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v38 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v37 + 1) + 8 * j) dictionaryRepresentation];
          [v24 addObject:v30];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v27);
    }

    [v3 setObject:v24 forKey:@"alternatives"];
  }

  originEntityId = self->_originEntityId;
  if (originEntityId)
  {
    v32 = [(SIRICOMMONStringValue *)originEntityId dictionaryRepresentation];
    [v3 setObject:v32 forKey:@"origin_entity_id"];
  }

  payloadAttachmentInfo = self->_payloadAttachmentInfo;
  if (payloadAttachmentInfo)
  {
    v34 = [(SIRINLUEXTERNALPayloadAttachmentInfo *)payloadAttachmentInfo dictionaryRepresentation];
    [v3 setObject:v34 forKey:@"payload_attachment_info"];
  }

  v35 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoEntitySpan;
  v4 = [(SIRINLUEXTERNALUsoEntitySpan *)&v8 description];
  v5 = [(SIRINLUEXTERNALUsoEntitySpan *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addAlternatives:(id)a3
{
  v4 = a3;
  alternatives = self->_alternatives;
  v8 = v4;
  if (!alternatives)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_alternatives;
    self->_alternatives = v6;

    v4 = v8;
    alternatives = self->_alternatives;
  }

  [(NSMutableArray *)alternatives addObject:v4];
}

- (void)addProperties:(id)a3
{
  v4 = a3;
  properties = self->_properties;
  v8 = v4;
  if (!properties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_properties;
    self->_properties = v6;

    v4 = v8;
    properties = self->_properties;
  }

  [(NSMutableArray *)properties addObject:v4];
}

- (int)StringAsSourceComponent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"NLU_COMPONENT_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_SIRI_VOCAB"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_VOC_FILE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_MENTION_RESOLVER"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_CONTEXTUAL_SPAN_MATCHER"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NLU_COMPONENT_PARSER_CATI"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NLU_COMPONENT_PARSER_SSU"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (int)sourceComponent
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_sourceComponent;
  }

  else
  {
    return 0;
  }
}

- (unsigned)nodeIndex
{
  if (*&self->_has)
  {
    return self->_nodeIndex;
  }

  else
  {
    return 0;
  }
}

@end