@interface JRSchemaJRModelInputShapes
- (BOOL)isEqual:(id)a3;
- (JRSchemaJRModelInputShapes)initWithDictionary:(id)a3;
- (JRSchemaJRModelInputShapes)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (unsigned)candidateInteractionsShapesAtIndex:(unint64_t)a3;
- (unsigned)candidateTuplesShapesAtIndex:(unint64_t)a3;
- (unsigned)deviceContextShapesAtIndex:(unint64_t)a3;
- (unsigned)similarityScoresShapesAtIndex:(unint64_t)a3;
- (unsigned)tupleInteractionsAlignmentShapesAtIndex:(unint64_t)a3;
- (unsigned)tupleInteractionsCandidatesShapesAtIndex:(unint64_t)a3;
- (void)addCandidateInteractionsShapes:(unsigned int)a3;
- (void)addCandidateTuplesShapes:(unsigned int)a3;
- (void)addDeviceContextShapes:(unsigned int)a3;
- (void)addSimilarityScoresShapes:(unsigned int)a3;
- (void)addTupleInteractionsAlignmentShapes:(unsigned int)a3;
- (void)addTupleInteractionsCandidatesShapes:(unsigned int)a3;
- (void)writeTo:(id)a3;
@end

@implementation JRSchemaJRModelInputShapes

- (JRSchemaJRModelInputShapes)initWithDictionary:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v78.receiver = self;
  v78.super_class = JRSchemaJRModelInputShapes;
  v5 = [(JRSchemaJRModelInputShapes *)&v78 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"candidateTuplesShapes"];
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

    v13 = [v4 objectForKeyedSubscript:@"deviceContextShapes"];
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

    v20 = [v4 objectForKeyedSubscript:@"candidateInteractionsShapes"];
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

    v27 = [v4 objectForKeyedSubscript:@"tupleInteractionsCandidatesShapes"];
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

    v34 = [v4 objectForKeyedSubscript:@"tupleInteractionsAlignmentShapes"];
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

    v41 = [v4 objectForKeyedSubscript:{@"similarityScoresShapes", v27}];
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

