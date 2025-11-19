@interface PLUSSchemaPLUSRECTIFIPatternItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSString)cdmMatchingSpanLabel;
- (NSString)uufrSaidDialogIdentifier;
- (PLUSSchemaPLUSRECTIFIPatternItem)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSRECTIFIPatternItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteCdmMatchingSpanLabel;
- (void)deleteUufrSaidDialogIdentifier;
- (void)setCdmMatchingSpanLabel:(id)a3;
- (void)setHasItemType:(BOOL)a3;
- (void)setHasRelativeTimestampInMs:(BOOL)a3;
- (void)setUufrSaidDialogIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSRECTIFIPatternItem

- (PLUSSchemaPLUSRECTIFIPatternItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PLUSSchemaPLUSRECTIFIPatternItem;
  v5 = [(PLUSSchemaPLUSRECTIFIPatternItem *)&v19 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"itemSource"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternItem setItemSource:](v5, "setItemSource:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"itemType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternItem setItemType:](v5, "setItemType:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"relativeTimestampInMs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternItem setRelativeTimestampInMs:](v5, "setRelativeTimestampInMs:", [v8 unsignedLongLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"cdmMatchingSpanLabel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(PLUSSchemaPLUSRECTIFIPatternItem *)v5 setCdmMatchingSpanLabel:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"uufrSaidDialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(PLUSSchemaPLUSRECTIFIPatternItem *)v5 setUufrSaidDialogIdentifier:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"itemDomainName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v13 copy];
      [(PLUSSchemaPLUSRECTIFIPatternItem *)v5 setItemDomainName:v14];
    }

    v15 = [v4 objectForKeyedSubscript:@"itemPayload"];
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

- (PLUSSchemaPLUSRECTIFIPatternItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSRECTIFIPatternItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self dictionaryRepresentation];
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
  if (self->_cdmMatchingSpanLabel)
  {
    v4 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"cdmMatchingSpanLabel"];
  }

  if (self->_itemDomainName)
  {
    v6 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"itemDomainName"];
  }

  if (self->_itemPayload)
  {
    v8 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"itemPayload"];
  }

  has = self->_has;
  if (has)
  {
    v15 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemSource];
    v16 = @"PLUSRECTIFIPATTERNITEMSOURCE_UNKNOWN";
    if (v15 == 1)
    {
      v16 = @"PLUSRECTIFIPATTERNITEMSOURCE_SIRI";
    }

    if (v15 == 2)
    {
      v17 = @"PLUSRECTIFIPATTERNITEMSOURCE_APP";
    }

    else
    {
      v17 = v16;
    }

    [v3 setObject:v17 forKeyedSubscript:@"itemSource"];
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

  [v3 setObject:v19 forKeyedSubscript:@"itemType"];
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[PLUSSchemaPLUSRECTIFIPatternItem relativeTimestampInMs](self, "relativeTimestampInMs")}];
    [v3 setObject:v11 forKeyedSubscript:@"relativeTimestampInMs"];
  }

LABEL_11:
  if (self->_uufrSaidDialogIdentifier)
  {
    v12 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"uufrSaidDialogIdentifier"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_34;
  }

  whichPatternitemcontent = self->_whichPatternitemcontent;
  if (whichPatternitemcontent != [v4 whichPatternitemcontent])
  {
    goto LABEL_34;
  }

  has = self->_has;
  v7 = v4[56];
  if ((*&has & 1) != (v7 & 1))
  {
    goto LABEL_34;
  }

  if (*&has)
  {
    itemSource = self->_itemSource;
    if (itemSource != [v4 itemSource])
    {
      goto LABEL_34;
    }

    has = self->_has;
    v7 = v4[56];
  }

  v9 = (*&has >> 1) & 1;
  if (v9 == ((v7 >> 1) & 1))
  {
    if (v9)
    {
      itemType = self->_itemType;
      if (itemType != [v4 itemType])
      {
        goto LABEL_34;
      }

      has = self->_has;
      v7 = v4[56];
    }

    v11 = (*&has >> 2) & 1;
    if (v11 != ((v7 >> 2) & 1))
    {
      goto LABEL_34;
    }

    if (v11)
    {
      relativeTimestampInMs = self->_relativeTimestampInMs;
      if (relativeTimestampInMs != [v4 relativeTimestampInMs])
      {
        goto LABEL_34;
      }
    }

    v13 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
    v14 = [v4 cdmMatchingSpanLabel];
    if ((v13 != 0) == (v14 == 0))
    {
      goto LABEL_33;
    }

    v15 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
    if (v15)
    {
      v16 = v15;
      v17 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];
      v18 = [v4 cdmMatchingSpanLabel];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v13 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
    v14 = [v4 uufrSaidDialogIdentifier];
    if ((v13 != 0) == (v14 == 0))
    {
      goto LABEL_33;
    }

    v20 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];
      v23 = [v4 uufrSaidDialogIdentifier];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v13 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
    v14 = [v4 itemDomainName];
    if ((v13 != 0) == (v14 == 0))
    {
      goto LABEL_33;
    }

    v25 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
    if (v25)
    {
      v26 = v25;
      v27 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];
      v28 = [v4 itemDomainName];
      v29 = [v27 isEqual:v28];

      if (!v29)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }

    v13 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
    v14 = [v4 itemPayload];
    if ((v13 != 0) != (v14 == 0))
    {
      v30 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
      if (!v30)
      {

LABEL_37:
        v35 = 1;
        goto LABEL_35;
      }

      v31 = v30;
      v32 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];
      v33 = [v4 itemPayload];
      v34 = [v32 isEqual:v33];

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

- (void)writeTo:(id)a3
{
  v10 = a3;
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
  v5 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self cdmMatchingSpanLabel];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self uufrSaidDialogIdentifier];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemDomainName];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(PLUSSchemaPLUSRECTIFIPatternItem *)self itemPayload];

  v9 = v10;
  if (v8)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
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

- (void)setUufrSaidDialogIdentifier:(id)a3
{
  cdmMatchingSpanLabel = self->_cdmMatchingSpanLabel;
  self->_cdmMatchingSpanLabel = 0;
  v8 = a3;

  v5 = 5;
  if (!v8)
  {
    v5 = 0;
  }

  self->_whichPatternitemcontent = v5;
  v6 = [v8 copy];
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

- (void)setCdmMatchingSpanLabel:(id)a3
{
  uufrSaidDialogIdentifier = self->_uufrSaidDialogIdentifier;
  self->_uufrSaidDialogIdentifier = 0;
  v7 = a3;

  self->_whichPatternitemcontent = 4 * (v7 != 0);
  v5 = [v7 copy];
  cdmMatchingSpanLabel = self->_cdmMatchingSpanLabel;
  self->_cdmMatchingSpanLabel = v5;
}

- (void)setHasRelativeTimestampInMs:(BOOL)a3
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

- (void)setHasItemType:(BOOL)a3
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