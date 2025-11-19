@interface SISchemaUUFRShown
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (SISchemaGridCardSection)gridCardSection;
- (SISchemaUUFRShown)initWithDictionary:(id)a3;
- (SISchemaUUFRShown)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteGridCardSection;
- (void)setGridCardSection:(id)a3;
- (void)setHasResponseCategory:(BOOL)a3;
- (void)setHasViewRegionDesignation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SISchemaUUFRShown

- (SISchemaUUFRShown)initWithDictionary:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = SISchemaUUFRShown;
  v5 = [(SISchemaUUFRShown *)&v34 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"viewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRShown *)v5 setViewID:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"snippetClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaUUFRShown *)v5 setSnippetClass:v9];
    }

    v32 = v8;
    v10 = [v4 objectForKeyedSubscript:@"siriUILocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRShown setSiriUILocation:](v5, "setSiriUILocation:", [v10 intValue]);
    }

    v31 = v10;
    v11 = [v4 objectForKeyedSubscript:@"dialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaUUFRShown *)v5 setDialogIdentifier:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v13];
      [(SISchemaUUFRShown *)v5 setSiriResponseContext:v14];
    }

    v29 = v13;
    v15 = [v4 objectForKeyedSubscript:@"aceViewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(SISchemaUUFRShown *)v5 setAceViewID:v16];
    }

    v17 = [v4 objectForKeyedSubscript:@"aceViewClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(SISchemaUUFRShown *)v5 setAceViewClass:v18];
    }

    v19 = [v4 objectForKeyedSubscript:@"viewRegionDesignation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRShown setViewRegionDesignation:](v5, "setViewRegionDesignation:", [v19 intValue]);
    }

    v30 = v11;
    v33 = v6;
    v20 = [v4 objectForKeyedSubscript:@"gridCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaGridCardSection alloc] initWithDictionary:v20];
      [(SISchemaUUFRShown *)v5 setGridCardSection:v21];
    }

    v22 = [v4 objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaUUID alloc] initWithDictionary:v22];
      [(SISchemaUUFRShown *)v5 setLinkId:v23];
    }

    v24 = [v4 objectForKeyedSubscript:@"responseCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRShown setResponseCategory:](v5, "setResponseCategory:", [v24 intValue]);
    }

    v25 = [v4 objectForKeyedSubscript:@"subRequestId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [[SISchemaUUID alloc] initWithDictionary:v25];
      [(SISchemaUUFRShown *)v5 setSubRequestId:v26];
    }

    v27 = v5;
  }

  return v5;
}

