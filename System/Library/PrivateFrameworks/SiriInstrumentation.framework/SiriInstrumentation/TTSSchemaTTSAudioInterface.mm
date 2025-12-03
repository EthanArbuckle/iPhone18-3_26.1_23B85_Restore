@interface TTSSchemaTTSAudioInterface
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (TTSSchemaTTSAudioInterface)initWithDictionary:(id)dictionary;
- (TTSSchemaTTSAudioInterface)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation TTSSchemaTTSAudioInterface

- (TTSSchemaTTSAudioInterface)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = TTSSchemaTTSAudioInterface;
  v5 = [(TTSSchemaTTSAudioInterface *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"vendorId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(TTSSchemaTTSAudioInterface *)v5 setVendorId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"productId"];
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

- (TTSSchemaTTSAudioInterface)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(TTSSchemaTTSAudioInterface *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(TTSSchemaTTSAudioInterface *)self dictionaryRepresentation];
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
  if (self->_productId)
  {
    productId = [(TTSSchemaTTSAudioInterface *)self productId];
    v5 = [productId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"productId"];
  }

  if (self->_vendorId)
  {
    vendorId = [(TTSSchemaTTSAudioInterface *)self vendorId];
    v7 = [vendorId copy];
    [dictionary setObject:v7 forKeyedSubscript:@"vendorId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  vendorId = [(TTSSchemaTTSAudioInterface *)self vendorId];
  vendorId2 = [equalCopy vendorId];
  if ((vendorId != 0) == (vendorId2 == 0))
  {
    goto LABEL_11;
  }

  vendorId3 = [(TTSSchemaTTSAudioInterface *)self vendorId];
  if (vendorId3)
  {
    v8 = vendorId3;
    vendorId4 = [(TTSSchemaTTSAudioInterface *)self vendorId];
    vendorId5 = [equalCopy vendorId];
    v11 = [vendorId4 isEqual:vendorId5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  vendorId = [(TTSSchemaTTSAudioInterface *)self productId];
  vendorId2 = [equalCopy productId];
  if ((vendorId != 0) != (vendorId2 == 0))
  {
    productId = [(TTSSchemaTTSAudioInterface *)self productId];
    if (!productId)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = productId;
    productId2 = [(TTSSchemaTTSAudioInterface *)self productId];
    productId3 = [equalCopy productId];
    v16 = [productId2 isEqual:productId3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  vendorId = [(TTSSchemaTTSAudioInterface *)self vendorId];

  if (vendorId)
  {
    PBDataWriterWriteStringField();
  }

  productId = [(TTSSchemaTTSAudioInterface *)self productId];

  if (productId)
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