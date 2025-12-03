@interface RRSchemaRRAnnotatedEntity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaRRAnnotatedEntity)initWithDictionary:(id)dictionary;
- (RRSchemaRRAnnotatedEntity)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)addAnnotations:(id)annotations;
- (void)setHasHasReference:(BOOL)reference;
- (void)setHasSaliencyComputedAtTimestampInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaRRAnnotatedEntity

- (RRSchemaRRAnnotatedEntity)initWithDictionary:(id)dictionary
{
  v35 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v33.receiver = self;
  v33.super_class = RRSchemaRRAnnotatedEntity;
  v5 = [(RRSchemaRRAnnotatedEntity *)&v33 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoGraph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [[USOSchemaUSOGraph alloc] initWithDictionary:v6];
      [(RRSchemaRRAnnotatedEntity *)v5 setUsoGraph:v8];

      v6 = v7;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"swiftClassName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v9 copy];
      [(RRSchemaRRAnnotatedEntity *)v5 setSwiftClassName:v11];

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"group"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RRSchemaRRGroupIdentifier alloc] initWithDictionary:v12];
      [(RRSchemaRRAnnotatedEntity *)v5 setGroup:v13];
    }

    v28 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"annotations"];
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

    v22 = [dictionaryCopy objectForKeyedSubscript:@"saliencyScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(RRSchemaRRAnnotatedEntity *)v5 setSaliencyScore:?];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"saliencyComputedAtTimestampInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRAnnotatedEntity setSaliencyComputedAtTimestampInSeconds:](v5, "setSaliencyComputedAtTimestampInSeconds:", [v23 unsignedLongLongValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"hasReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaRRAnnotatedEntity setHasReference:](v5, "setHasReference:", [v24 BOOLValue]);
    }

    v25 = v5;
  }

  return v5;
}

- (RRSchemaRRAnnotatedEntity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaRRAnnotatedEntity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaRRAnnotatedEntity *)self dictionaryRepresentation];
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
  v31 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_annotations count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"annotations"];
  }

  if (self->_group)
  {
    group = [(RRSchemaRRAnnotatedEntity *)self group];
    dictionaryRepresentation2 = [group dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"group"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"group"];
    }
  }

  v15 = *(&self->_hasReference + 1);
  if ((v15 & 4) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[RRSchemaRRAnnotatedEntity hasReference](self, "hasReference")}];
    [dictionary setObject:v22 forKeyedSubscript:@"hasReference"];

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
  [dictionary setObject:v23 forKeyedSubscript:@"saliencyComputedAtTimestampInSeconds"];

  if (*(&self->_hasReference + 1))
  {
LABEL_21:
    v16 = MEMORY[0x1E696AD98];
    [(RRSchemaRRAnnotatedEntity *)self saliencyScore];
    v17 = [v16 numberWithFloat:?];
    [dictionary setObject:v17 forKeyedSubscript:@"saliencyScore"];
  }

