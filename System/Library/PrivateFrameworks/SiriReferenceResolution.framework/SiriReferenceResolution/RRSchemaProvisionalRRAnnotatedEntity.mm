@interface RRSchemaProvisionalRRAnnotatedEntity
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RRSchemaProvisionalRRAnnotatedEntity)initWithDictionary:(id)dictionary;
- (RRSchemaProvisionalRRAnnotatedEntity)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAnnotations:(id)annotations;
- (void)setHasHasReference:(BOOL)reference;
- (void)setHasSaliencyComputedAtTimestampInSeconds:(BOOL)seconds;
- (void)writeTo:(id)to;
@end

@implementation RRSchemaProvisionalRRAnnotatedEntity

- (RRSchemaProvisionalRRAnnotatedEntity)initWithDictionary:(id)dictionary
{
  v36 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v34.receiver = self;
  v34.super_class = RRSchemaProvisionalRRAnnotatedEntity;
  v5 = [(RRSchemaProvisionalRRAnnotatedEntity *)&v34 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"usoGraph"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E69CF840]) initWithDictionary:v6];
      [(RRSchemaProvisionalRRAnnotatedEntity *)v5 setUsoGraph:v8];

      v6 = v7;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"swiftClassName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v11 = [v9 copy];
      [(RRSchemaProvisionalRRAnnotatedEntity *)v5 setSwiftClassName:v11];

      v9 = v10;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"group"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [[RRSchemaProvisionalRRGroupIdentifier alloc] initWithDictionary:v12];
      [(RRSchemaProvisionalRRAnnotatedEntity *)v5 setGroup:v13];
    }

    v29 = v12;
    v14 = [dictionaryCopy objectForKeyedSubscript:@"annotations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v9;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v15 = v14;
      v16 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v31;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v31 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v30 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = [[RRSchemaProvisionalRRAnnotation alloc] initWithDictionary:v20];
              [(RRSchemaProvisionalRRAnnotatedEntity *)v5 addAnnotations:v21];
            }
          }

          v17 = [v15 countByEnumeratingWithState:&v30 objects:v35 count:16];
        }

        while (v17);
      }

      v9 = v28;
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"saliencyScore"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v22 floatValue];
      [(RRSchemaProvisionalRRAnnotatedEntity *)v5 setSaliencyScore:?];
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"saliencyComputedAtTimestampInSeconds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRRAnnotatedEntity setSaliencyComputedAtTimestampInSeconds:](v5, "setSaliencyComputedAtTimestampInSeconds:", [v23 unsignedLongLongValue]);
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"hasReference"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RRSchemaProvisionalRRAnnotatedEntity setHasReference:](v5, "setHasReference:", [v24 BOOLValue]);
    }

    v25 = v5;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (RRSchemaProvisionalRRAnnotatedEntity)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RRSchemaProvisionalRRAnnotatedEntity *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RRSchemaProvisionalRRAnnotatedEntity *)self dictionaryRepresentation];
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
  v32 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_annotations count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v5 = self->_annotations;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v27 + 1) + 8 * i) dictionaryRepresentation];
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

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"annotations"];
  }

  if (self->_group)
  {
    group = [(RRSchemaProvisionalRRAnnotatedEntity *)self group];
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

  has = self->_has;
  if ((has & 4) != 0)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[RRSchemaProvisionalRRAnnotatedEntity hasReference](self, "hasReference")}];
    [dictionary setObject:v22 forKeyedSubscript:@"hasReference"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_20:
      if ((has & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_20;
  }

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[RRSchemaProvisionalRRAnnotatedEntity saliencyComputedAtTimestampInSeconds](self, "saliencyComputedAtTimestampInSeconds", v27)}];
  [dictionary setObject:v23 forKeyedSubscript:@"saliencyComputedAtTimestampInSeconds"];

  if (*&self->_has)
  {
LABEL_21:
    v16 = MEMORY[0x1E696AD98];
    [(RRSchemaProvisionalRRAnnotatedEntity *)self saliencyScore];
    v17 = [v16 numberWithFloat:?];
    [dictionary setObject:v17 forKeyedSubscript:@"saliencyScore"];
  }

LABEL_22:
  if (self->_swiftClassName)
  {
    swiftClassName = [(RRSchemaProvisionalRRAnnotatedEntity *)self swiftClassName];
    v19 = [swiftClassName copy];
    [dictionary setObject:v19 forKeyedSubscript:@"swiftClassName"];
  }

  if (self->_usoGraph)
  {
    usoGraph = [(RRSchemaProvisionalRRAnnotatedEntity *)self usoGraph];
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

  [(RRSchemaProvisionalRRAnnotatedEntity *)self willProduceDictionaryRepresentation:dictionary, v27];
  v25 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(USOSchemaUSOGraph *)self->_usoGraph hash];
  v4 = [(NSString *)self->_swiftClassName hash];
  v5 = [(RRSchemaProvisionalRRGroupIdentifier *)self->_group hash];
  v6 = [(NSArray *)self->_annotations hash];
  if (*&self->_has)
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

  if ((*&self->_has & 2) != 0)
  {
    v14 = 2654435761u * self->_saliencyComputedAtTimestampInSeconds;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_12;
    }

