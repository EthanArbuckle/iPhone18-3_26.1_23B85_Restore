@interface PCPPredictedContextResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPredictedContextLocations:(id)a3;
- (void)addPredictedContextTransitions:(id)a3;
- (void)addPredictedContextWorkouts:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PCPPredictedContextResult

- (void)addPredictedContextLocations:(id)a3
{
  v4 = a3;
  predictedContextLocations = self->_predictedContextLocations;
  v8 = v4;
  if (!predictedContextLocations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_predictedContextLocations;
    self->_predictedContextLocations = v6;

    v4 = v8;
    predictedContextLocations = self->_predictedContextLocations;
  }

  [(NSMutableArray *)predictedContextLocations addObject:v4];
}

- (void)addPredictedContextTransitions:(id)a3
{
  v4 = a3;
  predictedContextTransitions = self->_predictedContextTransitions;
  v8 = v4;
  if (!predictedContextTransitions)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_predictedContextTransitions;
    self->_predictedContextTransitions = v6;

    v4 = v8;
    predictedContextTransitions = self->_predictedContextTransitions;
  }

  [(NSMutableArray *)predictedContextTransitions addObject:v4];
}

- (void)addPredictedContextWorkouts:(id)a3
{
  v4 = a3;
  predictedContextWorkouts = self->_predictedContextWorkouts;
  v8 = v4;
  if (!predictedContextWorkouts)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_predictedContextWorkouts;
    self->_predictedContextWorkouts = v6;

    v4 = v8;
    predictedContextWorkouts = self->_predictedContextWorkouts;
  }

  [(NSMutableArray *)predictedContextWorkouts addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PCPPredictedContextResult;
  v4 = [(PCPPredictedContextResult *)&v8 description];
  v5 = [(PCPPredictedContextResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_predictedContextLocations count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_predictedContextLocations, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v5 = self->_predictedContextLocations;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v39;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"predictedContextLocations"];
  }

  if ([(NSMutableArray *)self->_predictedContextTransitions count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_predictedContextTransitions, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = self->_predictedContextTransitions;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v34 + 1) + 8 * j) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"predictedContextTransitions"];
  }

  if ([(NSMutableArray *)self->_predictedContextWorkouts count])
  {
    v18 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_predictedContextWorkouts, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = self->_predictedContextWorkouts;
    v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v30 + 1) + 8 * k) dictionaryRepresentation];
          [v18 addObject:v24];
        }

        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v21);
    }

    [v3 setObject:v18 forKey:@"predictedContextWorkouts"];
  }

  if (*&self->_has)
  {
    v25 = [MEMORY[0x1E696AD98] numberWithBool:self->_computeRequested];
    [v3 setObject:v25 forKey:@"computeRequested"];
  }

  predictedContextAnalytics = self->_predictedContextAnalytics;
  if (predictedContextAnalytics)
  {
    v27 = [(PCPPredictedContextAnalytics *)predictedContextAnalytics dictionaryRepresentation];
    [v3 setObject:v27 forKey:@"predictedContextAnalytics"];
  }

  v28 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = self->_predictedContextLocations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = self->_predictedContextTransitions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v29 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_predictedContextWorkouts;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v25 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v19);
  }

  if (*&self->_has)
  {
    computeRequested = self->_computeRequested;
    PBDataWriterWriteBOOLField();
  }

  if (self->_predictedContextAnalytics)
  {
    PBDataWriterWriteSubmessage();
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v17 = a3;
  if ([(PCPPredictedContextResult *)self predictedContextLocationsCount])
  {
    [v17 clearPredictedContextLocations];
    v4 = [(PCPPredictedContextResult *)self predictedContextLocationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PCPPredictedContextResult *)self predictedContextLocationsAtIndex:i];
        [v17 addPredictedContextLocations:v7];
      }
    }
  }

  if ([(PCPPredictedContextResult *)self predictedContextTransitionsCount])
  {
    [v17 clearPredictedContextTransitions];
    v8 = [(PCPPredictedContextResult *)self predictedContextTransitionsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PCPPredictedContextResult *)self predictedContextTransitionsAtIndex:j];
        [v17 addPredictedContextTransitions:v11];
      }
    }
  }

  if ([(PCPPredictedContextResult *)self predictedContextWorkoutsCount])
  {
    [v17 clearPredictedContextWorkouts];
    v12 = [(PCPPredictedContextResult *)self predictedContextWorkoutsCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(PCPPredictedContextResult *)self predictedContextWorkoutsAtIndex:k];
        [v17 addPredictedContextWorkouts:v15];
      }
    }
  }

  v16 = v17;
  if (*&self->_has)
  {
    v17[40] = self->_computeRequested;
    v17[44] |= 1u;
  }

  if (self->_predictedContextAnalytics)
  {
    [v17 setPredictedContextAnalytics:?];
    v16 = v17;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = self->_predictedContextLocations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v36 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addPredictedContextLocations:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_predictedContextTransitions;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * v16) copyWithZone:a3];
        [v5 addPredictedContextTransitions:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v14);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v18 = self->_predictedContextWorkouts;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v29;
    do
    {
      v22 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v28 + 1) + 8 * v22) copyWithZone:{a3, v28}];
        [v5 addPredictedContextWorkouts:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v20);
  }

  if (*&self->_has)
  {
    *(v5 + 40) = self->_computeRequested;
    *(v5 + 44) |= 1u;
  }

  v24 = [(PCPPredictedContextAnalytics *)self->_predictedContextAnalytics copyWithZone:a3, v28];
  v25 = *(v5 + 8);
  *(v5 + 8) = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  predictedContextLocations = self->_predictedContextLocations;
  if (predictedContextLocations | *(v4 + 2))
  {
    if (![(NSMutableArray *)predictedContextLocations isEqual:?])
    {
      goto LABEL_13;
    }
  }

  predictedContextTransitions = self->_predictedContextTransitions;
  if (predictedContextTransitions | *(v4 + 3))
  {
    if (![(NSMutableArray *)predictedContextTransitions isEqual:?])
    {
      goto LABEL_13;
    }
  }

  predictedContextWorkouts = self->_predictedContextWorkouts;
  if (predictedContextWorkouts | *(v4 + 4))
  {
    if (![(NSMutableArray *)predictedContextWorkouts isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v8 = *(v4 + 44);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((*(v4 + 44) & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = *(v4 + 40);
  if (!self->_computeRequested)
  {
LABEL_9:
    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v10 = 0;
    goto LABEL_14;
  }

  if ((*(v4 + 40) & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  predictedContextAnalytics = self->_predictedContextAnalytics;
  if (predictedContextAnalytics | *(v4 + 1))
  {
    v10 = [(PCPPredictedContextAnalytics *)predictedContextAnalytics isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_predictedContextLocations hash];
  v4 = [(NSMutableArray *)self->_predictedContextTransitions hash];
  v5 = [(NSMutableArray *)self->_predictedContextWorkouts hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_computeRequested;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(PCPPredictedContextAnalytics *)self->_predictedContextAnalytics hash];
}

- (void)mergeFrom:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = *(v4 + 2);
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PCPPredictedContextResult *)self addPredictedContextLocations:*(*(&v31 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = *(v4 + 3);
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PCPPredictedContextResult *)self addPredictedContextTransitions:*(*(&v27 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v36 count:16];
    }

    while (v12);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = *(v4 + 4);
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PCPPredictedContextResult *)self addPredictedContextWorkouts:*(*(&v23 + 1) + 8 * k), v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v17);
  }

  if (*(v4 + 44))
  {
    self->_computeRequested = *(v4 + 40);
    *&self->_has |= 1u;
  }

  predictedContextAnalytics = self->_predictedContextAnalytics;
  v21 = *(v4 + 1);
  if (predictedContextAnalytics)
  {
    if (v21)
    {
      [(PCPPredictedContextAnalytics *)predictedContextAnalytics mergeFrom:?];
    }
  }

  else if (v21)
  {
    [(PCPPredictedContextResult *)self setPredictedContextAnalytics:?];
  }

  v22 = *MEMORY[0x1E69E9840];
}

@end