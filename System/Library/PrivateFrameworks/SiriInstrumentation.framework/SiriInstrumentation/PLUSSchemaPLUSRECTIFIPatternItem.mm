@interface PLUSSchemaPLUSRECTIFIPatternItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSString)cdmMatchingSpanLabel;
- (NSString)uufrSaidDialogIdentifier;
- (PLUSSchemaPLUSRECTIFIPatternItem)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSRECTIFIPatternItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCdmMatchingSpanLabel;
- (void)deleteUufrSaidDialogIdentifier;
- (void)setCdmMatchingSpanLabel:(id)label;
- (void)setHasItemType:(BOOL)type;
- (void)setHasRelativeTimestampInMs:(BOOL)ms;
- (void)setUufrSaidDialogIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSRECTIFIPatternItem

- (PLUSSchemaPLUSRECTIFIPatternItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PLUSSchemaPLUSRECTIFIPatternItem;
  v5 = [(PLUSSchemaPLUSRECTIFIPatternItem *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"itemSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternItem setItemSource:](v5, "setItemSource:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"itemType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternItem setItemType:](v5, "setItemType:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"relativeTimestampInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternItem setRelativeTimestampInMs:](v5, "setRelativeTimestampInMs:", [v8 unsignedLongLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"cdmMatchingSpanLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PLUSSchemaPLUSRECTIFIPatternItem *)v5 setCdmMatchingSpanLabel:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"uufrSaidDialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PLUSSchemaPLUSRECTIFIPatternItem *)v5 setUufrSaidDialogIdentifier:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"itemDomainName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(PLUSSchemaPLUSRECTIFIPatternItem *)v5 setItemDomainName:v14];
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"itemPayload"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(PLUSSchemaPLUSRECTIFIPatternItem *)v5 setItemPayload:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSRECTIFIPatternItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSRECTIFIPatternItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSRECTIFIPatternItem *)self dictionaryRepresentation];
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
  if (self->_cdmMatchingSpanLabel)
  {
    cdmMatchingSpanLabel = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
    v5 = [cdmMatchingSpanLabel copy];
    [dictionary setObject:v5 forKeyedSubscript:@"cdmMatchingSpanLabel"];
  }

  if (self->_itemDomainName)
  {
    itemDomainName = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
    v7 = [itemDomainName copy];
    [dictionary setObject:v7 forKeyedSubscript:@"itemDomainName"];
  }

  if (self->_itemPayload)
  {
    itemPayload = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
    v9 = [itemPayload copy];
    [dictionary setObject:v9 forKeyedSubscript:@"itemPayload"];
  }

  has = self->_has;
  if (has)
  {
    itemSource = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemSource];
    v16 = @"PLUSRECTIFIPATTERNITEMSOURCE_UNKNOWN";
    if (itemSource == 1)
    {
      v16 = @"PLUSRECTIFIPATTERNITEMSOURCE_SIRI";
    }

    if (itemSource == 2)
    {
      v17 = @"PLUSRECTIFIPATTERNITEMSOURCE_APP";
    }

    else
    {
      v17 = v16;
    }

    [dictionary setObject:v17 forKeyedSubscript:@"itemSource"];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_9:
      if ((has & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

  v18 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemType]- 1;
  if (v18 > 6)
  {
    v19 = @"PLUSRECTIFIPATTERNITEMTYPE_UNKNOWN";
  }

  else
  {
    v19 = off_1E78E0970[v18];
  }

  [dictionary setObject:v19 forKeyedSubscript:@"itemType"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLUSSchemaPLUSRECTIFIPatternItem relativeTimestampInMs](self, "relativeTimestampInMs")}];
    [dictionary setObject:v11 forKeyedSubscript:@"relativeTimestampInMs"];
  }

