@interface SIRINLUEXTERNALUsoEntityIdentifier
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSourceComponent:(id)component;
- (int)sourceComponent;
- (unint64_t)hash;
- (unsigned)groupIndex;
- (unsigned)interpretationGroup;
- (unsigned)nodeIndex;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasInterpretationGroup:(BOOL)group;
- (void)setHasNodeIndex:(BOOL)index;
- (void)setHasSourceComponent:(BOOL)component;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUEXTERNALUsoEntityIdentifier

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[16] & 4) != 0)
  {
    self->_nodeIndex = fromCopy[8];
    *&self->_has |= 4u;
  }

  v11 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SIRINLUEXTERNALUsoEntityIdentifier *)self setBackingAppBundleId:?];
    v5 = v11;
  }

  if (*(v5 + 7))
  {
    [(SIRINLUEXTERNALUsoEntityIdentifier *)self setValue:?];
    v5 = v11;
  }

  namespaceA = self->_namespaceA;
  v7 = *(v5 + 3);
  if (namespaceA)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(SIRICOMMONStringValue *)namespaceA mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    [(SIRINLUEXTERNALUsoEntityIdentifier *)self setNamespaceA:?];
  }

  v5 = v11;
LABEL_13:
  probability = self->_probability;
  v9 = *(v5 + 5);
  if (probability)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(SIRICOMMONDoubleValue *)probability mergeFrom:?];
  }

  else
  {
    if (!v9)
    {
      goto LABEL_19;
    }

    [(SIRINLUEXTERNALUsoEntityIdentifier *)self setProbability:?];
  }

  v5 = v11;
LABEL_19:
  v10 = *(v5 + 64);
  if ((v10 & 8) != 0)
  {
    self->_sourceComponent = v5[12];
    *&self->_has |= 8u;
    v10 = *(v5 + 64);
    if ((v10 & 1) == 0)
    {
LABEL_21:
      if ((v10 & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((v5[16] & 1) == 0)
  {
    goto LABEL_21;
  }

  self->_groupIndex = v5[4];
  *&self->_has |= 1u;
  if ((v5[16] & 2) != 0)
  {
LABEL_22:
    self->_interpretationGroup = v5[5];
    *&self->_has |= 2u;
  }

LABEL_23:

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_nodeIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_backingAppBundleId hash];
  v5 = [(NSString *)self->_value hash];
  v6 = [(SIRICOMMONStringValue *)self->_namespaceA hash];
  v7 = [(SIRICOMMONDoubleValue *)self->_probability hash];
  if ((*&self->_has & 8) == 0)
  {
    v8 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v10 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  }

  v8 = 2654435761 * self->_sourceComponent;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v9 = 2654435761 * self->_groupIndex;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v10 = 2654435761 * self->_interpretationGroup;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_29;
  }

  v5 = *(equalCopy + 64);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 64) & 4) == 0 || self->_nodeIndex != *(equalCopy + 8))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 64) & 4) != 0)
  {
LABEL_29:
    v10 = 0;
    goto LABEL_30;
  }

  backingAppBundleId = self->_backingAppBundleId;
  if (backingAppBundleId | *(equalCopy + 1) && ![(NSString *)backingAppBundleId isEqual:?])
  {
    goto LABEL_29;
  }

  value = self->_value;
  if (value | *(equalCopy + 7))
  {
    if (![(NSString *)value isEqual:?])
    {
      goto LABEL_29;
    }
  }

  namespaceA = self->_namespaceA;
  if (namespaceA | *(equalCopy + 3))
  {
    if (![(SIRICOMMONStringValue *)namespaceA isEqual:?])
    {
      goto LABEL_29;
    }
  }

  probability = self->_probability;
  if (probability | *(equalCopy + 5))
  {
    if (![(SIRICOMMONDoubleValue *)probability isEqual:?])
    {
      goto LABEL_29;
    }
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 64) & 8) == 0 || self->_sourceComponent != *(equalCopy + 12))
    {
      goto LABEL_29;
    }
  }

  else if ((*(equalCopy + 64) & 8) != 0)
  {
    goto LABEL_29;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_groupIndex != *(equalCopy + 4))
    {
      goto LABEL_29;
    }
  }

  else if (*(equalCopy + 64))
  {
    goto LABEL_29;
  }

  v10 = (*(equalCopy + 64) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_interpretationGroup != *(equalCopy + 5))
    {
      goto LABEL_29;
    }

    v10 = 1;
  }