- (JRSchemaJRModelInputShapes)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(JRSchemaJRModelInputShapes *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(JRSchemaJRModelInputShapes *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_candidateInteractionsShapes count])
  {
    v4 = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"candidateInteractionsShapes"];
  }

  if ([(NSArray *)self->_candidateTuplesShapes count])
  {
    v6 = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"candidateTuplesShapes"];
  }

  if ([(NSArray *)self->_deviceContextShapes count])
  {
    v8 = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"deviceContextShapes"];
  }

  if ([(NSArray *)self->_similarityScoresShapes count])
  {
    v10 = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
    v11 = [v10 copy];
    [v3 setObject:v11 forKeyedSubscript:@"similarityScoresShapes"];
  }

  if ([(NSArray *)self->_tupleInteractionsAlignmentShapes count])
  {
    v12 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"tupleInteractionsAlignmentShapes"];
  }

  if ([(NSArray *)self->_tupleInteractionsCandidatesShapes count])
  {
    v14 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"tupleInteractionsCandidatesShapes"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
  v6 = [v4 candidateTuplesShapes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v7 = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
  if (v7)
  {
    v8 = v7;
    v9 = [(JRSchemaJRModelInputShapes *)self candidateTuplesShapes];
    v10 = [v4 candidateTuplesShapes];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
  v6 = [v4 deviceContextShapes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v12 = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
  if (v12)
  {
    v13 = v12;
    v14 = [(JRSchemaJRModelInputShapes *)self deviceContextShapes];
    v15 = [v4 deviceContextShapes];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
  v6 = [v4 candidateInteractionsShapes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v17 = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
  if (v17)
  {
    v18 = v17;
    v19 = [(JRSchemaJRModelInputShapes *)self candidateInteractionsShapes];
    v20 = [v4 candidateInteractionsShapes];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
  v6 = [v4 tupleInteractionsCandidatesShapes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v22 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
  if (v22)
  {
    v23 = v22;
    v24 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsCandidatesShapes];
    v25 = [v4 tupleInteractionsCandidatesShapes];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
  v6 = [v4 tupleInteractionsAlignmentShapes];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_31;
  }

  v27 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
  if (v27)
  {
    v28 = v27;
    v29 = [(JRSchemaJRModelInputShapes *)self tupleInteractionsAlignmentShapes];
    v30 = [v4 tupleInteractionsAlignmentShapes];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v5 = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
  v6 = [v4 similarityScoresShapes];
  if ((v5 != 0) != (v6 == 0))
  {
    v32 = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
    if (!v32)
    {

LABEL_35:
      v37 = 1;
      goto LABEL_33;
    }

    v33 = v32;
    v34 = [(JRSchemaJRModelInputShapes *)self similarityScoresShapes];
    v35 = [v4 similarityScoresShapes];
    v36 = [v34 isEqual:v35];

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

- (void)writeTo:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (unsigned)similarityScoresShapesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_similarityScoresShapes objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addSimilarityScoresShapes:(unsigned int)a3
{
  v3 = *&a3;
  similarityScoresShapes = self->_similarityScoresShapes;
  if (!similarityScoresShapes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_similarityScoresShapes;
    self->_similarityScoresShapes = v6;

    similarityScoresShapes = self->_similarityScoresShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)similarityScoresShapes addObject:v8];
}

- (unsigned)tupleInteractionsAlignmentShapesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_tupleInteractionsAlignmentShapes objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addTupleInteractionsAlignmentShapes:(unsigned int)a3
{
  v3 = *&a3;
  tupleInteractionsAlignmentShapes = self->_tupleInteractionsAlignmentShapes;
  if (!tupleInteractionsAlignmentShapes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tupleInteractionsAlignmentShapes;
    self->_tupleInteractionsAlignmentShapes = v6;

    tupleInteractionsAlignmentShapes = self->_tupleInteractionsAlignmentShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)tupleInteractionsAlignmentShapes addObject:v8];
}

- (unsigned)tupleInteractionsCandidatesShapesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_tupleInteractionsCandidatesShapes objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addTupleInteractionsCandidatesShapes:(unsigned int)a3
{
  v3 = *&a3;
  tupleInteractionsCandidatesShapes = self->_tupleInteractionsCandidatesShapes;
  if (!tupleInteractionsCandidatesShapes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_tupleInteractionsCandidatesShapes;
    self->_tupleInteractionsCandidatesShapes = v6;

    tupleInteractionsCandidatesShapes = self->_tupleInteractionsCandidatesShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)tupleInteractionsCandidatesShapes addObject:v8];
}

- (unsigned)candidateInteractionsShapesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_candidateInteractionsShapes objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addCandidateInteractionsShapes:(unsigned int)a3
{
  v3 = *&a3;
  candidateInteractionsShapes = self->_candidateInteractionsShapes;
  if (!candidateInteractionsShapes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateInteractionsShapes;
    self->_candidateInteractionsShapes = v6;

    candidateInteractionsShapes = self->_candidateInteractionsShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)candidateInteractionsShapes addObject:v8];
}

- (unsigned)deviceContextShapesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_deviceContextShapes objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addDeviceContextShapes:(unsigned int)a3
{
  v3 = *&a3;
  deviceContextShapes = self->_deviceContextShapes;
  if (!deviceContextShapes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_deviceContextShapes;
    self->_deviceContextShapes = v6;

    deviceContextShapes = self->_deviceContextShapes;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  [(NSArray *)deviceContextShapes addObject:v8];
}

- (unsigned)candidateTuplesShapesAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_candidateTuplesShapes objectAtIndexedSubscript:a3];
  v4 = [v3 unsignedIntValue];

  return v4;
}

- (void)addCandidateTuplesShapes:(unsigned int)a3
{
  v3 = *&a3;
  candidateTuplesShapes = self->_candidateTuplesShapes;
  if (!candidateTuplesShapes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_candidateTuplesShapes;
    self->_candidateTuplesShapes = v6;

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