@interface SISchemaUUFRShown
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaGridCardSection)gridCardSection;
- (SISchemaUUFRShown)initWithDictionary:(id)dictionary;
- (SISchemaUUFRShown)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteGridCardSection;
- (void)setGridCardSection:(id)section;
- (void)setHasResponseCategory:(BOOL)category;
- (void)setHasViewRegionDesignation:(BOOL)designation;
- (void)writeTo:(id)to;
@end

@implementation SISchemaUUFRShown

- (SISchemaUUFRShown)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = SISchemaUUFRShown;
  v5 = [(SISchemaUUFRShown *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"viewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaUUFRShown *)v5 setViewID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"snippetClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(SISchemaUUFRShown *)v5 setSnippetClass:v9];
    }

    v32 = v8;
    v10 = [dictionaryCopy objectForKeyedSubscript:@"siriUILocation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRShown setSiriUILocation:](v5, "setSiriUILocation:", [v10 intValue]);
    }

    v31 = v10;
    v11 = [dictionaryCopy objectForKeyedSubscript:@"dialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(SISchemaUUFRShown *)v5 setDialogIdentifier:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"siriResponseContext"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [[SISchemaSiriResponseContext alloc] initWithDictionary:v13];
      [(SISchemaUUFRShown *)v5 setSiriResponseContext:v14];
    }

    v29 = v13;
    v15 = [dictionaryCopy objectForKeyedSubscript:@"aceViewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v15 copy];
      [(SISchemaUUFRShown *)v5 setAceViewID:v16];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:@"aceViewClass"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 copy];
      [(SISchemaUUFRShown *)v5 setAceViewClass:v18];
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"viewRegionDesignation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRShown setViewRegionDesignation:](v5, "setViewRegionDesignation:", [v19 intValue]);
    }

    v30 = v11;
    v33 = v6;
    v20 = [dictionaryCopy objectForKeyedSubscript:@"gridCardSection"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [[SISchemaGridCardSection alloc] initWithDictionary:v20];
      [(SISchemaUUFRShown *)v5 setGridCardSection:v21];
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = [[SISchemaUUID alloc] initWithDictionary:v22];
      [(SISchemaUUFRShown *)v5 setLinkId:v23];
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"responseCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaUUFRShown setResponseCategory:](v5, "setResponseCategory:", [v24 intValue]);
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"subRequestId"];
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

