@interface RRSchemaRRAnnotatedEntity
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RRSchemaRRAnnotatedEntity)initWithDictionary:(id)a3;
- (RRSchemaRRAnnotatedEntity)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnnotations:(id)a3;
- (void)setHasHasReference:(BOOL)a3;
- (void)setHasSaliencyComputedAtTimestampInSeconds:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation RRSchemaRRAnnotatedEntity

- (RRSchemaRRAnnotatedEntity)initWithDictionary:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = RRSchemaRRAnnotatedEntity;
  v5 = [(RRSchemaRRAnnotatedEntity *)&v33 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"usoGraph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [[USOSchemaUSOGraph alloc] initWithDictionary:v6];
      [(RRSchemaRRAnnotatedEntity *)v5 setUsoGraph:v8];

      v6 = v7;
    }

    v9 = [v4 objectForKeyedSubscript:@"swiftClassName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v9 copy];
      [(RRSchemaRRAnnotatedEntity *)v5 setSwiftClassName:v11];

      v9 = v10;
    }

    v12 = [v4 objectForKeyedSubscript:@"group"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RRSchemaRRGroupIdentifier alloc] initWithDictionary:v12];
      [(RRSchemaRRAnnotatedEntity *)v5 setGroup:v13];
    }

    v28 = v12;
    v14 = [v4 objectForKeyedSubscript:@"annotations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v9;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v30;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v30 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v29 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[RRSchemaRRAnnotation alloc] initWithDictionary:v20];
              [(RRSchemaRRAnnotatedEntity *)v5 addAnnotations:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
        }

        while (v17);
      }

      v9 = v27;
    }

    v22 = [v4 objectForKeyedSubscript:@"saliencyScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(RRSchemaRRAnnotatedEntity *)v5 setSaliencyScore:?];
    }

    v23 = [v4 objectForKeyedSubscript:@"saliencyComputedAtTimestampInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRAnnotatedEntity setSaliencyComputedAtTimestampInSeconds:](v5, "setSaliencyComputedAtTimestampInSeconds:", [v23 unsignedLongLongValue]);
    }

    v24 = [v4 objectForKeyedSubscript:@"hasReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRAnnotatedEntity setHasReference:](v5, "setHasReference:", [v24 BOOLValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (RRSchemaRRAnnotatedEntity)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RRSchemaRRAnnotatedEntity *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RRSchemaRRAnnotatedEntity *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_annotations count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = self->_annotations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (v10)
          {
            [v4 addObject:v10];
          }

          else
          {
            v11 = [MEMORY[0x1E695DFB0] null];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"annotations"];
  }

  if (self->_group)
  {
    v12 = [(RRSchemaRRAnnotatedEntity *)self group];
    v13 = [v12 dictionaryRepresentation];
    if (v13)
    {
      [v3 setObject:v13 forKeyedSubscript:@"group"];
    }

    else
    {
      v14 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v14 forKeyedSubscript:@"group"];
    }
  }

  v15 = *(&self->_hasReference + 1);
  if ((v15 & 4) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[RRSchemaRRAnnotatedEntity hasReference](self, "hasReference")}];
    [v3 setObject:v22 forKeyedSubscript:@"hasReference"];

    v15 = *(&self->_hasReference + 1);
    if ((v15 & 2) == 0)
    {
LABEL_20:
      if ((v15 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*(&self->_hasReference + 1) & 2) == 0)
  {
    goto LABEL_20;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RRSchemaRRAnnotatedEntity saliencyComputedAtTimestampInSeconds](self, "saliencyComputedAtTimestampInSeconds", v26)}];
  [v3 setObject:v23 forKeyedSubscript:@"saliencyComputedAtTimestampInSeconds"];

  if (*(&self->_hasReference + 1))
  {
LABEL_21:
    v16 = MEMORY[0x1E696AD98];
    [(RRSchemaRRAnnotatedEntity *)self saliencyScore];
    v17 = [v16 numberWithFloat:?];
    [v3 setObject:v17 forKeyedSubscript:@"saliencyScore"];
  }

