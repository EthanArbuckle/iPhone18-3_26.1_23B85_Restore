@interface SIRINLUEXTERNALUsoOntologyVocabulary
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addElementNames:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SIRINLUEXTERNALUsoOntologyVocabulary

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  usoVersion = self->_usoVersion;
  v6 = *(v4 + 2);
  if (usoVersion)
  {
    if (v6)
    {
      [(SIRINLUEXTERNALSemVer *)usoVersion mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SIRINLUEXTERNALUsoOntologyVocabulary *)self setUsoVersion:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 1);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(SIRINLUEXTERNALUsoOntologyVocabulary *)self addElementNames:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((usoVersion = self->_usoVersion, !(usoVersion | v4[2])) || -[SIRINLUEXTERNALSemVer isEqual:](usoVersion, "isEqual:")))
  {
    elementNames = self->_elementNames;
    if (elementNames | v4[1])
    {
      v7 = [(NSMutableArray *)elementNames isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SIRINLUEXTERNALSemVer *)self->_usoVersion copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_elementNames;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addElementNames:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_usoVersion)
  {
    [v8 setUsoVersion:?];
  }

  if ([(SIRINLUEXTERNALUsoOntologyVocabulary *)self elementNamesCount])
  {
    [v8 clearElementNames];
    v4 = [(SIRINLUEXTERNALUsoOntologyVocabulary *)self elementNamesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(SIRINLUEXTERNALUsoOntologyVocabulary *)self elementNamesAtIndex:i];
        [v8 addElementNames:v7];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_usoVersion)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_elementNames;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  usoVersion = self->_usoVersion;
  if (usoVersion)
  {
    v5 = [(SIRINLUEXTERNALSemVer *)usoVersion dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"uso_version"];
  }

  elementNames = self->_elementNames;
  if (elementNames)
  {
    [v3 setObject:elementNames forKey:@"element_names"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUEXTERNALUsoOntologyVocabulary;
  v4 = [(SIRINLUEXTERNALUsoOntologyVocabulary *)&v8 description];
  v5 = [(SIRINLUEXTERNALUsoOntologyVocabulary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addElementNames:(id)a3
{
  v4 = a3;
  elementNames = self->_elementNames;
  v8 = v4;
  if (!elementNames)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_elementNames;
    self->_elementNames = v6;

    v4 = v8;
    elementNames = self->_elementNames;
  }

  [(NSMutableArray *)elementNames addObject:v4];
}

@end