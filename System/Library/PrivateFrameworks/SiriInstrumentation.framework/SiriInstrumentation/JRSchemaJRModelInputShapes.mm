@interface JRSchemaJRModelInputShapes
- (BOOL)isEqual:(id)equal;
- (JRSchemaJRModelInputShapes)initWithDictionary:(id)dictionary;
- (JRSchemaJRModelInputShapes)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)candidateInteractionsShapesAtIndex:(unint64_t)index;
- (unsigned)candidateTuplesShapesAtIndex:(unint64_t)index;
- (unsigned)deviceContextShapesAtIndex:(unint64_t)index;
- (unsigned)similarityScoresShapesAtIndex:(unint64_t)index;
- (unsigned)tupleInteractionsAlignmentShapesAtIndex:(unint64_t)index;
- (unsigned)tupleInteractionsCandidatesShapesAtIndex:(unint64_t)index;
- (void)addCandidateInteractionsShapes:(unsigned int)shapes;
- (void)addCandidateTuplesShapes:(unsigned int)shapes;
- (void)addDeviceContextShapes:(unsigned int)shapes;
- (void)addSimilarityScoresShapes:(unsigned int)shapes;
- (void)addTupleInteractionsAlignmentShapes:(unsigned int)shapes;
- (void)addTupleInteractionsCandidatesShapes:(unsigned int)shapes;
- (void)writeTo:(id)to;
@end

@implementation JRSchemaJRModelInputShapes

- (JRSchemaJRModelInputShapes)initWithDictionary:(id)dictionary
{
  v85 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v78.receiver = self;
  v78.super_class = JRSchemaJRModelInputShapes;
  v5 = [(JRSchemaJRModelInputShapes *)&v78 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"candidateTuplesShapes"];
    objc_opt_class();
    v53 = v6;
    if (objc_opt_isKindOfClass())
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v74 objects:v84 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v75;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v75 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v74 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRModelInputShapes addCandidateTuplesShapes:](v5, "addCandidateTuplesShapes:", [v12 unsignedIntValue]);
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v74 objects:v84 count:16];
        }

        while (v9);
      }
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"deviceContextShapes"];
    objc_opt_class();
    v52 = v13;
    if (objc_opt_isKindOfClass())
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v70 objects:v83 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v71;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v71 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v70 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRModelInputShapes addDeviceContextShapes:](v5, "addDeviceContextShapes:", [v19 unsignedIntValue]);
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v70 objects:v83 count:16];
        }

        while (v16);
      }
    }

    v20 = [dictionaryCopy objectForKeyedSubscript:@"candidateInteractionsShapes"];
    objc_opt_class();
    v51 = v20;
    if (objc_opt_isKindOfClass())
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v67;
        do
        {
          for (k = 0; k != v23; ++k)
          {
            if (*v67 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v66 + 1) + 8 * k);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRModelInputShapes addCandidateInteractionsShapes:](v5, "addCandidateInteractionsShapes:", [v26 unsignedIntValue]);
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v66 objects:v82 count:16];
        }

        while (v23);
      }
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"tupleInteractionsCandidatesShapes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v28 = v27;
      v29 = [v28 countByEnumeratingWithState:&v62 objects:v81 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v63;
        do
        {
          for (m = 0; m != v30; ++m)
          {
            if (*v63 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v62 + 1) + 8 * m);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRModelInputShapes addTupleInteractionsCandidatesShapes:](v5, "addTupleInteractionsCandidatesShapes:", [v33 unsignedIntValue]);
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v62 objects:v81 count:16];
        }

        while (v30);
      }
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"tupleInteractionsAlignmentShapes"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v35 = v34;
      v36 = [v35 countByEnumeratingWithState:&v58 objects:v80 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v59;
        do
        {
          for (n = 0; n != v37; ++n)
          {
            if (*v59 != v38)
            {
              objc_enumerationMutation(v35);
            }

            v40 = *(*(&v58 + 1) + 8 * n);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRModelInputShapes addTupleInteractionsAlignmentShapes:](v5, "addTupleInteractionsAlignmentShapes:", [v40 unsignedIntValue]);
            }
          }

          v37 = [v35 countByEnumeratingWithState:&v58 objects:v80 count:16];
        }

        while (v37);
      }
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:{@"similarityScoresShapes", v27}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v41;
      v43 = [v42 countByEnumeratingWithState:&v54 objects:v79 count:16];
      if (v43)
      {
        v44 = v43;
        v45 = *v55;
        do
        {
          for (ii = 0; ii != v44; ++ii)
          {
            if (*v55 != v45)
            {
              objc_enumerationMutation(v42);
            }

            v47 = *(*(&v54 + 1) + 8 * ii);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[JRSchemaJRModelInputShapes addSimilarityScoresShapes:](v5, "addSimilarityScoresShapes:", [v47 unsignedIntValue]);
            }
          }

          v44 = [v42 countByEnumeratingWithState:&v54 objects:v79 count:16];
        }

        while (v44);
      }

      v27 = v50;
    }

    v48 = v5;
  }

  return v5;
}

