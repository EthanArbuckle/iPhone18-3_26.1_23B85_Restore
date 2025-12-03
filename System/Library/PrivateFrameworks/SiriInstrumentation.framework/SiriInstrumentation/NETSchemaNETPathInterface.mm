@interface NETSchemaNETPathInterface
- (BOOL)isEqual:(id)equal;
- (NETSchemaNETPathInterface)initWithDictionary:(id)dictionary;
- (NETSchemaNETPathInterface)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIndex:(BOOL)index;
- (void)writeTo:(id)to;
@end

@implementation NETSchemaNETPathInterface

- (NETSchemaNETPathInterface)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = NETSchemaNETPathInterface;
  v5 = [(NETSchemaNETPathInterface *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPathInterface setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(NETSchemaNETPathInterface *)v5 setName:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPathInterface setIndex:](v5, "setIndex:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETPathInterface)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NETSchemaNETPathInterface *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NETSchemaNETPathInterface *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETPathInterface index](self, "index")}];
    [dictionary setObject:v4 forKeyedSubscript:@"index"];
  }

  if (self->_name)
  {
    name = [(NETSchemaNETPathInterface *)self name];
    v6 = [name copy];
    [dictionary setObject:v6 forKeyedSubscript:@"name"];
  }

  if (*&self->_has)
  {
    v7 = [(NETSchemaNETPathInterface *)self type]- 1;
    if (v7 > 3)
    {
      v8 = @"NETPATHTYPE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78DB248[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"type"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_index;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (equalCopy[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type != [equalCopy type])
    {
      goto LABEL_15;
    }
  }

  name = [(NETSchemaNETPathInterface *)self name];
  name2 = [equalCopy name];
  v8 = name2;
  if ((name != 0) == (name2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  name3 = [(NETSchemaNETPathInterface *)self name];
  if (name3)
  {
    v10 = name3;
    name4 = [(NETSchemaNETPathInterface *)self name];
    name5 = [equalCopy name];
    v13 = [name4 isEqual:name5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((equalCopy[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    index = self->_index;
    if (index != [equalCopy index])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  name = [(NETSchemaNETPathInterface *)self name];

  if (name)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasIndex:(BOOL)index
{
  if (index)
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