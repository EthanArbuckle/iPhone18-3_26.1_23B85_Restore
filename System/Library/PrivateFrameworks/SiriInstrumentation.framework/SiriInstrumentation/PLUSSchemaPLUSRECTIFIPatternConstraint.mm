@interface PLUSSchemaPLUSRECTIFIPatternConstraint
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasConstraintValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSRECTIFIPatternConstraint

- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSRECTIFIPatternConstraint;
  v5 = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"constraintType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSRECTIFIPatternConstraint setConstraintType:](v5, "setConstraintType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"constraintValue"];
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

- (PLUSSchemaPLUSRECTIFIPatternConstraint)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self dictionaryRepresentation];
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
  has = self->_has;
  if (has)
  {
    v5 = [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self constraintType];
    v6 = @"PLUSRECTIFIPATTERNCONSTRAINTTYPE_UNKNOWN";
    if (v5 == 1)
    {
      v6 = @"PLUSRECTIFIPATTERNCONSTRAINTTYPE_ENTITY_SIMILARITY";
    }

    if (v5 == 2)
    {
      v7 = @"PLUSRECTIFIPATTERNCONSTRAINTTYPE_SUPPORT_THRESHOLD";
    }

    else
    {
      v7 = v6;
    }

    [v3 setObject:v7 forKeyedSubscript:@"constraintType"];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v8 = MEMORY[0x1E696AD98];
    [(PLUSSchemaPLUSRECTIFIPatternConstraint *)self constraintValue];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"constraintValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  has = self->_has;
  v6 = v4[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_9;
  }

  if (*&has)
  {
    constraintType = self->_constraintType;
    if (constraintType != [v4 constraintType])
    {
      goto LABEL_9;
    }

    has = self->_has;
    v6 = v4[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 == ((v6 >> 1) & 1))
  {
    if (!v8 || (constraintValue = self->_constraintValue, [v4 constraintValue], constraintValue == v10))
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    v4 = v6;
  }
}

- (void)setHasConstraintValue:(BOOL)a3
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