- (JRSchemaJRModelInputShapes)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(JRSchemaJRModelInputShapes *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(JRSchemaJRModelInputShapes *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_candidateInteractionsShapes count])
  {
    candidateInteractionsShapes = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
    v5 = [candidateInteractionsShapes copy];
    [dictionary setObject:v5 forKeyedSubscript:@"candidateInteractionsShapes"];
  }

  if ([(NSArray *)self->_candidateTuplesShapes count])
  {
    candidateTuplesShapes = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
    v7 = [candidateTuplesShapes copy];
    [dictionary setObject:v7 forKeyedSubscript:@"candidateTuplesShapes"];
  }

  if ([(NSArray *)self->_deviceContextShapes count])
  {
    deviceContextShapes = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
    v9 = [deviceContextShapes copy];
    [dictionary setObject:v9 forKeyedSubscript:@"deviceContextShapes"];
  }

  if ([(NSArray *)self->_similarityScoresShapes count])
  {
    similarityScoresShapes = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
    v11 = [similarityScoresShapes copy];
    [dictionary setObject:v11 forKeyedSubscript:@"similarityScoresShapes"];
  }

  if ([(NSArray *)self->_tupleInteractionsAlignmentShapes count])
  {
    tupleInteractionsAlignmentShapes = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
    v13 = [tupleInteractionsAlignmentShapes copy];
    [dictionary setObject:v13 forKeyedSubscript:@"tupleInteractionsAlignmentShapes"];
  }

  if ([(NSArray *)self->_tupleInteractionsCandidatesShapes count])
  {
    tupleInteractionsCandidatesShapes = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
    v15 = [tupleInteractionsCandidatesShapes copy];
    [dictionary setObject:v15 forKeyedSubscript:@"tupleInteractionsCandidatesShapes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_candidateTuplesShapes hash];
  v4 = [(NSArray *)self->_deviceContextShapes hash]^ v3;
  v5 = [(NSArray *)self->_candidateInteractionsShapes hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_tupleInteractionsCandidatesShapes hash];
  v7 = [(NSArray *)self->_tupleInteractionsAlignmentShapes hash];
  return v6 ^ v7 ^ [(NSArray *)self->_similarityScoresShapes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  candidateTuplesShapes = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
  candidateTuplesShapes2 = [equalCopy candidateTuplesShapes];
  if ((candidateTuplesShapes != 0) == (candidateTuplesShapes2 == 0))
  {
    goto LABEL_31;
  }

  candidateTuplesShapes3 = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
  if (candidateTuplesShapes3)
  {
    v8 = candidateTuplesShapes3;
    candidateTuplesShapes4 = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
    candidateTuplesShapes5 = [equalCopy candidateTuplesShapes];
    v11 = [candidateTuplesShapes4 isEqual:candidateTuplesShapes5];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  candidateTuplesShapes = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
  candidateTuplesShapes2 = [equalCopy deviceContextShapes];
  if ((candidateTuplesShapes != 0) == (candidateTuplesShapes2 == 0))
  {
    goto LABEL_31;
  }

  deviceContextShapes = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
  if (deviceContextShapes)
  {
    v13 = deviceContextShapes;
    deviceContextShapes2 = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
    deviceContextShapes3 = [equalCopy deviceContextShapes];
    v16 = [deviceContextShapes2 isEqual:deviceContextShapes3];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  candidateTuplesShapes = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
  candidateTuplesShapes2 = [equalCopy candidateInteractionsShapes];
  if ((candidateTuplesShapes != 0) == (candidateTuplesShapes2 == 0))
  {
    goto LABEL_31;
  }

  candidateInteractionsShapes = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
  if (candidateInteractionsShapes)
  {
    v18 = candidateInteractionsShapes;
    candidateInteractionsShapes2 = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
    candidateInteractionsShapes3 = [equalCopy candidateInteractionsShapes];
    v21 = [candidateInteractionsShapes2 isEqual:candidateInteractionsShapes3];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  candidateTuplesShapes = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
  candidateTuplesShapes2 = [equalCopy tupleInteractionsCandidatesShapes];
  if ((candidateTuplesShapes != 0) == (candidateTuplesShapes2 == 0))
  {
    goto LABEL_31;
  }

  tupleInteractionsCandidatesShapes = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
  if (tupleInteractionsCandidatesShapes)
  {
    v23 = tupleInteractionsCandidatesShapes;
    tupleInteractionsCandidatesShapes2 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
    tupleInteractionsCandidatesShapes3 = [equalCopy tupleInteractionsCandidatesShapes];
    v26 = [tupleInteractionsCandidatesShapes2 isEqual:tupleInteractionsCandidatesShapes3];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  candidateTuplesShapes = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
  candidateTuplesShapes2 = [equalCopy tupleInteractionsAlignmentShapes];
  if ((candidateTuplesShapes != 0) == (candidateTuplesShapes2 == 0))
  {
    goto LABEL_31;
  }

  tupleInteractionsAlignmentShapes = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
  if (tupleInteractionsAlignmentShapes)
  {
    v28 = tupleInteractionsAlignmentShapes;
    tupleInteractionsAlignmentShapes2 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
    tupleInteractionsAlignmentShapes3 = [equalCopy tupleInteractionsAlignmentShapes];
    v31 = [tupleInteractionsAlignmentShapes2 isEqual:tupleInteractionsAlignmentShapes3];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  candidateTuplesShapes = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
  candidateTuplesShapes2 = [equalCopy similarityScoresShapes];
  if ((candidateTuplesShapes != 0) != (candidateTuplesShapes2 == 0))
  {
    similarityScoresShapes = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
    if (!similarityScoresShapes)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = similarityScoresShapes;
    similarityScoresShapes2 = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
    similarityScoresShapes3 = [equalCopy similarityScoresShapes];
    v36 = [similarityScoresShapes2 isEqual:similarityScoresShapes3];

    if (v36)
    {
      goto LABEL_35;
    }
  }

  else
  {
LABEL_31:
  }

LABEL_32:
  v37 = 0;
LABEL_33:

  return v37;
}

- (void)writeTo:(id)to
{
  v65 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = self->_candidateTuplesShapes;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    do
    {
      v9 = 0;
      do
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v55 + 1) + 8 * v9) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v55 objects:v64 count:16];
    }

    while (v7);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v10 = self->_deviceContextShapes;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v52;
    do
    {
      v14 = 0;
      do
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v51 + 1) + 8 * v14) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v51 objects:v63 count:16];
    }

    while (v12);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v15 = self->_candidateInteractionsShapes;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v48;
    do
    {
      v19 = 0;
      do
      {
        if (*v48 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v47 + 1) + 8 * v19) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v47 objects:v62 count:16];
    }

    while (v17);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v20 = self->_tupleInteractionsCandidatesShapes;
  v21 = [(NSArray *)v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v44;
    do
    {
      v24 = 0;
      do
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v43 + 1) + 8 * v24) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSArray *)v20 countByEnumeratingWithState:&v43 objects:v61 count:16];
    }

    while (v22);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = self->_tupleInteractionsAlignmentShapes;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v40;
    do
    {
      v29 = 0;
      do
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [*(*(&v39 + 1) + 8 * v29) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v39 objects:v60 count:16];
    }

    while (v27);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = self->_similarityScoresShapes;
  v31 = [(NSArray *)v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v36;
    do
    {
      v34 = 0;
      do
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [*(*(&v35 + 1) + 8 * v34) unsignedIntValue];
        PBDataWriterWriteUint32Field();
        ++v34;
      }

      while (v32 != v34);
      v32 = [(NSArray *)v30 countByEnumeratingWithState:&v35 objects:v59 count:16];
    }

    while (v32);
  }
}

