@interface _SFPBSportsDetail
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSportsDetail)initWithDictionary:(id)a3;
- (_SFPBSportsDetail)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setRequested_entity_type:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSportsDetail

- (_SFPBSportsDetail)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBSportsDetail;
  v5 = [(_SFPBSportsDetail *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"requestedEntityType"];
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

- (_SFPBSportsDetail)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSportsDetail *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSportsDetail *)self dictionaryRepresentation];
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
  if (self->_requested_entity_type)
  {
    v4 = [(_SFPBSportsDetail *)self requested_entity_type];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"requestedEntityType"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBSportsDetail *)self requested_entity_type];
    v6 = [v4 requested_entity_type];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBSportsDetail *)self requested_entity_type];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBSportsDetail *)self requested_entity_type];
      v11 = [v4 requested_entity_type];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBSportsDetail *)self requested_entity_type];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setRequested_entity_type:(id)a3
{
  v4 = [a3 copy];
  requested_entity_type = self->_requested_entity_type;
  self->_requested_entity_type = v4;

  MEMORY[0x1EEE66BB8]();
}

@end