- (SISchemaUUFRShown)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaUUFRShown *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaUUFRShown *)self dictionaryRepresentation];
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
  if (self->_aceViewClass)
  {
    aceViewClass = [(SISchemaUUFRShown *)self aceViewClass];
    v5 = [aceViewClass copy];
    [dictionary setObject:v5 forKeyedSubscript:@"aceViewClass"];
  }

  if (self->_aceViewID)
  {
    aceViewID = [(SISchemaUUFRShown *)self aceViewID];
    v7 = [aceViewID copy];
    [dictionary setObject:v7 forKeyedSubscript:@"aceViewID"];
  }

  if (self->_dialogIdentifier)
  {
    dialogIdentifier = [(SISchemaUUFRShown *)self dialogIdentifier];
    v9 = [dialogIdentifier copy];
    [dictionary setObject:v9 forKeyedSubscript:@"dialogIdentifier"];
  }

  if (self->_gridCardSection)
  {
    gridCardSection = [(SISchemaUUFRShown *)self gridCardSection];
    dictionaryRepresentation = [gridCardSection dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"gridCardSection"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"gridCardSection"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(SISchemaUUFRShown *)self linkId];
    dictionaryRepresentation2 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkId"];
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

    [dictionary setObject:v17 forKeyedSubscript:@"responseCategory"];
  }

  if (self->_siriResponseContext)
  {
    siriResponseContext = [(SISchemaUUFRShown *)self siriResponseContext];
    dictionaryRepresentation3 = [siriResponseContext dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"siriResponseContext"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"siriResponseContext"];
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

    [dictionary setObject:v22 forKeyedSubscript:@"siriUILocation"];
  }

  if (self->_snippetClass)
  {
    snippetClass = [(SISchemaUUFRShown *)self snippetClass];
    v24 = [snippetClass copy];
    [dictionary setObject:v24 forKeyedSubscript:@"snippetClass"];
  }

  if (self->_subRequestId)
  {
    subRequestId = [(SISchemaUUFRShown *)self subRequestId];
    dictionaryRepresentation4 = [subRequestId dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"subRequestId"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"subRequestId"];
    }
  }

  if (self->_viewID)
  {
    viewID = [(SISchemaUUFRShown *)self viewID];
    v29 = [viewID copy];
    [dictionary setObject:v29 forKeyedSubscript:@"viewID"];
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

    [dictionary setObject:v31 forKeyedSubscript:@"viewRegionDesignation"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_57;
  }

  whichSubsection = self->_whichSubsection;
  if (whichSubsection != [equalCopy whichSubsection])
  {
    goto LABEL_57;
  }

  viewID = [(SISchemaUUFRShown *)self viewID];
  viewID2 = [equalCopy viewID];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  viewID3 = [(SISchemaUUFRShown *)self viewID];
  if (viewID3)
  {
    v9 = viewID3;
    viewID4 = [(SISchemaUUFRShown *)self viewID];
    viewID5 = [equalCopy viewID];
    v12 = [viewID4 isEqual:viewID5];

    if (!v12)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  viewID = [(SISchemaUUFRShown *)self snippetClass];
  viewID2 = [equalCopy snippetClass];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  snippetClass = [(SISchemaUUFRShown *)self snippetClass];
  if (snippetClass)
  {
    v14 = snippetClass;
    snippetClass2 = [(SISchemaUUFRShown *)self snippetClass];
    snippetClass3 = [equalCopy snippetClass];
    v17 = [snippetClass2 isEqual:snippetClass3];

    if (!v17)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[104] & 1))
  {
    goto LABEL_57;
  }

  if (*&self->_has)
  {
    siriUILocation = self->_siriUILocation;
    if (siriUILocation != [equalCopy siriUILocation])
    {
      goto LABEL_57;
    }
  }

  viewID = [(SISchemaUUFRShown *)self dialogIdentifier];
  viewID2 = [equalCopy dialogIdentifier];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  dialogIdentifier = [(SISchemaUUFRShown *)self dialogIdentifier];
  if (dialogIdentifier)
  {
    v20 = dialogIdentifier;
    dialogIdentifier2 = [(SISchemaUUFRShown *)self dialogIdentifier];
    dialogIdentifier3 = [equalCopy dialogIdentifier];
    v23 = [dialogIdentifier2 isEqual:dialogIdentifier3];

    if (!v23)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  viewID = [(SISchemaUUFRShown *)self siriResponseContext];
  viewID2 = [equalCopy siriResponseContext];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  siriResponseContext = [(SISchemaUUFRShown *)self siriResponseContext];
  if (siriResponseContext)
  {
    v25 = siriResponseContext;
    siriResponseContext2 = [(SISchemaUUFRShown *)self siriResponseContext];
    siriResponseContext3 = [equalCopy siriResponseContext];
    v28 = [siriResponseContext2 isEqual:siriResponseContext3];

    if (!v28)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  viewID = [(SISchemaUUFRShown *)self aceViewID];
  viewID2 = [equalCopy aceViewID];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  aceViewID = [(SISchemaUUFRShown *)self aceViewID];
  if (aceViewID)
  {
    v30 = aceViewID;
    aceViewID2 = [(SISchemaUUFRShown *)self aceViewID];
    aceViewID3 = [equalCopy aceViewID];
    v33 = [aceViewID2 isEqual:aceViewID3];

    if (!v33)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  viewID = [(SISchemaUUFRShown *)self aceViewClass];
  viewID2 = [equalCopy aceViewClass];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  aceViewClass = [(SISchemaUUFRShown *)self aceViewClass];
  if (aceViewClass)
  {
    v35 = aceViewClass;
    aceViewClass2 = [(SISchemaUUFRShown *)self aceViewClass];
    aceViewClass3 = [equalCopy aceViewClass];
    v38 = [aceViewClass2 isEqual:aceViewClass3];

    if (!v38)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v39 = (*&self->_has >> 1) & 1;
  if (v39 != ((equalCopy[104] >> 1) & 1))
  {
    goto LABEL_57;
  }

  if (v39)
  {
    viewRegionDesignation = self->_viewRegionDesignation;
    if (viewRegionDesignation != [equalCopy viewRegionDesignation])
    {
      goto LABEL_57;
    }
  }

  viewID = [(SISchemaUUFRShown *)self gridCardSection];
  viewID2 = [equalCopy gridCardSection];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  gridCardSection = [(SISchemaUUFRShown *)self gridCardSection];
  if (gridCardSection)
  {
    v42 = gridCardSection;
    gridCardSection2 = [(SISchemaUUFRShown *)self gridCardSection];
    gridCardSection3 = [equalCopy gridCardSection];
    v45 = [gridCardSection2 isEqual:gridCardSection3];

    if (!v45)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  viewID = [(SISchemaUUFRShown *)self linkId];
  viewID2 = [equalCopy linkId];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_56;
  }

  linkId = [(SISchemaUUFRShown *)self linkId];
  if (linkId)
  {
    v47 = linkId;
    linkId2 = [(SISchemaUUFRShown *)self linkId];
    linkId3 = [equalCopy linkId];
    v50 = [linkId2 isEqual:linkId3];

    if (!v50)
    {
      goto LABEL_57;
    }
  }

  else
  {
  }

  v51 = (*&self->_has >> 2) & 1;
  if (v51 != ((equalCopy[104] >> 2) & 1))
  {
    goto LABEL_57;
  }

  if (v51)
  {
    responseCategory = self->_responseCategory;
    if (responseCategory != [equalCopy responseCategory])
    {
      goto LABEL_57;
    }
  }

  viewID = [(SISchemaUUFRShown *)self subRequestId];
  viewID2 = [equalCopy subRequestId];
  if ((viewID != 0) != (viewID2 == 0))
  {
    subRequestId = [(SISchemaUUFRShown *)self subRequestId];
    if (!subRequestId)
    {

LABEL_60:
      v58 = 1;
      goto LABEL_58;
    }

    v54 = subRequestId;
    subRequestId2 = [(SISchemaUUFRShown *)self subRequestId];
    subRequestId3 = [equalCopy subRequestId];
    v57 = [subRequestId2 isEqual:subRequestId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  viewID = [(SISchemaUUFRShown *)self viewID];

  if (viewID)
  {
    PBDataWriterWriteStringField();
  }

  snippetClass = [(SISchemaUUFRShown *)self snippetClass];

  if (snippetClass)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  dialogIdentifier = [(SISchemaUUFRShown *)self dialogIdentifier];

  if (dialogIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  siriResponseContext = [(SISchemaUUFRShown *)self siriResponseContext];

  if (siriResponseContext)
  {
    siriResponseContext2 = [(SISchemaUUFRShown *)self siriResponseContext];
    PBDataWriterWriteSubmessage();
  }

  aceViewID = [(SISchemaUUFRShown *)self aceViewID];

  if (aceViewID)
  {
    PBDataWriterWriteStringField();
  }

  aceViewClass = [(SISchemaUUFRShown *)self aceViewClass];

  if (aceViewClass)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  gridCardSection = [(SISchemaUUFRShown *)self gridCardSection];

  if (gridCardSection)
  {
    gridCardSection2 = [(SISchemaUUFRShown *)self gridCardSection];
    PBDataWriterWriteSubmessage();
  }

  linkId = [(SISchemaUUFRShown *)self linkId];

  if (linkId)
  {
    linkId2 = [(SISchemaUUFRShown *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  subRequestId = [(SISchemaUUFRShown *)self subRequestId];

  v16 = toCopy;
  if (subRequestId)
  {
    subRequestId2 = [(SISchemaUUFRShown *)self subRequestId];
    PBDataWriterWriteSubmessage();

    v16 = toCopy;
  }
}

- (void)setHasResponseCategory:(BOOL)category
{
  if (category)
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

- (void)setGridCardSection:(id)section
{
  v3 = 9;
  if (!section)
  {
    v3 = 0;
  }

  self->_whichSubsection = v3;
  objc_storeStrong(&self->_gridCardSection, section);
}

- (void)setHasViewRegionDesignation:(BOOL)designation
{
  if (designation)
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
  v19.receiver = self;
  v19.super_class = SISchemaUUFRShown;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:4])
  {
    [(SISchemaUUFRShown *)self deleteDialogIdentifier];
  }

  siriResponseContext = [(SISchemaUUFRShown *)self siriResponseContext];
  v7 = [siriResponseContext applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaUUFRShown *)self deleteSiriResponseContext];
  }

  gridCardSection = [(SISchemaUUFRShown *)self gridCardSection];
  v10 = [gridCardSection applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaUUFRShown *)self deleteGridCardSection];
  }

  linkId = [(SISchemaUUFRShown *)self linkId];
  v13 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(SISchemaUUFRShown *)self deleteLinkId];
  }

  subRequestId = [(SISchemaUUFRShown *)self subRequestId];
  v16 = [subRequestId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
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