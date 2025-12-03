@interface NLXSchemaMARRSMentionDetectorEnded
- (BOOL)isEqual:(id)equal;
- (NLXSchemaMARRSMentionDetectorEnded)initWithDictionary:(id)dictionary;
- (NLXSchemaMARRSMentionDetectorEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)addMentionDetectorSpans:(id)spans;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaMARRSMentionDetectorEnded

- (NLXSchemaMARRSMentionDetectorEnded)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = NLXSchemaMARRSMentionDetectorEnded;
  v5 = [(NLXSchemaMARRSMentionDetectorEnded *)&v23 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"mentionDetectorSpans"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v20;
        do
        {
          v11 = 0;
          do
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v19 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [NLXSchemaCDMMatchingSpan alloc];
              v14 = [(NLXSchemaCDMMatchingSpan *)v13 initWithDictionary:v12, v19];
              [(NLXSchemaMARRSMentionDetectorEnded *)v5 addMentionDetectorSpans:v14];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v9);
      }
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:{@"linkId", v19}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [[SISchemaUUID alloc] initWithDictionary:v15];
      [(NLXSchemaMARRSMentionDetectorEnded *)v5 setLinkId:v16];
    }

    v17 = v5;
  }

  return v5;
}

- (NLXSchemaMARRSMentionDetectorEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaMARRSMentionDetectorEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaMARRSMentionDetectorEnded *)self dictionaryRepresentation];
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
  v21 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_linkId)
  {
    linkId = [(NLXSchemaMARRSMentionDetectorEnded *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if ([(NSArray *)self->_mentionDetectorSpans count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_mentionDetectorSpans;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation2 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation2)
          {
            [array addObject:dictionaryRepresentation2];
          }

          else
          {
            null2 = [MEMORY[0x1E695DFB0] null];
            [array addObject:null2];
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:array forKeyedSubscript:@"mentionDetectorSpans"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v16];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  mentionDetectorSpans = [(NLXSchemaMARRSMentionDetectorEnded *)self mentionDetectorSpans];
  mentionDetectorSpans2 = [equalCopy mentionDetectorSpans];
  if ((mentionDetectorSpans != 0) == (mentionDetectorSpans2 == 0))
  {
    goto LABEL_11;
  }

  mentionDetectorSpans3 = [(NLXSchemaMARRSMentionDetectorEnded *)self mentionDetectorSpans];
  if (mentionDetectorSpans3)
  {
    v8 = mentionDetectorSpans3;
    mentionDetectorSpans4 = [(NLXSchemaMARRSMentionDetectorEnded *)self mentionDetectorSpans];
    mentionDetectorSpans5 = [equalCopy mentionDetectorSpans];
    v11 = [mentionDetectorSpans4 isEqual:mentionDetectorSpans5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  mentionDetectorSpans = [(NLXSchemaMARRSMentionDetectorEnded *)self linkId];
  mentionDetectorSpans2 = [equalCopy linkId];
  if ((mentionDetectorSpans != 0) != (mentionDetectorSpans2 == 0))
  {
    linkId = [(NLXSchemaMARRSMentionDetectorEnded *)self linkId];
    if (!linkId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = linkId;
    linkId2 = [(NLXSchemaMARRSMentionDetectorEnded *)self linkId];
    linkId3 = [equalCopy linkId];
    v16 = [linkId2 isEqual:linkId3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_mentionDetectorSpans;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  linkId = [(NLXSchemaMARRSMentionDetectorEnded *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaMARRSMentionDetectorEnded *)self linkId];
    PBDataWriterWriteSubmessage();
  }
}

- (void)addMentionDetectorSpans:(id)spans
{
  spansCopy = spans;
  mentionDetectorSpans = self->_mentionDetectorSpans;
  v8 = spansCopy;
  if (!mentionDetectorSpans)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_mentionDetectorSpans;
    self->_mentionDetectorSpans = array;

    spansCopy = v8;
    mentionDetectorSpans = self->_mentionDetectorSpans;
  }

  [(NSArray *)mentionDetectorSpans addObject:spansCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v11.receiver = self;
  v11.super_class = NLXSchemaMARRSMentionDetectorEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v11 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(NLXSchemaMARRSMentionDetectorEnded *)self mentionDetectorSpans:v11.receiver];
  v7 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v6 underConditions:policyCopy];
  [(NLXSchemaMARRSMentionDetectorEnded *)self setMentionDetectorSpans:v7];

  linkId = [(NLXSchemaMARRSMentionDetectorEnded *)self linkId];
  v9 = [linkId applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v9 suppressMessage];
  if (policyCopy)
  {
    [(NLXSchemaMARRSMentionDetectorEnded *)self deleteLinkId];
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