- (SISchemaUUFRShown)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(SISchemaUUFRShown *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(SISchemaUUFRShown *)self dictionaryRepresentation];
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
  if (self->_aceViewClass)
  {
    v4 = [(SISchemaUUFRShown *)self aceViewClass];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"aceViewClass"];
  }

  if (self->_aceViewID)
  {
    v6 = [(SISchemaUUFRShown *)self aceViewID];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"aceViewID"];
  }

  if (self->_dialogIdentifier)
  {
    v8 = [(SISchemaUUFRShown *)self dialogIdentifier];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"dialogIdentifier"];
  }

  if (self->_gridCardSection)
  {
    v10 = [(SISchemaUUFRShown *)self gridCardSection];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"gridCardSection"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"gridCardSection"];
    }
  }

  if (self->_linkId)
  {
    v13 = [(SISchemaUUFRShown *)self linkId];
    v14 = [v13 dictionaryRepresentation];
    if (v14)
    {
      [v3 setObject:v14 forKeyedSubscript:@"linkId"];
    }

    else
    {
      v15 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v15 forKeyedSubscript:@"linkId"];
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v16 = [(SISchemaUUFRShown *)self responseCategory]- 1;
    if (v16 > 0xD)
    {
      v17 = @"RESPONSECATEGORY_UNKNOWN";
    }

    else
    {
      v17 = off_1E78E6EA8[v16];
    }

    [v3 setObject:v17 forKeyedSubscript:@"responseCategory"];
  }

  if (self->_siriResponseContext)
  {
    v18 = [(SISchemaUUFRShown *)self siriResponseContext];
    v19 = [v18 dictionaryRepresentation];
    if (v19)
    {
      [v3 setObject:v19 forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      v20 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v20 forKeyedSubscript:@"siriResponseContext"];
    }
  }

  if (*&self->_has)
  {
    v21 = [(SISchemaUUFRShown *)self siriUILocation]- 1;
    if (v21 > 2)
    {
      v22 = @"SIRIUILOCATION_UNKNOWN_SIRI_UI_LOCATION";
    }

    else
    {
      v22 = off_1E78E6F18[v21];
    }

    [v3 setObject:v22 forKeyedSubscript:@"siriUILocation"];
  }

  if (self->_snippetClass)
  {
    v23 = [(SISchemaUUFRShown *)self snippetClass];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"snippetClass"];
  }

  if (self->_subRequestId)
  {
    v25 = [(SISchemaUUFRShown *)self subRequestId];
    v26 = [v25 dictionaryRepresentation];
    if (v26)
    {
      [v3 setObject:v26 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v27 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_viewID)
  {
    v28 = [(SISchemaUUFRShown *)self viewID];
    v29 = [v28 copy];
    [v3 setObject:v29 forKeyedSubscript:@"viewID"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v30 = [(SISchemaUUFRShown *)self viewRegionDesignation]- 1;
    if (v30 > 2)
    {
      v31 = @"VIEWREGIONDESIGNATION_UNKNOWN_VIEW_REGION";
    }

    else
    {
      v31 = off_1E78E6F30[v30];
    }

    [v3 setObject:v31 forKeyedSubscript:@"viewRegionDesignation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v15 = [(NSString *)self->_viewID hash];
  v13 = [(NSString *)self->_snippetClass hash];
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_siriUILocation;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_dialogIdentifier hash];
  v5 = [(SISchemaSiriResponseContext *)self->_siriResponseContext hash];
  v6 = [(NSString *)self->_aceViewID hash];
  v7 = [(NSString *)self->_aceViewClass hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_viewRegionDesignation;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(SISchemaGridCardSection *)self->_gridCardSection hash];
  v10 = [(SISchemaUUID *)self->_linkId hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_responseCategory;
  }

  else
  {
    v11 = 0;
  }

  return v14 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(SISchemaUUID *)self->_subRequestId hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  whichSubsection = self->_whichSubsection;
  if (whichSubsection != [v4 whichSubsection])
  {
    goto LABEL_57;
  }

  v6 = [(SISchemaUUFRShown *)self viewID];
  v7 = [v4 viewID];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v8 = [(SISchemaUUFRShown *)self viewID];
  if (v8)
  {
    v9 = v8;
    v10 = [(SISchemaUUFRShown *)self viewID];
    v11 = [v4 viewID];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUUFRShown *)self snippetClass];
  v7 = [v4 snippetClass];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v13 = [(SISchemaUUFRShown *)self snippetClass];
  if (v13)
  {
    v14 = v13;
    v15 = [(SISchemaUUFRShown *)self snippetClass];
    v16 = [v4 snippetClass];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[104] & 1))
  {
    goto LABEL_57;
  }

  if (*&self->_has)
  {
    siriUILocation = self->_siriUILocation;
    if (siriUILocation != [v4 siriUILocation])
    {
      goto LABEL_57;
    }
  }

  v6 = [(SISchemaUUFRShown *)self dialogIdentifier];
  v7 = [v4 dialogIdentifier];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v19 = [(SISchemaUUFRShown *)self dialogIdentifier];
  if (v19)
  {
    v20 = v19;
    v21 = [(SISchemaUUFRShown *)self dialogIdentifier];
    v22 = [v4 dialogIdentifier];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUUFRShown *)self siriResponseContext];
  v7 = [v4 siriResponseContext];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v24 = [(SISchemaUUFRShown *)self siriResponseContext];
  if (v24)
  {
    v25 = v24;
    v26 = [(SISchemaUUFRShown *)self siriResponseContext];
    v27 = [v4 siriResponseContext];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUUFRShown *)self aceViewID];
  v7 = [v4 aceViewID];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v29 = [(SISchemaUUFRShown *)self aceViewID];
  if (v29)
  {
    v30 = v29;
    v31 = [(SISchemaUUFRShown *)self aceViewID];
    v32 = [v4 aceViewID];
    v33 = [v31 isEqual:v32];

    if (!v33)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUUFRShown *)self aceViewClass];
  v7 = [v4 aceViewClass];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v34 = [(SISchemaUUFRShown *)self aceViewClass];
  if (v34)
  {
    v35 = v34;
    v36 = [(SISchemaUUFRShown *)self aceViewClass];
    v37 = [v4 aceViewClass];
    v38 = [v36 isEqual:v37];

    if (!v38)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v39 = (*&self->_has >> 1) & 1;
  if (v39 != ((v4[104] >> 1) & 1))
  {
    goto LABEL_57;
  }

  if (v39)
  {
    viewRegionDesignation = self->_viewRegionDesignation;
    if (viewRegionDesignation != [v4 viewRegionDesignation])
    {
      goto LABEL_57;
    }
  }

  v6 = [(SISchemaUUFRShown *)self gridCardSection];
  v7 = [v4 gridCardSection];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v41 = [(SISchemaUUFRShown *)self gridCardSection];
  if (v41)
  {
    v42 = v41;
    v43 = [(SISchemaUUFRShown *)self gridCardSection];
    v44 = [v4 gridCardSection];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v6 = [(SISchemaUUFRShown *)self linkId];
  v7 = [v4 linkId];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_56;
  }

  v46 = [(SISchemaUUFRShown *)self linkId];
  if (v46)
  {
    v47 = v46;
    v48 = [(SISchemaUUFRShown *)self linkId];
    v49 = [v4 linkId];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v51 = (*&self->_has >> 2) & 1;
  if (v51 != ((v4[104] >> 2) & 1))
  {
    goto LABEL_57;
  }

  if (v51)
  {
    responseCategory = self->_responseCategory;
    if (responseCategory != [v4 responseCategory])
    {
      goto LABEL_57;
    }
  }

  v6 = [(SISchemaUUFRShown *)self subRequestId];
  v7 = [v4 subRequestId];
  if ((v6 != 0) != (v7 == 0))
  {
    v53 = [(SISchemaUUFRShown *)self subRequestId];
    if (!v53)
    {

LABEL_60:
      v58 = 1;
      goto LABEL_58;
    }

    v54 = v53;
    v55 = [(SISchemaUUFRShown *)self subRequestId];
    v56 = [v4 subRequestId];
    v57 = [v55 isEqual:v56];

    if (v57)
    {
      goto LABEL_60;
    }
  }

  else
  {
LABEL_56:
  }

LABEL_57:
  v58 = 0;
LABEL_58:

  return v58;
}

- (void)writeTo:(id)a3
{
  v18 = a3;
  v4 = [(SISchemaUUFRShown *)self viewID];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(SISchemaUUFRShown *)self snippetClass];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v6 = [(SISchemaUUFRShown *)self dialogIdentifier];

  if (v6)
  {
    PBDataWriterWriteStringField();
  }

  v7 = [(SISchemaUUFRShown *)self siriResponseContext];

  if (v7)
  {
    v8 = [(SISchemaUUFRShown *)self siriResponseContext];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(SISchemaUUFRShown *)self aceViewID];

  if (v9)
  {
    PBDataWriterWriteStringField();
  }

  v10 = [(SISchemaUUFRShown *)self aceViewClass];

  if (v10)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v11 = [(SISchemaUUFRShown *)self gridCardSection];

  if (v11)
  {
    v12 = [(SISchemaUUFRShown *)self gridCardSection];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(SISchemaUUFRShown *)self linkId];

  if (v13)
  {
    v14 = [(SISchemaUUFRShown *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  v15 = [(SISchemaUUFRShown *)self subRequestId];

  v16 = v18;
  if (v15)
  {
    v17 = [(SISchemaUUFRShown *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v16 = v18;
  }
}

- (void)setHasResponseCategory:(BOOL)a3
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

- (void)deleteGridCardSection
{
  if (self->_whichSubsection == 9)
  {
    self->_whichSubsection = 0;
    self->_gridCardSection = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (SISchemaGridCardSection)gridCardSection
{
  if (self->_whichSubsection == 9)
  {
    v3 = self->_gridCardSection;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setGridCardSection:(id)a3
{
  v3 = 9;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichSubsection = v3;
  objc_storeStrong(&self->_gridCardSection, a3);
}

- (void)setHasViewRegionDesignation:(BOOL)a3
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
  v19.receiver = self;
  v19.super_class = SISchemaUUFRShown;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:4])
  {
    [(SISchemaUUFRShown *)self deleteDialogIdentifier];
  }

  v6 = [(SISchemaUUFRShown *)self siriResponseContext];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(SISchemaUUFRShown *)self deleteSiriResponseContext];
  }

  v9 = [(SISchemaUUFRShown *)self gridCardSection];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(SISchemaUUFRShown *)self deleteGridCardSection];
  }

  v12 = [(SISchemaUUFRShown *)self linkId];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(SISchemaUUFRShown *)self deleteLinkId];
  }

  v15 = [(SISchemaUUFRShown *)self subRequestId];
  v16 = [v15 applySensitiveConditionsPolicy:v4];
  v17 = [v16 suppressMessage];

  if (v17)
  {
    [(SISchemaUUFRShown *)self deleteSubRequestId];
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