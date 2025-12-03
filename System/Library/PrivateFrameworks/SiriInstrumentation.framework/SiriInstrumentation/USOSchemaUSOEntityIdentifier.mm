@interface USOSchemaUSOEntityIdentifier
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (USOSchemaUSOEntityIdentifier)initWithDictionary:(id)dictionary;
- (USOSchemaUSOEntityIdentifier)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBackingAppBundleType:(BOOL)type;
- (void)setHasGroupIndex:(BOOL)index;
- (void)setHasInterpretationGroup:(BOOL)group;
- (void)setHasProbability:(BOOL)probability;
- (void)setHasSourceNluComponent:(BOOL)component;
- (void)writeTo:(id)to;
@end

@implementation USOSchemaUSOEntityIdentifier

- (USOSchemaUSOEntityIdentifier)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = USOSchemaUSOEntityIdentifier;
  v5 = [(USOSchemaUSOEntityIdentifier *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"nodeIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntityIdentifier setNodeIndex:](v5, "setNodeIndex:", [v6 unsignedIntValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"identifierNamespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(USOSchemaUSOEntityIdentifier *)v5 setIdentifierNamespace:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"probability"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 doubleValue];
      [(USOSchemaUSOEntityIdentifier *)v5 setProbability:?];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"sourceNluComponent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntityIdentifier setSourceNluComponent:](v5, "setSourceNluComponent:", [v10 intValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"backingAppBundleType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntityIdentifier setBackingAppBundleType:](v5, "setBackingAppBundleType:", [v11 intValue]);
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"groupIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntityIdentifier setGroupIndex:](v5, "setGroupIndex:", [v12 unsignedIntValue]);
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"interpretationGroup"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[USOSchemaUSOEntityIdentifier setInterpretationGroup:](v5, "setInterpretationGroup:", [v13 unsignedIntValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (USOSchemaUSOEntityIdentifier)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(USOSchemaUSOEntityIdentifier *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(USOSchemaUSOEntityIdentifier *)self dictionaryRepresentation];
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
    v5 = [(USOSchemaUSOEntityIdentifier *)self backingAppBundleType]- 1;
    if (v5 > 0x18)
    {
      v6 = @"USOBACKINGAPPBUNDLETYPE_UNKNOWN";
    }

    else
    {
      v6 = off_1E78E8A28[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"backingAppBundleType"];
    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntityIdentifier groupIndex](self, "groupIndex")}];
    [dictionary setObject:v7 forKeyedSubscript:@"groupIndex"];
  }

  if (self->_identifierNamespace)
  {
    identifierNamespace = [(USOSchemaUSOEntityIdentifier *)self identifierNamespace];
    v9 = [identifierNamespace copy];
    [dictionary setObject:v9 forKeyedSubscript:@"identifierNamespace"];
  }

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntityIdentifier interpretationGroup](self, "interpretationGroup")}];
    [dictionary setObject:v11 forKeyedSubscript:@"interpretationGroup"];

    v10 = self->_has;
    if ((v10 & 1) == 0)
    {
LABEL_12:
      if ((v10 & 2) == 0)
      {
        goto LABEL_13;
      }

LABEL_17:
      v13 = MEMORY[0x1E696AD98];
      [(USOSchemaUSOEntityIdentifier *)self probability];
      v14 = [v13 numberWithDouble:?];
      [dictionary setObject:v14 forKeyedSubscript:@"probability"];

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_22;
      }