LABEL_14:
    v15 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ v14 ^ v15;
  }

  v14 = 0;
  if ((*&self->_has & 4) == 0)
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

  usoGraph = [(RRSchemaProvisionalRRAnnotatedEntity *)self usoGraph];
  usoGraph2 = [equalCopy usoGraph];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
    goto LABEL_21;
  }

  usoGraph3 = [(RRSchemaProvisionalRRAnnotatedEntity *)self usoGraph];
  if (usoGraph3)
  {
    v8 = usoGraph3;
    usoGraph4 = [(RRSchemaProvisionalRRAnnotatedEntity *)self usoGraph];
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

  usoGraph = [(RRSchemaProvisionalRRAnnotatedEntity *)self swiftClassName];
  usoGraph2 = [equalCopy swiftClassName];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
    goto LABEL_21;
  }

  swiftClassName = [(RRSchemaProvisionalRRAnnotatedEntity *)self swiftClassName];
  if (swiftClassName)
  {
    v13 = swiftClassName;
    swiftClassName2 = [(RRSchemaProvisionalRRAnnotatedEntity *)self swiftClassName];
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

  usoGraph = [(RRSchemaProvisionalRRAnnotatedEntity *)self group];
  usoGraph2 = [equalCopy group];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
    goto LABEL_21;
  }

  group = [(RRSchemaProvisionalRRAnnotatedEntity *)self group];
  if (group)
  {
    v18 = group;
    group2 = [(RRSchemaProvisionalRRAnnotatedEntity *)self group];
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

  usoGraph = [(RRSchemaProvisionalRRAnnotatedEntity *)self annotations];
  usoGraph2 = [equalCopy annotations];
  if ((usoGraph != 0) == (usoGraph2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  annotations = [(RRSchemaProvisionalRRAnnotatedEntity *)self annotations];
  if (annotations)
  {
    v23 = annotations;
    annotations2 = [(RRSchemaProvisionalRRAnnotatedEntity *)self annotations];
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

  has = self->_has;
  v30 = equalCopy[60];
  if ((v30 & 1) == (has & 1))
  {
    if (*&self->_has)
    {
      saliencyScore = self->_saliencyScore;
      [equalCopy saliencyScore];
      if (saliencyScore != v32)
      {
        goto LABEL_22;
      }

      has = self->_has;
      v30 = equalCopy[60];
    }

    v33 = v30 ^ has;
    if ((v33 & 2) == 0)
    {
      if ((has & 2) != 0)
      {
        saliencyComputedAtTimestampInSeconds = self->_saliencyComputedAtTimestampInSeconds;
        if (saliencyComputedAtTimestampInSeconds != [equalCopy saliencyComputedAtTimestampInSeconds])
        {
          goto LABEL_22;
        }

        has = self->_has;
        v33 = equalCopy[60] ^ has;
      }

      if ((v33 & 4) == 0)
      {
        if ((has & 4) == 0 || (hasReference = self->_hasReference, hasReference == [equalCopy hasReference]))
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
  v27 = *MEMORY[0x1E69E9840];
  toCopy = to;
  usoGraph = [(RRSchemaProvisionalRRAnnotatedEntity *)self usoGraph];

  if (usoGraph)
  {
    usoGraph2 = [(RRSchemaProvisionalRRAnnotatedEntity *)self usoGraph];
    PBDataWriterWriteSubmessage();
  }

  swiftClassName = [(RRSchemaProvisionalRRAnnotatedEntity *)self swiftClassName];

  if (swiftClassName)
  {
    swiftClassName = self->_swiftClassName;
    PBDataWriterWriteStringField();
  }

  group = [(RRSchemaProvisionalRRAnnotatedEntity *)self group];

  if (group)
  {
    group2 = [(RRSchemaProvisionalRRAnnotatedEntity *)self group];
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = self->_annotations;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_20:
    saliencyComputedAtTimestampInSeconds = self->_saliencyComputedAtTimestampInSeconds;
    PBDataWriterWriteUint64Field();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  saliencyScore = self->_saliencyScore;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_20;
  }

LABEL_16:
  if ((has & 4) != 0)
  {
LABEL_17:
    hasReference = self->_hasReference;
    PBDataWriterWriteBOOLField();
  }

LABEL_18:

  v19 = *MEMORY[0x1E69E9840];
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

  *&self->_has = *&self->_has & 0xFB | v3;
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

  *&self->_has = *&self->_has & 0xFD | v3;
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

@end