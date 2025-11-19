@interface TTSSchemaTTSAudioInterface
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (TTSSchemaTTSAudioInterface)initWithDictionary:(id)a3;
- (TTSSchemaTTSAudioInterface)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation TTSSchemaTTSAudioInterface

- (TTSSchemaTTSAudioInterface)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TTSSchemaTTSAudioInterface;
  v5 = [(TTSSchemaTTSAudioInterface *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"vendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(TTSSchemaTTSAudioInterface *)v5 setVendorId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"productId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(TTSSchemaTTSAudioInterface *)v5 setProductId:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (TTSSchemaTTSAudioInterface)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(TTSSchemaTTSAudioInterface *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(TTSSchemaTTSAudioInterface *)self dictionaryRepresentation];
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
  if (self->_productId)
  {
    v4 = [(TTSSchemaTTSAudioInterface *)self productId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"productId"];
  }

  if (self->_vendorId)
  {
    v6 = [(TTSSchemaTTSAudioInterface *)self vendorId];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"vendorId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(TTSSchemaTTSAudioInterface *)self vendorId];
  v6 = [v4 vendorId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(TTSSchemaTTSAudioInterface *)self vendorId];
  if (v7)
  {
    v8 = v7;
    v9 = [(TTSSchemaTTSAudioInterface *)self vendorId];
    v10 = [v4 vendorId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(TTSSchemaTTSAudioInterface *)self productId];
  v6 = [v4 productId];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(TTSSchemaTTSAudioInterface *)self productId];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(TTSSchemaTTSAudioInterface *)self productId];
    v15 = [v4 productId];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(TTSSchemaTTSAudioInterface *)self vendorId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(TTSSchemaTTSAudioInterface *)self productId];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end