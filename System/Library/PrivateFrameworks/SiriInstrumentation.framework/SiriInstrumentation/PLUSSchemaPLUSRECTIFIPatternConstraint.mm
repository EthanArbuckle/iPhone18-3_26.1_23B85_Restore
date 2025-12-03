@interface PLUSSchemaPLUSRECTIFIPatternConstraint
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithDictionary:(id)dictionary;
- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConstraintValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation PLUSSchemaPLUSRECTIFIPatternConstraint

- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSRECTIFIPatternConstraint;
  v5 = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"constraintType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternConstraint setConstraintType:](v5, "setConstraintType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"constraintValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 floatValue];
      [(PLUSSchemaPLUSRECTIFIPatternConstraint *)v5 setConstraintValue:?];
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    constraintType = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self constraintType];
    v6 = @"PLUSRECTIFIPATTERNCONSTRAINTTYPE_UNKNOWN";
    if (constraintType == 1)
    {
      v6 = @"PLUSRECTIFIPATTERNCONSTRAINTTYPE_ENTITY_SIMILARITY";
    }

    if (constraintType == 2)
    {
      v7 = @"PLUSRECTIFIPATTERNCONSTRAINTTYPE_SUPPORT_THRESHOLD";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"constraintType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self constraintValue];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"constraintValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_constraintType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v9 = 0;
    return v9 ^ v4;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  constraintValue = self->_constraintValue;
  if (constraintValue >= 0.0)
  {
    v6 = constraintValue;
  }

  else
  {
    v6 = -constraintValue;
  }

  *v2.i64 = floor(v6 + 0.5);
  v7 = (v6 - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

  return v9 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    constraintType = self->_constraintType;
    if (constraintType != [equalCopy constraintType])
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (constraintValue = self->_constraintValue, [equalCopy constraintValue], constraintValue == v10))
    {
      v11 = 1;
      goto LABEL_10;
    }
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }
}

- (void)setHasConstraintValue:(BOOL)value
{
  if (value)
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