LABEL_11:
  if (self->_uufrSaidDialogIdentifier)
  {
    uufrSaidDialogIdentifier = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
    v13 = [uufrSaidDialogIdentifier copy];
    [dictionary setObject:v13 forKeyedSubscript:@"uufrSaidDialogIdentifier"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_itemSource;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_itemType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761u * self->_relativeTimestampInMs;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_cdmMatchingSpanLabel hash];
  v7 = [(NSString *)self->_uufrSaidDialogIdentifier hash];
  v8 = v6 ^ v7 ^ [(NSString *)self->_itemDomainName hash];
  return v8 ^ [(NSString *)self->_itemPayload hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  whichPatternitemcontent = self->_whichPatternitemcontent;
  if (whichPatternitemcontent != [equalCopy whichPatternitemcontent])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v7 = equalCopy[56];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    itemSource = self->_itemSource;
    if (itemSource != [equalCopy itemSource])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v7 = equalCopy[56];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v7 >> 1) & 1))
  {
    if (v9)
    {
      itemType = self->_itemType;
      if (itemType != [equalCopy itemType])
      {
        goto LABEL_34;
      }

      has = self->_has;
      v7 = equalCopy[56];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 != ((v7 >> 2) & 1))
    {
      goto LABEL_34;
    }

    if (v11)
    {
      relativeTimestampInMs = self->_relativeTimestampInMs;
      if (relativeTimestampInMs != [equalCopy relativeTimestampInMs])
      {
        goto LABEL_34;
      }
    }

    cdmMatchingSpanLabel = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
    cdmMatchingSpanLabel2 = [equalCopy cdmMatchingSpanLabel];
    if ((cdmMatchingSpanLabel != 0) == (cdmMatchingSpanLabel2 == 0))
    {
      goto LABEL_33;
    }

    cdmMatchingSpanLabel3 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
    if (cdmMatchingSpanLabel3)
    {
      v16 = cdmMatchingSpanLabel3;
      cdmMatchingSpanLabel4 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
      cdmMatchingSpanLabel5 = [equalCopy cdmMatchingSpanLabel];
      v19 = [cdmMatchingSpanLabel4 isEqual:cdmMatchingSpanLabel5];

      if (!v19)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    cdmMatchingSpanLabel = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
    cdmMatchingSpanLabel2 = [equalCopy uufrSaidDialogIdentifier];
    if ((cdmMatchingSpanLabel != 0) == (cdmMatchingSpanLabel2 == 0))
    {
      goto LABEL_33;
    }

    uufrSaidDialogIdentifier = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
    if (uufrSaidDialogIdentifier)
    {
      v21 = uufrSaidDialogIdentifier;
      uufrSaidDialogIdentifier2 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
      uufrSaidDialogIdentifier3 = [equalCopy uufrSaidDialogIdentifier];
      v24 = [uufrSaidDialogIdentifier2 isEqual:uufrSaidDialogIdentifier3];

      if (!v24)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    cdmMatchingSpanLabel = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
    cdmMatchingSpanLabel2 = [equalCopy itemDomainName];
    if ((cdmMatchingSpanLabel != 0) == (cdmMatchingSpanLabel2 == 0))
    {
      goto LABEL_33;
    }

    itemDomainName = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
    if (itemDomainName)
    {
      v26 = itemDomainName;
      itemDomainName2 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
      itemDomainName3 = [equalCopy itemDomainName];
      v29 = [itemDomainName2 isEqual:itemDomainName3];

      if (!v29)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    cdmMatchingSpanLabel = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
    cdmMatchingSpanLabel2 = [equalCopy itemPayload];
    if ((cdmMatchingSpanLabel != 0) != (cdmMatchingSpanLabel2 == 0))
    {
      itemPayload = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
      if (!itemPayload)
      {

LABEL_37:
        v35 = 1;
        goto LABEL_35;
      }

      v31 = itemPayload;
      itemPayload2 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
      itemPayload3 = [equalCopy itemPayload];
      v34 = [itemPayload2 isEqual:itemPayload3];

      if (v34)
      {
        goto LABEL_37;
      }
    }

    else
    {
LABEL_33:
    }
  }

LABEL_34:
  v35 = 0;
LABEL_35:

  return v35;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteUint64Field();
  }

LABEL_5:
  cdmMatchingSpanLabel = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];

  if (cdmMatchingSpanLabel)
  {
    PBDataWriterWriteStringField();
  }

  uufrSaidDialogIdentifier = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];

  if (uufrSaidDialogIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  itemDomainName = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];

  if (itemDomainName)
  {
    PBDataWriterWriteStringField();
  }

  itemPayload = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];

  v9 = toCopy;
  if (itemPayload)
  {
    PBDataWriterWriteStringField();
    v9 = toCopy;
  }
}

- (void)deleteUufrSaidDialogIdentifier
{
  if (self->_whichPatternitemcontent == 5)
  {
    self->_whichPatternitemcontent = 0;
    self->_uufrSaidDialogIdentifier = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)uufrSaidDialogIdentifier
{
  if (self->_whichPatternitemcontent == 5)
  {
    v3 = self->_uufrSaidDialogIdentifier;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setUufrSaidDialogIdentifier:(id)identifier
{
  cdmMatchingSpanLabel = self->_cdmMatchingSpanLabel;
  self->_cdmMatchingSpanLabel = 0;
  identifierCopy = identifier;

  v5 = 5;
  if (!identifierCopy)
  {
    v5 = 0;
  }

  self->_whichPatternitemcontent = v5;
  v6 = [identifierCopy copy];
  uufrSaidDialogIdentifier = self->_uufrSaidDialogIdentifier;
  self->_uufrSaidDialogIdentifier = v6;
}

- (void)deleteCdmMatchingSpanLabel
{
  if (self->_whichPatternitemcontent == 4)
  {
    self->_whichPatternitemcontent = 0;
    self->_cdmMatchingSpanLabel = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (NSString)cdmMatchingSpanLabel
{
  if (self->_whichPatternitemcontent == 4)
  {
    v3 = self->_cdmMatchingSpanLabel;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setCdmMatchingSpanLabel:(id)label
{
  uufrSaidDialogIdentifier = self->_uufrSaidDialogIdentifier;
  self->_uufrSaidDialogIdentifier = 0;
  labelCopy = label;

  self->_whichPatternitemcontent = 4 * (labelCopy != 0);
  v5 = [labelCopy copy];
  cdmMatchingSpanLabel = self->_cdmMatchingSpanLabel;
  self->_cdmMatchingSpanLabel = v5;
}

- (void)setHasRelativeTimestampInMs:(BOOL)ms
{
  if (ms)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasItemType:(BOOL)type
{
  if (type)
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