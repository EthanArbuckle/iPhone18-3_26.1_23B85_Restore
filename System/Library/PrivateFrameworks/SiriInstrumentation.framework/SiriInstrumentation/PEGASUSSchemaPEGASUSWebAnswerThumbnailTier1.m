@interface PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1

- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"imageUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)v5 setImageUrl:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"touchIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)v5 setTouchIcon:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"favIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)v5 setFavIcon:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self dictionaryRepresentation];
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
  if (self->_favIcon)
  {
    v4 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"favIcon"];
  }

  if (self->_imageUrl)
  {
    v6 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"imageUrl"];
  }

  if (self->_touchIcon)
  {
    v8 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"touchIcon"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_imageUrl hash];
  v4 = [(NSString *)self->_touchIcon hash]^ v3;
  return v4 ^ [(NSString *)self->_favIcon hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
  v6 = [v4 imageUrl];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
  if (v7)
  {
    v8 = v7;
    v9 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
    v10 = [v4 imageUrl];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
  v6 = [v4 touchIcon];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
  if (v12)
  {
    v13 = v12;
    v14 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
    v15 = [v4 touchIcon];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
  v6 = [v4 favIcon];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
    v20 = [v4 favIcon];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  v5 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([v4 isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
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