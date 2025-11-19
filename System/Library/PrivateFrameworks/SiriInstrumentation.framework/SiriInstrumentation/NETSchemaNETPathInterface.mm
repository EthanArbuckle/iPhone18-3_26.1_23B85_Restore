@interface NETSchemaNETPathInterface
- (BOOL)isEqual:(id)a3;
- (NETSchemaNETPathInterface)initWithDictionary:(id)a3;
- (NETSchemaNETPathInterface)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIndex:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NETSchemaNETPathInterface

- (NETSchemaNETPathInterface)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = NETSchemaNETPathInterface;
  v5 = [(NETSchemaNETPathInterface *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPathInterface setType:](v5, "setType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      [(NETSchemaNETPathInterface *)v5 setName:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"index"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[NETSchemaNETPathInterface setIndex:](v5, "setIndex:", [v9 unsignedIntValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (NETSchemaNETPathInterface)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NETSchemaNETPathInterface *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NETSchemaNETPathInterface *)self dictionaryRepresentation];
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
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[NETSchemaNETPathInterface index](self, "index")}];
    [v3 setObject:v4 forKeyedSubscript:@"index"];
  }

  if (self->_name)
  {
    v5 = [(NETSchemaNETPathInterface *)self name];
    v6 = [v5 copy];
    [v3 setObject:v6 forKeyedSubscript:@"name"];
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

    [v3 setObject:v8 forKeyedSubscript:@"type"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if ((*&self->_has & 1) != (v4[28] & 1))
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    type = self->_type;
    if (type != [v4 type])
    {
      goto LABEL_15;
    }
  }

  v6 = [(NETSchemaNETPathInterface *)self name];
  v7 = [v4 name];
  v8 = v7;
  if ((v6 != 0) == (v7 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  v9 = [(NETSchemaNETPathInterface *)self name];
  if (v9)
  {
    v10 = v9;
    v11 = [(NETSchemaNETPathInterface *)self name];
    v12 = [v4 name];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*&self->_has >> 1) & 1;
  if (v14 != ((v4[28] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    index = self->_index;
    if (index != [v4 index])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(NETSchemaNETPathInterface *)self name];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)setHasIndex:(BOOL)a3
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

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end