LABEL_22:
  if (self->_swiftClassName)
  {
    v18 = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
    v19 = [v18 copy];
    [v3 setObject:v19 forKeyedSubscript:@"swiftClassName"];
  }

  if (self->_usoGraph)
  {
    v20 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
    v21 = [v20 dictionaryRepresentation];
    if (v21)
    {
      [v3 setObject:v21 forKeyedSubscript:@"usoGraph"];
    }

    else
    {
      v24 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v24 forKeyedSubscript:@"usoGraph"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3, v26];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(USOSchemaUSOGraph *)self->_usoGraph hash];
  v4 = [(NSString *)self->_swiftClassName hash];
  v5 = [(RRSchemaRRGroupIdentifier *)self->_group hash];
  v6 = [(NSArray *)self->_annotations hash];
  if (*(&self->_hasReference + 1))
  {
    saliencyScore = self->_saliencyScore;
    if (saliencyScore >= 0.0)
    {
      v11 = saliencyScore;
    }

    else
    {
      v11 = -saliencyScore;
    }

    *v7.i64 = floor(v11 + 0.5);
    v12 = (v11 - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v8, v7).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v9 += v12;
      }
    }

    else
    {
      v9 -= fabs(v12);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((*(&self->_hasReference + 1) & 2) != 0)
  {
    v14 = 2654435761u * self->_saliencyComputedAtTimestampInSeconds;
    if ((*(&self->_hasReference + 1) & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14 ^ v15;
  }

  v14 = 0;
  if ((*(&self->_hasReference + 1) & 4) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v15 = 2654435761 * self->_hasReference;
  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  v5 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
  v6 = [v4 usoGraph];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v7 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
  if (v7)
  {
    v8 = v7;
    v9 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
    v10 = [v4 usoGraph];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
  v6 = [v4 swiftClassName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v12 = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
  if (v12)
  {
    v13 = v12;
    v14 = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
    v15 = [v4 swiftClassName];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RRSchemaRRAnnotatedEntity *)self group];
  v6 = [v4 group];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_21;
  }

  v17 = [(RRSchemaRRAnnotatedEntity *)self group];
  if (v17)
  {
    v18 = v17;
    v19 = [(RRSchemaRRAnnotatedEntity *)self group];
    v20 = [v4 group];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v5 = [(RRSchemaRRAnnotatedEntity *)self annotations];
  v6 = [v4 annotations];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v22 = [(RRSchemaRRAnnotatedEntity *)self annotations];
  if (v22)
  {
    v23 = v22;
    v24 = [(RRSchemaRRAnnotatedEntity *)self annotations];
    v25 = [v4 annotations];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v29 = *(&self->_hasReference + 1);
  v30 = v4[57];
  if ((v29 & 1) == (v30 & 1))
  {
    if (v29)
    {
      saliencyScore = self->_saliencyScore;
      [v4 saliencyScore];
      if (saliencyScore != v32)
      {
        goto LABEL_22;
      }

      v29 = *(&self->_hasReference + 1);
      v30 = v4[57];
    }

    v33 = (v29 >> 1) & 1;
    if (v33 == ((v30 >> 1) & 1))
    {
      if (v33)
      {
        saliencyComputedAtTimestampInSeconds = self->_saliencyComputedAtTimestampInSeconds;
        if (saliencyComputedAtTimestampInSeconds != [v4 saliencyComputedAtTimestampInSeconds])
        {
          goto LABEL_22;
        }

        v29 = *(&self->_hasReference + 1);
        v30 = v4[57];
      }

      v35 = (v29 >> 2) & 1;
      if (v35 == ((v30 >> 2) & 1))
      {
        if (!v35 || (hasReference = self->_hasReference, hasReference == [v4 hasReference]))
        {
          v27 = 1;
          goto LABEL_23;
        }
      }
    }
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];

  if (v5)
  {
    v6 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];

  if (v7)
  {
    PBDataWriterWriteStringField();
  }

  v8 = [(RRSchemaRRAnnotatedEntity *)self group];

  if (v8)
  {
    v9 = [(RRSchemaRRAnnotatedEntity *)self group];
    PBDataWriterWriteSubmessage();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_annotations;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v15 = *(&self->_hasReference + 1);
  if ((v15 & 1) == 0)
  {
    if ((*(&self->_hasReference + 1) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    PBDataWriterWriteUint64Field();
    if ((*(&self->_hasReference + 1) & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  PBDataWriterWriteFloatField();
  v15 = *(&self->_hasReference + 1);
  if ((v15 & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((v15 & 4) != 0)
  {
LABEL_17:
    PBDataWriterWriteBOOLField();
  }

LABEL_18:
}

- (void)setHasHasReference:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasReference + 1) = *(&self->_hasReference + 1) & 0xFB | v3;
}

- (void)setHasSaliencyComputedAtTimestampInSeconds:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasReference + 1) = *(&self->_hasReference + 1) & 0xFD | v3;
}

- (void)addAnnotations:(id)a3
{
  v4 = a3;
  annotations = self->_annotations;
  v8 = v4;
  if (!annotations)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_annotations;
    self->_annotations = v6;

    v4 = v8;
    annotations = self->_annotations;
  }

  [(NSArray *)annotations addObject:v4];
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RRSchemaRRAnnotatedEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:v4];
  v6 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(RRSchemaRRAnnotatedEntity *)self deleteUsoGraph];
  }

  v9 = [(RRSchemaRRAnnotatedEntity *)self group];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(RRSchemaRRAnnotatedEntity *)self deleteGroup];
  }

  v12 = [(RRSchemaRRAnnotatedEntity *)self annotations];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:v12 underConditions:v4];
  [(RRSchemaRRAnnotatedEntity *)self setAnnotations:v13];

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end