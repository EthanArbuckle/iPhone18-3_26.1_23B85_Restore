@interface IFPlatformRequestSchemaIFPlatformRequestStarted
- (BOOL)isEqual:(id)equal;
- (IFPlatformRequestSchemaIFPlatformRequestStarted)initWithDictionary:(id)dictionary;
- (IFPlatformRequestSchemaIFPlatformRequestStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformRequestSchemaIFPlatformRequestStarted

- (IFPlatformRequestSchemaIFPlatformRequestStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IFPlatformRequestSchemaIFPlatformRequestStarted;
  v5 = [(IFPlatformRequestSchemaIFPlatformRequestStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifPlatformRequestTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFPlatformRequestSchemaIFPlatformRequestStarted setIfPlatformRequestTarget:](v5, "setIfPlatformRequestTarget:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IFPlatformRequestSchemaIFPlatformRequestStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformRequestSchemaIFPlatformRequestStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformRequestSchemaIFPlatformRequestStarted *)self dictionaryRepresentation];
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
    ifPlatformRequestTarget = [(IFPlatformRequestSchemaIFPlatformRequestStarted *)self ifPlatformRequestTarget];
    v5 = @"IFPLATFORMREQUESTTARGET_UNKNOWN";
    v6 = @"IFPLATFORMREQUESTTARGET_RESPONSE_GENERATION_SERVICE_HANDLE";
    v7 = @"IFPLATFORMTARGET_SESSION_COORDINATOR_ACCEPT";
    if (ifPlatformRequestTarget != 601)
    {
      v7 = @"IFPLATFORMREQUESTTARGET_UNKNOWN";
    }

    if (ifPlatformRequestTarget != 501)
    {
      v6 = v7;
    }

    v8 = @"IFPLATFORMREQUESTTARGET_FULL_PLANNER_SERVICE_HANDLE";
    v9 = @"IFPLATFORMREQUESTTARGET_PLAN_RESOLVER_SERVICE_HANDLE";
    if (ifPlatformRequestTarget != 401)
    {
      v9 = @"IFPLATFORMREQUESTTARGET_UNKNOWN";
    }

    if (ifPlatformRequestTarget != 301)
    {
      v8 = v9;
    }

    if (ifPlatformRequestTarget <= 500)
    {
      v6 = v8;
    }

    v10 = @"IFPLATFORMREQUESTTARGET_QUERY_DECORATION_SERVICE_HANDLE";
    v11 = @"IFPLATFORMREQUESTTARGET_PLAN_OVERRIDES_SERVICE_HANDLE";
    if (ifPlatformRequestTarget != 201)
    {
      v11 = @"IFPLATFORMREQUESTTARGET_UNKNOWN";
    }

    if (ifPlatformRequestTarget != 101)
    {
      v10 = v11;
    }

    if (ifPlatformRequestTarget == 2)
    {
      v5 = @"IFPLATFORMREQUESTTARGET_STANDARD_PLANNER_RUN";
    }

    if (ifPlatformRequestTarget == 1)
    {
      v5 = @"IFPLATFORMREQUESTTARGET_STANDARD_PLANNER_MAKE_PLAN";
    }

    if (ifPlatformRequestTarget > 100)
    {
      v5 = v10;
    }

    if (ifPlatformRequestTarget <= 300)
    {
      v12 = v5;
    }

    else
    {
      v12 = v6;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"ifPlatformRequestTarget"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_ifPlatformRequestTarget;
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
      if ((*&self->_has & 1) == 0 || (ifPlatformRequestTarget = self->_ifPlatformRequestTarget, ifPlatformRequestTarget == [equalCopy ifPlatformRequestTarget]))
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