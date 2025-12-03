@interface IFTSchemaIFTActionSuccess
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTActionSuccess)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTActionSuccess)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAppLaunched:(BOOL)launched;
- (void)setHasDidShowInAppResult:(BOOL)result;
- (void)setHasShouldOpen:(BOOL)open;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTActionSuccess

- (IFTSchemaIFTActionSuccess)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = IFTSchemaIFTActionSuccess;
  v5 = [(IFTSchemaIFTActionSuccess *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"returnValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[IFTSchemaIFTTypedValue alloc] initWithDictionary:v7];
      [(IFTSchemaIFTActionSuccess *)v5 setReturnValue:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"appLaunched"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setAppLaunched:](v5, "setAppLaunched:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"didShowInAppResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setDidShowInAppResult:](v5, "setDidShowInAppResult:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"followUpAction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTFollowUpAction alloc] initWithDictionary:v11];
      [(IFTSchemaIFTActionSuccess *)v5 setFollowUpAction:v12];
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"shouldOpen"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTActionSuccess setShouldOpen:](v5, "setShouldOpen:", [v13 BOOLValue]);
    }

    v14 = v5;
  }

  return v5;
}

- (IFTSchemaIFTActionSuccess)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTActionSuccess *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTActionSuccess *)self dictionaryRepresentation];
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
  v4 = *(&self->_shouldOpen + 1);
  if ((v4 & 2) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionSuccess appLaunched](self, "appLaunched")}];
    [dictionary setObject:v8 forKeyedSubscript:@"appLaunched"];

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
  [dictionary setObject:v9 forKeyedSubscript:@"didShowInAppResult"];

  if (*(&self->_shouldOpen + 1))
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionSuccess exists](self, "exists")}];
    [dictionary setObject:v5 forKeyedSubscript:@"exists"];
  }

LABEL_5:
  if (self->_followUpAction)
  {
    followUpAction = [(IFTSchemaIFTActionSuccess *)self followUpAction];
    dictionaryRepresentation = [followUpAction dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"followUpAction"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"followUpAction"];
    }
  }

  if (self->_returnValue)
  {
    returnValue = [(IFTSchemaIFTActionSuccess *)self returnValue];
    dictionaryRepresentation2 = [returnValue dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"returnValue"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"returnValue"];
    }
  }

  if ((*(&self->_shouldOpen + 1) & 8) != 0)
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTActionSuccess shouldOpen](self, "shouldOpen")}];
    [dictionary setObject:v14 forKeyedSubscript:@"shouldOpen"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  if (*(&self->_shouldOpen + 1) != (equalCopy[41] & 1))
  {
    goto LABEL_22;
  }

  if (*(&self->_shouldOpen + 1))
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_22;
    }
  }

  returnValue = [(IFTSchemaIFTActionSuccess *)self returnValue];
  returnValue2 = [equalCopy returnValue];
  if ((returnValue != 0) == (returnValue2 == 0))
  {
    goto LABEL_21;
  }

  returnValue3 = [(IFTSchemaIFTActionSuccess *)self returnValue];
  if (returnValue3)
  {
    v9 = returnValue3;
    returnValue4 = [(IFTSchemaIFTActionSuccess *)self returnValue];
    returnValue5 = [equalCopy returnValue];
    v12 = [returnValue4 isEqual:returnValue5];

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
  v15 = equalCopy[41];
  if (v14 != ((v15 >> 1) & 1))
  {
    goto LABEL_22;
  }

  if (v14)
  {
    appLaunched = self->_appLaunched;
    if (appLaunched != [equalCopy appLaunched])
    {
      goto LABEL_22;
    }

    v13 = *(&self->_shouldOpen + 1);
    v15 = equalCopy[41];
  }

  v17 = (v13 >> 2) & 1;
  if (v17 != ((v15 >> 2) & 1))
  {
    goto LABEL_22;
  }

  if (v17)
  {
    didShowInAppResult = self->_didShowInAppResult;
    if (didShowInAppResult != [equalCopy didShowInAppResult])
    {
      goto LABEL_22;
    }
  }

  returnValue = [(IFTSchemaIFTActionSuccess *)self followUpAction];
  returnValue2 = [equalCopy followUpAction];
  if ((returnValue != 0) == (returnValue2 == 0))
  {
LABEL_21:

    goto LABEL_22;
  }

  followUpAction = [(IFTSchemaIFTActionSuccess *)self followUpAction];
  if (followUpAction)
  {
    v20 = followUpAction;
    followUpAction2 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
    followUpAction3 = [equalCopy followUpAction];
    v23 = [followUpAction2 isEqual:followUpAction3];

    if (!v23)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  v26 = (*(&self->_shouldOpen + 1) >> 3) & 1;
  if (v26 == ((equalCopy[41] >> 3) & 1))
  {
    if (!v26 || (shouldOpen = self->_shouldOpen, shouldOpen == [equalCopy shouldOpen]))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_shouldOpen + 1))
  {
    PBDataWriterWriteBOOLField();
  }

  returnValue = [(IFTSchemaIFTActionSuccess *)self returnValue];

  if (returnValue)
  {
    returnValue2 = [(IFTSchemaIFTActionSuccess *)self returnValue];
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

  followUpAction = [(IFTSchemaIFTActionSuccess *)self followUpAction];

  if (followUpAction)
  {
    followUpAction2 = [(IFTSchemaIFTActionSuccess *)self followUpAction];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_shouldOpen + 1) & 8) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasShouldOpen:(BOOL)open
{
  if (open)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xF7 | v3;
}

- (void)setHasDidShowInAppResult:(BOOL)result
{
  if (result)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xFB | v3;
}

- (void)setHasAppLaunched:(BOOL)launched
{
  if (launched)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_shouldOpen + 1) = *(&self->_shouldOpen + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTActionSuccess;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  returnValue = [(IFTSchemaIFTActionSuccess *)self returnValue];
  v7 = [returnValue applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTActionSuccess *)self deleteReturnValue];
  }

  followUpAction = [(IFTSchemaIFTActionSuccess *)self followUpAction];
  v10 = [followUpAction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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