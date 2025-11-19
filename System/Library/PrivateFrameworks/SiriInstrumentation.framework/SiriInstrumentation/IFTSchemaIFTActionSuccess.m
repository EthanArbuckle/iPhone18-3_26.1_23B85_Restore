@interface IFTSchemaIFTActionSuccess
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTActionSuccess)initWithDictionary:(id)a3;
- (IFTSchemaIFTActionSuccess)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppLaunched:(BOOL)a3;
- (void)setHasDidShowInAppResult:(BOOL)a3;
- (void)setHasShouldOpen:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTActionSuccess

- (IFTSchemaIFTActionSuccess)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTActionSuccess;
  v5 = [(IFTSchemaIFTActionSuccess *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"returnValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v7];
      [(IFTSchemaIFTActionSuccess *)v5 setReturnValue:v8];
    }

    v9 = [v4 objectForKeyedSubscript:@"appLaunched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setAppLaunched:](v5, "setAppLaunched:", [v9 BOOLValue]);
    }

    v10 = [v4 objectForKeyedSubscript:@"didShowInAppResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setDidShowInAppResult:](v5, "setDidShowInAppResult:", [v10 BOOLValue]);
    }

    v11 = [v4 objectForKeyedSubscript:@"followUpAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTFollowUpAction alloc] initWithDictionary:v11];
      [(IFTSchemaIFTActionSuccess *)v5 setFollowUpAction:v12];
    }

    v13 = [v4 objectForKeyedSubscript:@"shouldOpen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setShouldOpen:](v5, "setShouldOpen:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionSuccess)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionSuccess *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTActionSuccess *)self dictionaryRepresentation];
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
  v4 = *(&self->_shouldOpen + 1);
  if ((v4 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionSuccess appLaunched](self, "appLaunched")}];
    [v3 setObject:v8 forKeyedSubscript:@"appLaunched"];

    v4 = *(&self->_shouldOpen + 1);
    if ((v4 & 4) == 0)
    {
LABEL_3:
      if ((v4 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_shouldOpen + 1) & 4) == 0)
  {
    goto LABEL_3;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionSuccess didShowInAppResult](self, "didShowInAppResult")}];
  [v3 setObject:v9 forKeyedSubscript:@"didShowInAppResult"];

  if (*(&self->_shouldOpen + 1))
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionSuccess exists](self, "exists")}];
    [v3 setObject:v5 forKeyedSubscript:@"exists"];
  }

LABEL_5:
  if (self->_followUpAction)
  {
    v6 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
    v7 = [v6 dictionaryRepresentation];
    if (v7)
    {
      [v3 setObject:v7 forKeyedSubscript:@"followUpAction"];
    }

    else
    {
      v10 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v10 forKeyedSubscript:@"followUpAction"];
    }
  }

  if (self->_returnValue)
  {
    v11 = [(IFTSchemaIFTActionSuccess *)self returnValue];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"returnValue"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"returnValue"];
    }
  }

  if ((*(&self->_shouldOpen + 1) & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionSuccess shouldOpen](self, "shouldOpen")}];
    [v3 setObject:v14 forKeyedSubscript:@"shouldOpen"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_shouldOpen + 1))
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(IFTSchemaIFTTypedValue *)self->_returnValue hash];
  if ((*(&self->_shouldOpen + 1) & 2) != 0)
  {
    v5 = 2654435761 * self->_appLaunched;
    if ((*(&self->_shouldOpen + 1) & 4) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if ((*(&self->_shouldOpen + 1) & 4) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_didShowInAppResult;
      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = [(IFTSchemaIFTFollowUpAction *)self->_followUpAction hash];
  if ((*(&self->_shouldOpen + 1) & 8) != 0)
  {
    v8 = 2654435761 * self->_shouldOpen;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  if (*(&self->_shouldOpen + 1) != (v4[41] & 1))
  {
    goto LABEL_22;
  }

  if (*(&self->_shouldOpen + 1))
  {
    exists = self->_exists;
    if (exists != [v4 exists])
    {
      goto LABEL_22;
    }
  }

  v6 = [(IFTSchemaIFTActionSuccess *)self returnValue];
  v7 = [v4 returnValue];
  if ((v6 != 0) == (v7 == 0))
  {
    goto LABEL_21;
  }

  v8 = [(IFTSchemaIFTActionSuccess *)self returnValue];
  if (v8)
  {
    v9 = v8;
    v10 = [(IFTSchemaIFTActionSuccess *)self returnValue];
    v11 = [v4 returnValue];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v13 = *(&self->_shouldOpen + 1);
  v14 = (v13 >> 1) & 1;
  v15 = v4[41];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    appLaunched = self->_appLaunched;
    if (appLaunched != [v4 appLaunched])
    {
      goto LABEL_22;
    }

    v13 = *(&self->_shouldOpen + 1);
    v15 = v4[41];
  }

  v17 = (v13 >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v17)
  {
    didShowInAppResult = self->_didShowInAppResult;
    if (didShowInAppResult != [v4 didShowInAppResult])
    {
      goto LABEL_22;
    }
  }

  v6 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
  v7 = [v4 followUpAction];
  if ((v6 != 0) == (v7 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  v19 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
  if (v19)
  {
    v20 = v19;
    v21 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
    v22 = [v4 followUpAction];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v26 = (*(&self->_shouldOpen + 1) >> 3) & 1;
  if (v26 == ((v4[41] >> 3) & 1))
  {
    if (!v26 || (shouldOpen = self->_shouldOpen, shouldOpen == [v4 shouldOpen]))
    {
      v24 = 1;
      goto LABEL_23;
    }
  }

LABEL_22:
  v24 = 0;
LABEL_23:

  return v24;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (*(&self->_shouldOpen + 1))
  {
    PBDataWriterWriteBOOLField();
  }

  v4 = [(IFTSchemaIFTActionSuccess *)self returnValue];

  if (v4)
  {
    v5 = [(IFTSchemaIFTActionSuccess *)self returnValue];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_shouldOpen + 1);
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_shouldOpen + 1);
  }

  if ((v6 & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  v7 = [(IFTSchemaIFTActionSuccess *)self followUpAction];

  if (v7)
  {
    v8 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_shouldOpen + 1) & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasShouldOpen:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xF7 | v3;
}

- (void)setHasDidShowInAppResult:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xFB | v3;
}

- (void)setHasAppLaunched:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTActionSuccess;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTActionSuccess *)self returnValue];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTActionSuccess *)self deleteReturnValue];
  }

  v9 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTActionSuccess *)self deleteFollowUpAction];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end