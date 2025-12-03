@interface MHSchemaMHEndpointerAccessibleContext
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHEndpointerAccessibleContext)initWithDictionary:(id)dictionary;
- (MHSchemaMHEndpointerAccessibleContext)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHEndpointerAccessibleContext

- (MHSchemaMHEndpointerAccessibleContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = MHSchemaMHEndpointerAccessibleContext;
  v5 = [(MHSchemaMHEndpointerAccessibleContext *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"accessibleEndpointerLevel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHEndpointerAccessibleContext setAccessibleEndpointerLevel:](v5, "setAccessibleEndpointerLevel:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (MHSchemaMHEndpointerAccessibleContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHEndpointerAccessibleContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHEndpointerAccessibleContext *)self dictionaryRepresentation];
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
    accessibleEndpointerLevel = [(MHSchemaMHEndpointerAccessibleContext *)self accessibleEndpointerLevel];
    v5 = @"MHENDPOINTERACCESSIBLELEVEL_UNKNOWN";
    if (accessibleEndpointerLevel == 1)
    {
      v5 = @"MHENDPOINTERACCESSIBLELEVEL_EXTENDED";
    }

    if (accessibleEndpointerLevel == 2)
    {
      v6 = @"MHENDPOINTERACCESSIBLELEVEL_MAXIMUM";
    }

    else
    {
      v6 = v5;
    }

    [dictionary setObject:v6 forKeyedSubscript:@"accessibleEndpointerLevel"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_accessibleEndpointerLevel;
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
      if ((*&self->_has & 1) == 0 || (accessibleEndpointerLevel = self->_accessibleEndpointerLevel, accessibleEndpointerLevel == [equalCopy accessibleEndpointerLevel]))
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