LABEL_22:
  if (self->_swiftClassName)
  {
    swiftClassName = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
    v19 = [swiftClassName copy];
    [dictionary setObject:v19 forKeyedSubscript:@"swiftClassName"];
  }

  if (self->_usoGraph)
  {
    usoGraph = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
    dictionaryRepresentation3 = [usoGraph dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"usoGraph"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"usoGraph"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary, v26];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  usoGraph = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
  usoGraph2 = [equalCopy usoGraph];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
    goto LABEL_21;
  }

  usoGraph3 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
  if (usoGraph3)
  {
    v8 = usoGraph3;
    usoGraph4 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
    usoGraph5 = [equalCopy usoGraph];
    v11 = [usoGraph4 isEqual:usoGraph5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  usoGraph = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
  usoGraph2 = [equalCopy swiftClassName];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
    goto LABEL_21;
  }

  swiftClassName = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
  if (swiftClassName)
  {
    v13 = swiftClassName;
    swiftClassName2 = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];
    swiftClassName3 = [equalCopy swiftClassName];
    v16 = [swiftClassName2 isEqual:swiftClassName3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  usoGraph = [(RRSchemaRRAnnotatedEntity *)self group];
  usoGraph2 = [equalCopy group];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
    goto LABEL_21;
  }

  group = [(RRSchemaRRAnnotatedEntity *)self group];
  if (group)
  {
    v18 = group;
    group2 = [(RRSchemaRRAnnotatedEntity *)self group];
    group3 = [equalCopy group];
    v21 = [group2 isEqual:group3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  usoGraph = [(RRSchemaRRAnnotatedEntity *)self annotations];
  usoGraph2 = [equalCopy annotations];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  annotations = [(RRSchemaRRAnnotatedEntity *)self annotations];
  if (annotations)
  {
    v23 = annotations;
    annotations2 = [(RRSchemaRRAnnotatedEntity *)self annotations];
    annotations3 = [equalCopy annotations];
    v26 = [annotations2 isEqual:annotations3];

    if (!v26)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v29 = *(&self->_hasReference + 1);
  v30 = equalCopy[57];
  if ((v29 & 1) == (v30 & 1))
  {
    if (v29)
    {
      saliencyScore = self->_saliencyScore;
      [equalCopy saliencyScore];
      if (saliencyScore != v32)
      {
        goto LABEL_22;
      }

      v29 = *(&self->_hasReference + 1);
      v30 = equalCopy[57];
    }

    v33 = (v29 >> 1) & 1;
    if (v33 == ((v30 >> 1) & 1))
    {
      if (v33)
      {
        saliencyComputedAtTimestampInSeconds = self->_saliencyComputedAtTimestampInSeconds;
        if (saliencyComputedAtTimestampInSeconds != [equalCopy saliencyComputedAtTimestampInSeconds])
        {
          goto LABEL_22;
        }

        v29 = *(&self->_hasReference + 1);
        v30 = equalCopy[57];
      }

      v35 = (v29 >> 2) & 1;
      if (v35 == ((v30 >> 2) & 1))
      {
        if (!v35 || (hasReference = self->_hasReference, hasReference == [equalCopy hasReference]))
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

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  usoGraph = [(RRSchemaRRAnnotatedEntity *)self usoGraph];

  if (usoGraph)
  {
    usoGraph2 = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
    PBDataWriterWriteSubmessage();
  }

  swiftClassName = [(RRSchemaRRAnnotatedEntity *)self swiftClassName];

  if (swiftClassName)
  {
    PBDataWriterWriteStringField();
  }

  group = [(RRSchemaRRAnnotatedEntity *)self group];

  if (group)
  {
    group2 = [(RRSchemaRRAnnotatedEntity *)self group];
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

- (void)setHasHasReference:(BOOL)reference
{
  if (reference)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasReference + 1) = *(&self->_hasReference + 1) & 0xFB | v3;
}

- (void)setHasSaliencyComputedAtTimestampInSeconds:(BOOL)seconds
{
  if (seconds)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_hasReference + 1) = *(&self->_hasReference + 1) & 0xFD | v3;
}

- (void)addAnnotations:(id)annotations
{
  annotationsCopy = annotations;
  annotations = self->_annotations;
  v8 = annotationsCopy;
  if (!annotations)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_annotations;
    self->_annotations = array;

    annotationsCopy = v8;
    annotations = self->_annotations;
  }

  [(NSArray *)annotations addObject:annotationsCopy];
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v15.receiver = self;
  v15.super_class = RRSchemaRRAnnotatedEntity;
  v5 = [(SISchemaInstrumentationMessage *)&v15 applySensitiveConditionsPolicy:policyCopy];
  usoGraph = [(RRSchemaRRAnnotatedEntity *)self usoGraph];
  v7 = [usoGraph applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(RRSchemaRRAnnotatedEntity *)self deleteUsoGraph];
  }

  group = [(RRSchemaRRAnnotatedEntity *)self group];
  v10 = [group applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(RRSchemaRRAnnotatedEntity *)self deleteGroup];
  }

  annotations = [(RRSchemaRRAnnotatedEntity *)self annotations];
  v13 = [(SISchemaInstrumentationMessage *)self _pruneSuppressedMessagesFromArray:annotations underConditions:policyCopy];
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