- (unsigned)similarityScoresShapesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_similarityScoresShapes objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addSimilarityScoresShapes:(unsigned int)shapes
{
  v3 = *&shapes;
  similarityScoresShapes = self->_similarityScoresShapes;
  if (!similarityScoresShapes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_similarityScoresShapes;
    self->_similarityScoresShapes = array;

    similarityScoresShapes = self->_similarityScoresShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)similarityScoresShapes addObject:v8];
}

- (unsigned)tupleInteractionsAlignmentShapesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_tupleInteractionsAlignmentShapes objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addTupleInteractionsAlignmentShapes:(unsigned int)shapes
{
  v3 = *&shapes;
  tupleInteractionsAlignmentShapes = self->_tupleInteractionsAlignmentShapes;
  if (!tupleInteractionsAlignmentShapes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tupleInteractionsAlignmentShapes;
    self->_tupleInteractionsAlignmentShapes = array;

    tupleInteractionsAlignmentShapes = self->_tupleInteractionsAlignmentShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)tupleInteractionsAlignmentShapes addObject:v8];
}

- (unsigned)tupleInteractionsCandidatesShapesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_tupleInteractionsCandidatesShapes objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addTupleInteractionsCandidatesShapes:(unsigned int)shapes
{
  v3 = *&shapes;
  tupleInteractionsCandidatesShapes = self->_tupleInteractionsCandidatesShapes;
  if (!tupleInteractionsCandidatesShapes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_tupleInteractionsCandidatesShapes;
    self->_tupleInteractionsCandidatesShapes = array;

    tupleInteractionsCandidatesShapes = self->_tupleInteractionsCandidatesShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)tupleInteractionsCandidatesShapes addObject:v8];
}

