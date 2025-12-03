@interface FLOWLINKSchemaFLOWLinkActionCancelled
- (BOOL)isEqual:(id)equal;
- (FLOWLINKSchemaFLOWLinkActionCancelled)initWithDictionary:(id)dictionary;
- (FLOWLINKSchemaFLOWLinkActionCancelled)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation FLOWLINKSchemaFLOWLinkActionCancelled

- (FLOWLINKSchemaFLOWLinkActionCancelled)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = FLOWLINKSchemaFLOWLinkActionCancelled;
  v5 = [(FLOWLINKSchemaFLOWLinkActionCancelled *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"cancellationInitiator"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWLINKSchemaFLOWLinkActionCancelled setCancellationInitiator:](v5, "setCancellationInitiator:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (FLOWLINKSchemaFLOWLinkActionCancelled)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWLINKSchemaFLOWLinkActionCancelled *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWLINKSchemaFLOWLinkActionCancelled *)self dictionaryRepresentation];
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
    cancellationInitiator = [(FLOWLINKSchemaFLOWLinkActionCancelled *)self cancellationInitiator];
    v5 = @"FLOWLINKACTIONCANCELLATIONINITIATOR_UNKNOWN";
    if (cancellationInitiator == 1)
    {
      v5 = @"FLOWLINKACTIONCANCELLATIONINITIATOR_SYSTEM";
    }

    if (cancellationInitiator == 2)
    {
      v6 = @"FLOWLINKACTIONCANCELLATIONINITIATOR_APPLICATION";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"cancellationInitiator"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_cancellationInitiator;
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
      if ((*&self->_has & 1) == 0 || (cancellationInitiator = self->_cancellationInitiator, cancellationInitiator == [equalCopy cancellationInitiator]))
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