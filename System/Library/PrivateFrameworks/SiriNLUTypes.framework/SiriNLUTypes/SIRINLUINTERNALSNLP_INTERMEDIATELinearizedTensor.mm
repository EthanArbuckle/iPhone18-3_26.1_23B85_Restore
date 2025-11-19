@interface SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)numericalizedFeatureAtIndex:(unint64_t)a3;
- (unsigned)shapeAtIndex:(unint64_t)a3;
- (void)addFeature:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 shapesCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor addShape:](self, "addShape:", [v4 shapeAtIndex:i]);
    }
  }

  v8 = [v4 numericalizedFeaturesCount];
  if (v8)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      -[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor addNumericalizedFeature:](self, "addNumericalizedFeature:", [v4 numericalizedFeatureAtIndex:j]);
    }
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v4[7];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self addFeature:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = PBRepeatedUInt32Hash();
  v4 = PBRepeatedUInt32Hash() ^ v3;
  return v4 ^ [(NSMutableArray *)self->_features hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && PBRepeatedUInt32IsEqual() && PBRepeatedUInt32IsEqual())
  {
    features = self->_features;
    if (features | v4[7])
    {
      v6 = [(NSMutableArray *)features isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_features;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * v10) copyWithZone:{a3, v14}];
        [v5 addFeature:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v14 = a3;
  if ([(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self shapesCount])
  {
    [v14 clearShapes];
    v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self shapesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v14 addShape:{-[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor shapeAtIndex:](self, "shapeAtIndex:", i)}];
      }
    }
  }

  if ([(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self numericalizedFeaturesCount])
  {
    [v14 clearNumericalizedFeatures];
    v7 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self numericalizedFeaturesCount];
    if (v7)
    {
      v8 = v7;
      for (j = 0; j != v8; ++j)
      {
        [v14 addNumericalizedFeature:{-[SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor numericalizedFeatureAtIndex:](self, "numericalizedFeatureAtIndex:", j)}];
      }
    }
  }

  if ([(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self featuresCount])
  {
    [v14 clearFeatures];
    v10 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self featuresCount];
    if (v10)
    {
      v11 = v10;
      for (k = 0; k != v11; ++k)
      {
        v13 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self featureAtIndex:k];
        [v14 addFeature:v13];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_shapes.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_shapes.list[v5];
      PBDataWriterWriteUint32Field();
      ++v5;
    }

    while (v5 < self->_shapes.count);
  }

  if (self->_numericalizedFeatures.count)
  {
    v7 = 0;
    do
    {
      v8 = self->_numericalizedFeatures.list[v7];
      PBDataWriterWriteUint32Field();
      ++v7;
    }

    while (v7 < self->_numericalizedFeatures.count);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_features;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = PBRepeatedUInt32NSArray();
  [v3 setObject:v4 forKey:@"shape"];

  v5 = PBRepeatedUInt32NSArray();
  [v3 setObject:v5 forKey:@"numericalized_feature"];

  features = self->_features;
  if (features)
  {
    [v3 setObject:features forKey:@"feature"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor;
  v4 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)&v8 description];
  v5 = [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addFeature:(id)a3
{
  v4 = a3;
  features = self->_features;
  v8 = v4;
  if (!features)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_features;
    self->_features = v6;

    v4 = v8;
    features = self->_features;
  }

  [(NSMutableArray *)features addObject:v4];
}

- (unsigned)numericalizedFeatureAtIndex:(unint64_t)a3
{
  p_numericalizedFeatures = &self->_numericalizedFeatures;
  count = self->_numericalizedFeatures.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_numericalizedFeatures->list[a3];
}

- (unsigned)shapeAtIndex:(unint64_t)a3
{
  p_shapes = &self->_shapes;
  count = self->_shapes.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_shapes->list[a3];
}

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor;
  [(SIRINLUINTERNALSNLP_INTERMEDIATELinearizedTensor *)&v3 dealloc];
}

@end