- (unsigned)candidateInteractionsShapesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_candidateInteractionsShapes objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addCandidateInteractionsShapes:(unsigned int)shapes
{
  v3 = *&shapes;
  candidateInteractionsShapes = self->_candidateInteractionsShapes;
  if (!candidateInteractionsShapes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateInteractionsShapes;
    self->_candidateInteractionsShapes = array;

    candidateInteractionsShapes = self->_candidateInteractionsShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)candidateInteractionsShapes addObject:v8];
}

- (unsigned)deviceContextShapesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_deviceContextShapes objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addDeviceContextShapes:(unsigned int)shapes
{
  v3 = *&shapes;
  deviceContextShapes = self->_deviceContextShapes;
  if (!deviceContextShapes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_deviceContextShapes;
    self->_deviceContextShapes = array;

    deviceContextShapes = self->_deviceContextShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)deviceContextShapes addObject:v8];
}

- (unsigned)candidateTuplesShapesAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_candidateTuplesShapes objectAtIndexedSubscript:index];
  unsignedIntValue = [v3 unsignedIntValue];

  return unsignedIntValue;
}

- (void)addCandidateTuplesShapes:(unsigned int)shapes
{
  v3 = *&shapes;
  candidateTuplesShapes = self->_candidateTuplesShapes;
  if (!candidateTuplesShapes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateTuplesShapes;
    self->_candidateTuplesShapes = array;

    candidateTuplesShapes = self->_candidateTuplesShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)candidateTuplesShapes addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end