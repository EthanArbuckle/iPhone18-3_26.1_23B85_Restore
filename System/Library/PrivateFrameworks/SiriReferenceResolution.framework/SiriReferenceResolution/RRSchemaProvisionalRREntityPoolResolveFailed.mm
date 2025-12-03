@interface RRSchemaProvisionalRREntityPoolResolveFailed
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRREntityPoolResolveFailed)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRREntityPoolResolveFailed)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRREntityPoolResolveFailed

- (RRSchemaProvisionalRREntityPoolResolveFailed)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = RRSchemaProvisionalRREntityPoolResolveFailed;
  v5 = [(RRSchemaProvisionalRREntityPoolResolveFailed *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRREntityPoolResolveFailed setReason:](v5, "setReason:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (RRSchemaProvisionalRREntityPoolResolveFailed)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRREntityPoolResolveFailed *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRREntityPoolResolveFailed *)self dictionaryRepresentation];
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
    v4 = [(RRSchemaProvisionalRREntityPoolResolveFailed *)self reason]- 1;
    if (v4 > 2)
    {
      v5 = @"RRRESOLVEFAILUREREASON_UNKNOWN";
    }

    else
    {
      v5 = off_1E8651DC0[v4];
    }

    [dictionary setObject:v5 forKeyedSubscript:@"reason"];
  }

  [(RRSchemaProvisionalRREntityPoolResolveFailed *)self willProduceDictionaryRepresentation:dictionary];

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
    if ((equalCopy[12] & 1) == (*&self->_has & 1))
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
    reason = self->_reason;
    PBDataWriterWriteInt32Field();
  }
}

@end