@interface _SFPBSportsDetail
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSportsDetail)initWithDictionary:(id)dictionary;
- (_SFPBSportsDetail)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setRequested_entity_type:(id)requested_entity_type;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSportsDetail

- (_SFPBSportsDetail)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBSportsDetail;
  v5 = [(_SFPBSportsDetail *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"requestedEntityType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSportsDetail *)v5 setRequested_entity_type:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBSportsDetail)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSportsDetail *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSportsDetail *)self dictionaryRepresentation];
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
  if (self->_requested_entity_type)
  {
    requested_entity_type = [(_SFPBSportsDetail *)self requested_entity_type];
    v5 = [requested_entity_type copy];
    [dictionary setObject:v5 forKeyedSubscript:@"requestedEntityType"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    requested_entity_type = [(_SFPBSportsDetail *)self requested_entity_type];
    requested_entity_type2 = [equalCopy requested_entity_type];
    v7 = requested_entity_type2;
    if ((requested_entity_type != 0) != (requested_entity_type2 == 0))
    {
      requested_entity_type3 = [(_SFPBSportsDetail *)self requested_entity_type];
      if (!requested_entity_type3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = requested_entity_type3;
      requested_entity_type4 = [(_SFPBSportsDetail *)self requested_entity_type];
      requested_entity_type5 = [equalCopy requested_entity_type];
      v12 = [requested_entity_type4 isEqual:requested_entity_type5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  requested_entity_type = [(_SFPBSportsDetail *)self requested_entity_type];
  if (requested_entity_type)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setRequested_entity_type:(id)requested_entity_type
{
  v4 = [requested_entity_type copy];
  requested_entity_type = self->_requested_entity_type;
  self->_requested_entity_type = v4;

  MEMORY[0x1EEE66BB8]();
}

@end