LABEL_18:
      v15 = [(USOSchemaUSOEntityIdentifier *)self sourceNluComponent]- 1;
      if (v15 > 6)
      {
        v16 = @"USOENTITYIDENTIFIERNLUCOMPONENT_UNKNOWN";
      }

      else
      {
        v16 = off_1E78E8AF0[v15];
      }

      [dictionary setObject:v16 forKeyedSubscript:@"sourceNluComponent"];
      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[USOSchemaUSOEntityIdentifier nodeIndex](self, "nodeIndex")}];
  [dictionary setObject:v12 forKeyedSubscript:@"nodeIndex"];

  v10 = self->_has;
  if ((v10 & 2) != 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  if ((v10 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

  v4 = [(NSString *)self->_identifierNamespace hash];
  if ((*&self->_has & 2) != 0)
  {
    probability = self->_probability;
    if (probability < 0.0)
    {
      probability = -probability;
    }

    *v5.i64 = floor(probability + 0.5);
    v9 = (probability - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_sourceNluComponent;
    if ((*&self->_has & 8) != 0)
    {
LABEL_14:
      v12 = 2654435761 * self->_backingAppBundleType;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_15;
      }

LABEL_19:
      v13 = 0;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      v14 = 0;
      return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13 ^ v14;
    }
  }

  else
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_14;
    }
  }

  v12 = 0;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  v13 = 2654435761 * self->_groupIndex;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  v14 = 2654435761 * self->_interpretationGroup;
  return v4 ^ v3 ^ v7 ^ v11 ^ v12 ^ v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_31;
  }

  if ((*&self->_has & 1) != (equalCopy[48] & 1))
  {
    goto LABEL_31;
  }

  if (*&self->_has)
  {
    nodeIndex = self->_nodeIndex;
    if (nodeIndex != [equalCopy nodeIndex])
    {
      goto LABEL_31;
    }
  }

  identifierNamespace = [(USOSchemaUSOEntityIdentifier *)self identifierNamespace];
  identifierNamespace2 = [equalCopy identifierNamespace];
  v8 = identifierNamespace2;
  if ((identifierNamespace != 0) == (identifierNamespace2 == 0))
  {

    goto LABEL_31;
  }

  identifierNamespace3 = [(USOSchemaUSOEntityIdentifier *)self identifierNamespace];
  if (identifierNamespace3)
  {
    v10 = identifierNamespace3;
    identifierNamespace4 = [(USOSchemaUSOEntityIdentifier *)self identifierNamespace];
    identifierNamespace5 = [equalCopy identifierNamespace];
    v13 = [identifierNamespace4 isEqual:identifierNamespace5];

    if (!v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
  }

  has = self->_has;
  v15 = (*&has >> 1) & 1;
  v16 = equalCopy[48];
  if (v15 != ((v16 >> 1) & 1))
  {
LABEL_31:
    v27 = 0;
    goto LABEL_32;
  }

  if (v15)
  {
    probability = self->_probability;
    [equalCopy probability];
    if (probability != v18)
    {
      goto LABEL_31;
    }

    has = self->_has;
    v16 = equalCopy[48];
  }

  v19 = (*&has >> 2) & 1;
  if (v19 != ((v16 >> 2) & 1))
  {
    goto LABEL_31;
  }

  if (v19)
  {
    sourceNluComponent = self->_sourceNluComponent;
    if (sourceNluComponent != [equalCopy sourceNluComponent])
    {
      goto LABEL_31;
    }

    has = self->_has;
    v16 = equalCopy[48];
  }

  v21 = (*&has >> 3) & 1;
  if (v21 != ((v16 >> 3) & 1))
  {
    goto LABEL_31;
  }

  if (v21)
  {
    backingAppBundleType = self->_backingAppBundleType;
    if (backingAppBundleType != [equalCopy backingAppBundleType])
    {
      goto LABEL_31;
    }

    has = self->_has;
    v16 = equalCopy[48];
  }

  v23 = (*&has >> 4) & 1;
  if (v23 != ((v16 >> 4) & 1))
  {
    goto LABEL_31;
  }

  if (v23)
  {
    groupIndex = self->_groupIndex;
    if (groupIndex == [equalCopy groupIndex])
    {
      has = self->_has;
      v16 = equalCopy[48];
      goto LABEL_27;
    }

    goto LABEL_31;
  }

LABEL_27:
  v25 = (*&has >> 5) & 1;
  if (v25 != ((v16 >> 5) & 1))
  {
    goto LABEL_31;
  }

  if (v25)
  {
    interpretationGroup = self->_interpretationGroup;
    if (interpretationGroup != [equalCopy interpretationGroup])
    {
      goto LABEL_31;
    }
  }

  v27 = 1;
LABEL_32:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  identifierNamespace = [(USOSchemaUSOEntityIdentifier *)self identifierNamespace];

  if (identifierNamespace)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_8:
    if ((has & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_9:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_10:
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
}

- (void)setHasInterpretationGroup:(BOOL)group
{
  if (group)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasGroupIndex:(BOOL)index
{
  if (index)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasBackingAppBundleType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSourceNluComponent:(BOOL)component
{
  if (component)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasProbability:(BOOL)probability
{
  if (probability)
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