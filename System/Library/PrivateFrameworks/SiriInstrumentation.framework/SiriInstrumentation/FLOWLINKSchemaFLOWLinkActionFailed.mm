@interface FLOWLINKSchemaFLOWLinkActionFailed
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLinkActionFailed)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLinkActionFailed)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLinkActionFailed

- (FLOWLINKSchemaFLOWLinkActionFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FLOWLINKSchemaFLOWLinkActionFailed;
  v5 = [(FLOWLINKSchemaFLOWLinkActionFailed *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLinkActionFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLinkActionFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLinkActionFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLinkActionFailed *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    reason = [(FLOWLINKSchemaFLOWLinkActionFailed *)self reason];
    v5 = @"FLOWLINKEXECUTIONERROR_UNKNOWN";
    if (reason > 2003)
    {
      v6 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_CUSTOM_DIALOG";
      v11 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_CLIENT_CANCELLED";
      if (reason != 2010)
      {
        v11 = @"FLOWLINKEXECUTIONERROR_UNKNOWN";
      }

      if (reason != 2009)
      {
        v6 = v11;
      }

      v12 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_USER_CANCELLED";
      v13 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNRESOLVED_PARAMETER";
      if (reason != 2008)
      {
        v13 = @"FLOWLINKEXECUTIONERROR_UNKNOWN";
      }

      if (reason != 2007)
      {
        v12 = v13;
      }

      if (reason <= 2008)
      {
        v6 = v12;
      }

      if (reason == 2006)
      {
        v5 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_NO_CONTEXT";
      }

      if (reason == 2005)
      {
        v5 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_NON_OPTIONAL_PARAMETER_IS_NIL";
      }

      if (reason == 2004)
      {
        v5 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNSUPPORTED_VALUE_TYPE";
      }

      v10 = reason <= 2006;
    }

    else
    {
      v6 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_ACTION_NOT_FOUND";
      v7 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNDEFINED_PARAMETER";
      if (reason != 2003)
      {
        v7 = @"FLOWLINKEXECUTIONERROR_UNKNOWN";
      }

      if (reason != 2002)
      {
        v6 = v7;
      }

      v8 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_UNKNOWN";
      v9 = @"FLOWLINKEXECUTIONERROR_LNPERFORMACTIONERRORCODE_MALFORMED_ACTION";
      if (reason != 2001)
      {
        v9 = @"FLOWLINKEXECUTIONERROR_UNKNOWN";
      }

      if (reason != 2000)
      {
        v8 = v9;
      }

      if (reason <= 2001)
      {
        v6 = v8;
      }

      if (reason == 3)
      {
        v5 = @"FLOWLINKEXECUTIONERROR_TARGET_BUNDLE_ERROR";
      }

      if (reason == 2)
      {
        v5 = @"FLOWLINKEXECUTIONERROR_DIALOG_GENERATION_ERROR";
      }

      if (reason == 1)
      {
        v5 = @"FLOWLINKEXECUTIONERROR_LINK_PLUGIN_ERROR";
      }

      v10 = reason <= 1999;
    }

    if (v10)
    {
      v14 = v5;
    }

    else
    {
      v14 = v6;
    }

    [dictionary setObject:v14 forKeyedSubscript:@"reason"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_reason;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (equalCopy[12] & 1))
    {
      if ((*&self->_has & 1) == 0 || (reason = self->_reason, reason == [equalCopy reason]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end