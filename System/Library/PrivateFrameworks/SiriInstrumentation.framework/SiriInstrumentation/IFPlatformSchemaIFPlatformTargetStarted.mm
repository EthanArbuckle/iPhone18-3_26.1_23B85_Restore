@interface IFPlatformSchemaIFPlatformTargetStarted
- (BOOL)isEqual:(id)equal;
- (IFPlatformSchemaIFPlatformTargetStarted)initWithDictionary:(id)dictionary;
- (IFPlatformSchemaIFPlatformTargetStarted)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation IFPlatformSchemaIFPlatformTargetStarted

- (IFPlatformSchemaIFPlatformTargetStarted)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = IFPlatformSchemaIFPlatformTargetStarted;
  v5 = [(IFPlatformSchemaIFPlatformTargetStarted *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ifPlatformTarget"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFPlatformSchemaIFPlatformTargetStarted setIfPlatformTarget:](v5, "setIfPlatformTarget:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (IFPlatformSchemaIFPlatformTargetStarted)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFPlatformSchemaIFPlatformTargetStarted *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFPlatformSchemaIFPlatformTargetStarted *)self dictionaryRepresentation];
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
    ifPlatformTarget = [(IFPlatformSchemaIFPlatformTargetStarted *)self ifPlatformTarget];
    v5 = @"IFPLATFORMTARGET_UNKNOWN";
    v6 = @"IFPLATFORMTARGET_RESPONSE_GENERATION_SERVICE_SETUP";
    v7 = @"IFPLATFORMTARGET_SESSION_COORDINATOR_ACCEPT";
    if (ifPlatformTarget != 601)
    {
      v7 = @"IFPLATFORMTARGET_UNKNOWN";
    }

    if (ifPlatformTarget != 501)
    {
      v6 = v7;
    }

    v8 = @"IFPLATFORMTARGET_FULL_PLANNER_SERVICE_SETUP";
    v9 = @"IFPLATFORMTARGET_PLAN_RESOLVER_SERVICE_SETUP";
    if (ifPlatformTarget != 401)
    {
      v9 = @"IFPLATFORMTARGET_UNKNOWN";
    }

    if (ifPlatformTarget != 301)
    {
      v8 = v9;
    }

    if (ifPlatformTarget <= 500)
    {
      v6 = v8;
    }

    v10 = @"IFPLATFORMTARGET_QUERY_DECORATION_SERVICE_SETUP";
    v11 = @"IFPLATFORMTARGET_PLAN_OVERRIDES_SERVICE_SETUP";
    if (ifPlatformTarget != 201)
    {
      v11 = @"IFPLATFORMTARGET_UNKNOWN";
    }

    if (ifPlatformTarget != 101)
    {
      v10 = v11;
    }

    if (ifPlatformTarget == 2)
    {
      v5 = @"IFPLATFORMTARGET_STANDARD_PLANNER_SETUP";
    }

    if (ifPlatformTarget == 1)
    {
      v5 = @"IFPLATFORMTARGET_STANDARD_PLANNER_MAKE_PLAN";
    }

    if (ifPlatformTarget > 100)
    {
      v5 = v10;
    }

    if (ifPlatformTarget <= 300)
    {
      v12 = v5;
    }

    else
    {
      v12 = v6;
    }

    [dictionary setObject:v12 forKeyedSubscript:@"ifPlatformTarget"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_ifPlatformTarget;
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
      if ((*&self->_has & 1) == 0 || (ifPlatformTarget = self->_ifPlatformTarget, ifPlatformTarget == [equalCopy ifPlatformTarget]))
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