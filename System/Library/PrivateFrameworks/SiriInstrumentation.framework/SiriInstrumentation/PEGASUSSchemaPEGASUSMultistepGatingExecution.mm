@interface PEGASUSSchemaPEGASUSMultistepGatingExecution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSMultistepGatingExecution)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSMultistepGatingExecution)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)domainsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)addDomains:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSMultistepGatingExecution

- (PEGASUSSchemaPEGASUSMultistepGatingExecution)initWithDictionary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PEGASUSSchemaPEGASUSMultistepGatingExecution;
  v5 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)&v20 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"loopbackDepth"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSMultistepGatingExecution setLoopbackDepth:](v5, "setLoopbackDepth:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"domains"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
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

            v13 = *(*(&v16 + 1) + 8 * v12);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[PEGASUSSchemaPEGASUSMultistepGatingExecution addDomains:](v5, "addDomains:", [v13 intValue]);
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v10);
      }
    }

    v14 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSMultistepGatingExecution)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_domains count])
  {
    v4 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self domains];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"domains"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[PEGASUSSchemaPEGASUSMultistepGatingExecution loopbackDepth](self, "loopbackDepth")}];
    [v3 setObject:v6 forKeyedSubscript:@"loopbackDepth"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_loopbackDepth;
  }

  else
  {
    v2 = 0;
  }

  return [(NSArray *)self->_domains hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    if ((*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (loopbackDepth = self->_loopbackDepth, loopbackDepth == [v4 loopbackDepth]))
      {
        v6 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self domains];
        v7 = [v4 domains];
        v8 = v7;
        if ((v6 != 0) != (v7 == 0))
        {
          v9 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self domains];
          if (!v9)
          {

LABEL_13:
            v14 = 1;
            goto LABEL_11;
          }

          v10 = v9;
          v11 = [(PEGASUSSchemaPEGASUSMultistepGatingExecution *)self domains];
          v12 = [v4 domains];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
        }
      }
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_domains;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) intValue];
        PBDataWriterWriteInt32Field();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (int)domainsAtIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_domains objectAtIndexedSubscript:a3];
  v4 = [v3 intValue];

  return v4;
}

- (void)addDomains:(int)a3
{
  v3 = *&a3;
  domains = self->_domains;
  if (!domains)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_domains;
    self->_domains = v6;

    domains = self->_domains;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)domains addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end