LABEL_30:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_nodeIndex;
    *(v5 + 64) |= 4u;
  }

  v7 = [(NSString *)self->_backingAppBundleId copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  v9 = [(NSString *)self->_value copyWithZone:zone];
  v10 = *(v6 + 56);
  *(v6 + 56) = v9;

  v11 = [(SIRICOMMONStringValue *)self->_namespaceA copyWithZone:zone];
  v12 = *(v6 + 24);
  *(v6 + 24) = v11;

  v13 = [(SIRICOMMONDoubleValue *)self->_probability copyWithZone:zone];
  v14 = *(v6 + 40);
  *(v6 + 40) = v13;

  has = self->_has;
  if ((has & 8) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    *(v6 + 16) = self->_groupIndex;
    *(v6 + 64) |= 1u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_6;
  }

  *(v6 + 48) = self->_sourceComponent;
  *(v6 + 64) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((has & 2) != 0)
  {
LABEL_6:
    *(v6 + 20) = self->_interpretationGroup;
    *(v6 + 64) |= 2u;
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    toCopy[8] = self->_nodeIndex;
    *(toCopy + 64) |= 4u;
  }

  v6 = toCopy;
  if (self->_backingAppBundleId)
  {
    [toCopy setBackingAppBundleId:?];
    toCopy = v6;
  }

  if (self->_value)
  {
    [v6 setValue:?];
    toCopy = v6;
  }

  if (self->_namespaceA)
  {
    [v6 setNamespaceA:?];
    toCopy = v6;
  }

  if (self->_probability)
  {
    [v6 setProbability:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[12] = self->_sourceComponent;
    *(toCopy + 64) |= 8u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  toCopy[4] = self->_groupIndex;
  *(toCopy + 64) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    toCopy[5] = self->_interpretationGroup;
    *(toCopy + 64) |= 2u;
  }

LABEL_15:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 4) != 0)
  {
    nodeIndex = self->_nodeIndex;
    PBDataWriterWriteUint32Field();
  }

  if (self->_backingAppBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_value)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_namespaceA)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_probability)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    sourceComponent = self->_sourceComponent;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  groupIndex = self->_groupIndex;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    interpretationGroup = self->_interpretationGroup;
    PBDataWriterWriteUint32Field();
  }

LABEL_15:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 4) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_nodeIndex];
    [dictionary setObject:v4 forKey:@"node_index"];
  }

  backingAppBundleId = self->_backingAppBundleId;
  if (backingAppBundleId)
  {
    [dictionary setObject:backingAppBundleId forKey:@"backing_app_bundle_id"];
  }

  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  namespaceA = self->_namespaceA;
  if (namespaceA)
  {
    dictionaryRepresentation = [(SIRICOMMONStringValue *)namespaceA dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"namespace_a"];
  }

  probability = self->_probability;
  if (probability)
  {
    dictionaryRepresentation2 = [(SIRICOMMONDoubleValue *)probability dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"probability"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    sourceComponent = self->_sourceComponent;
    if (sourceComponent >= 7)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sourceComponent];
    }

    else
    {
      v15 = off_1E8328120[sourceComponent];
    }

    [dictionary setObject:v15 forKey:@"source_component"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_13:
      if ((has & 2) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_groupIndex];
  [dictionary setObject:v16 forKey:@"group_index"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_14:
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_interpretationGroup];
    [dictionary setObject:v12 forKey:@"interpretation_group"];
  }

LABEL_15:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoEntityIdentifier;
  v4 = [(SIRINLUEXTERNALUsoEntityIdentifier *)&v8 description];
  dictionaryRepresentation = [(SIRINLUEXTERNALUsoEntityIdentifier *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasInterpretationGroup:(BOOL)group
{
  if (group)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (unsigned)interpretationGroup
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_interpretationGroup;
  }

  else
  {
    return 0;
  }
}

- (unsigned)groupIndex
{
  if (*&self->_has)
  {
    return self->_groupIndex;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSourceComponent:(id)component
{
  componentCopy = component;
  if ([componentCopy isEqualToString:@"NLU_COMPONENT_UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([componentCopy isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_SIRI_VOCAB"])
  {
    v4 = 1;
  }

  else if ([componentCopy isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_VOC_FILE"])
  {
    v4 = 2;
  }

  else if ([componentCopy isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_MENTION_RESOLVER"])
  {
    v4 = 3;
  }

  else if ([componentCopy isEqualToString:@"NLU_COMPONENT_SPAN_MATCH_CONTEXTUAL_SPAN_MATCHER"])
  {
    v4 = 4;
  }

  else if ([componentCopy isEqualToString:@"NLU_COMPONENT_PARSER_CATI"])
  {
    v4 = 5;
  }

  else if ([componentCopy isEqualToString:@"NLU_COMPONENT_PARSER_SSU"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasSourceComponent:(BOOL)component
{
  if (component)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)sourceComponent
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_sourceComponent;
  }

  else
  {
    return 0;
  }
}

- (void)setHasNodeIndex:(BOOL)index
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

- (unsigned)nodeIndex
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_nodeIndex;
  }

  else
  {
    return 0;
  }
}

@end