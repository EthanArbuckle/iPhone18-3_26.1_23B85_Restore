@interface IFTSchemaIFTValue
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTEntityValue)entity;
- (IFTSchemaIFTEnumerationValue)enumeration;
- (IFTSchemaIFTPrimitiveValue)primitive;
- (IFTSchemaIFTQueryValue)query;
- (IFTSchemaIFTValue)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTValue)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteEntity;
- (void)deleteEnumeration;
- (void)deletePrimitive;
- (void)deleteQuery;
- (void)setEntity:(id)entity;
- (void)setEnumeration:(id)enumeration;
- (void)setPrimitive:(id)primitive;
- (void)setQuery:(id)query;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTValue

- (IFTSchemaIFTValue)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTValue;
  v5 = [(IFTSchemaIFTValue *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"primitive"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IFTSchemaIFTPrimitiveValue alloc] initWithDictionary:v6];
      [(IFTSchemaIFTValue *)v5 setPrimitive:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"enumeration"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[IFTSchemaIFTEnumerationValue alloc] initWithDictionary:v8];
      [(IFTSchemaIFTValue *)v5 setEnumeration:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"entity"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[IFTSchemaIFTEntityValue alloc] initWithDictionary:v10];
      [(IFTSchemaIFTValue *)v5 setEntity:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"query"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[IFTSchemaIFTQueryValue alloc] initWithDictionary:v12];
      [(IFTSchemaIFTValue *)v5 setQuery:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTValue)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTValue *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTValue *)self dictionaryRepresentation];
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
  if (self->_entity)
  {
    entity = [(IFTSchemaIFTValue *)self entity];
    dictionaryRepresentation = [entity dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"entity"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"entity"];
    }
  }

  if (self->_enumeration)
  {
    enumeration = [(IFTSchemaIFTValue *)self enumeration];
    dictionaryRepresentation2 = [enumeration dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"enumeration"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"enumeration"];
    }
  }

  if (self->_primitive)
  {
    primitive = [(IFTSchemaIFTValue *)self primitive];
    dictionaryRepresentation3 = [primitive dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"primitive"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"primitive"];
    }
  }

  if (self->_query)
  {
    query = [(IFTSchemaIFTValue *)self query];
    dictionaryRepresentation4 = [query dictionaryRepresentation];
    if (dictionaryRepresentation4)
    {
      [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"query"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null4 forKeyedSubscript:@"query"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(IFTSchemaIFTPrimitiveValue *)self->_primitive hash];
  v4 = [(IFTSchemaIFTEnumerationValue *)self->_enumeration hash]^ v3;
  v5 = [(IFTSchemaIFTEntityValue *)self->_entity hash];
  return v4 ^ v5 ^ [(IFTSchemaIFTQueryValue *)self->_query hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  whichOneof_Value = self->_whichOneof_Value;
  if (whichOneof_Value != [equalCopy whichOneof_Value])
  {
    goto LABEL_23;
  }

  primitive = [(IFTSchemaIFTValue *)self primitive];
  primitive2 = [equalCopy primitive];
  if ((primitive != 0) == (primitive2 == 0))
  {
    goto LABEL_22;
  }

  primitive3 = [(IFTSchemaIFTValue *)self primitive];
  if (primitive3)
  {
    v9 = primitive3;
    primitive4 = [(IFTSchemaIFTValue *)self primitive];
    primitive5 = [equalCopy primitive];
    v12 = [primitive4 isEqual:primitive5];

    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  primitive = [(IFTSchemaIFTValue *)self enumeration];
  primitive2 = [equalCopy enumeration];
  if ((primitive != 0) == (primitive2 == 0))
  {
    goto LABEL_22;
  }

  enumeration = [(IFTSchemaIFTValue *)self enumeration];
  if (enumeration)
  {
    v14 = enumeration;
    enumeration2 = [(IFTSchemaIFTValue *)self enumeration];
    enumeration3 = [equalCopy enumeration];
    v17 = [enumeration2 isEqual:enumeration3];

    if (!v17)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  primitive = [(IFTSchemaIFTValue *)self entity];
  primitive2 = [equalCopy entity];
  if ((primitive != 0) == (primitive2 == 0))
  {
    goto LABEL_22;
  }

  entity = [(IFTSchemaIFTValue *)self entity];
  if (entity)
  {
    v19 = entity;
    entity2 = [(IFTSchemaIFTValue *)self entity];
    entity3 = [equalCopy entity];
    v22 = [entity2 isEqual:entity3];

    if (!v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
  }

  primitive = [(IFTSchemaIFTValue *)self query];
  primitive2 = [equalCopy query];
  if ((primitive != 0) != (primitive2 == 0))
  {
    query = [(IFTSchemaIFTValue *)self query];
    if (!query)
    {

LABEL_26:
      v28 = 1;
      goto LABEL_24;
    }

    v24 = query;
    query2 = [(IFTSchemaIFTValue *)self query];
    query3 = [equalCopy query];
    v27 = [query2 isEqual:query3];

    if (v27)
    {
      goto LABEL_26;
    }
  }

  else
  {
LABEL_22:
  }

LABEL_23:
  v28 = 0;
LABEL_24:

  return v28;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  primitive = [(IFTSchemaIFTValue *)self primitive];

  if (primitive)
  {
    primitive2 = [(IFTSchemaIFTValue *)self primitive];
    PBDataWriterWriteSubmessage();
  }

  enumeration = [(IFTSchemaIFTValue *)self enumeration];

  if (enumeration)
  {
    enumeration2 = [(IFTSchemaIFTValue *)self enumeration];
    PBDataWriterWriteSubmessage();
  }

  entity = [(IFTSchemaIFTValue *)self entity];

  if (entity)
  {
    entity2 = [(IFTSchemaIFTValue *)self entity];
    PBDataWriterWriteSubmessage();
  }

  query = [(IFTSchemaIFTValue *)self query];

  v11 = toCopy;
  if (query)
  {
    query2 = [(IFTSchemaIFTValue *)self query];
    PBDataWriterWriteSubmessage();

    v11 = toCopy;
  }
}

- (void)deleteQuery
{
  if (self->_whichOneof_Value == 4)
  {
    self->_whichOneof_Value = 0;
    self->_query = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTQueryValue)query
{
  if (self->_whichOneof_Value == 4)
  {
    v3 = self->_query;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setQuery:(id)query
{
  queryCopy = query;
  primitive = self->_primitive;
  self->_primitive = 0;

  enumeration = self->_enumeration;
  self->_enumeration = 0;

  entity = self->_entity;
  self->_entity = 0;

  self->_whichOneof_Value = 4 * (queryCopy != 0);
  query = self->_query;
  self->_query = queryCopy;
}

- (void)deleteEntity
{
  if (self->_whichOneof_Value == 3)
  {
    self->_whichOneof_Value = 0;
    self->_entity = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTEntityValue)entity
{
  if (self->_whichOneof_Value == 3)
  {
    v3 = self->_entity;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEntity:(id)entity
{
  entityCopy = entity;
  primitive = self->_primitive;
  self->_primitive = 0;

  enumeration = self->_enumeration;
  self->_enumeration = 0;

  query = self->_query;
  self->_query = 0;

  v8 = 3;
  if (!entityCopy)
  {
    v8 = 0;
  }

  self->_whichOneof_Value = v8;
  entity = self->_entity;
  self->_entity = entityCopy;
}

- (void)deleteEnumeration
{
  if (self->_whichOneof_Value == 2)
  {
    self->_whichOneof_Value = 0;
    self->_enumeration = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTEnumerationValue)enumeration
{
  if (self->_whichOneof_Value == 2)
  {
    v3 = self->_enumeration;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEnumeration:(id)enumeration
{
  enumerationCopy = enumeration;
  primitive = self->_primitive;
  self->_primitive = 0;

  entity = self->_entity;
  self->_entity = 0;

  query = self->_query;
  self->_query = 0;

  self->_whichOneof_Value = 2 * (enumerationCopy != 0);
  enumeration = self->_enumeration;
  self->_enumeration = enumerationCopy;
}

- (void)deletePrimitive
{
  if (self->_whichOneof_Value == 1)
  {
    self->_whichOneof_Value = 0;
    self->_primitive = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTPrimitiveValue)primitive
{
  if (self->_whichOneof_Value == 1)
  {
    v3 = self->_primitive;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setPrimitive:(id)primitive
{
  primitiveCopy = primitive;
  enumeration = self->_enumeration;
  self->_enumeration = 0;

  entity = self->_entity;
  self->_entity = 0;

  query = self->_query;
  self->_query = 0;

  self->_whichOneof_Value = primitiveCopy != 0;
  primitive = self->_primitive;
  self->_primitive = primitiveCopy;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = IFTSchemaIFTValue;
  v5 = [(SISchemaInstrumentationMessage *)&v19 applySensitiveConditionsPolicy:policyCopy];
  primitive = [(IFTSchemaIFTValue *)self primitive];
  v7 = [primitive applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTValue *)self deletePrimitive];
  }

  enumeration = [(IFTSchemaIFTValue *)self enumeration];
  v10 = [enumeration applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(IFTSchemaIFTValue *)self deleteEnumeration];
  }

  entity = [(IFTSchemaIFTValue *)self entity];
  v13 = [entity applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
  {
    [(IFTSchemaIFTValue *)self deleteEntity];
  }

  query = [(IFTSchemaIFTValue *)self query];
  v16 = [query applySensitiveConditionsPolicy:policyCopy];
  suppressMessage4 = [v16 suppressMessage];

  if (suppressMessage4)
  {
    [(IFTSchemaIFTValue *)self deleteQuery];
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