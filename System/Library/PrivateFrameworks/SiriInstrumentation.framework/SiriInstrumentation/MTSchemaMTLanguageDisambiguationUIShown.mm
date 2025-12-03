@interface MTSchemaMTLanguageDisambiguationUIShown
- (BOOL)isEqual:(id)equal;
- (MTSchemaMTLanguageDisambiguationUIShown)initWithDictionary:(id)dictionary;
- (MTSchemaMTLanguageDisambiguationUIShown)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int)localeAtIndex:(unint64_t)index;
- (void)addLocale:(int)locale;
- (void)writeTo:(id)to;
@end

@implementation MTSchemaMTLanguageDisambiguationUIShown

- (MTSchemaMTLanguageDisambiguationUIShown)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = MTSchemaMTLanguageDisambiguationUIShown;
  v5 = [(MTSchemaMTLanguageDisambiguationUIShown *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"locale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              -[MTSchemaMTLanguageDisambiguationUIShown addLocale:](v5, "addLocale:", [v12 intValue]);
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v20 count:16];
        }

        while (v9);
      }
    }

    v13 = v5;
  }

  return v5;
}

- (MTSchemaMTLanguageDisambiguationUIShown)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MTSchemaMTLanguageDisambiguationUIShown *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MTSchemaMTLanguageDisambiguationUIShown *)self dictionaryRepresentation];
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
  if ([(NSArray *)self->_locales count])
  {
    locales = [(MTSchemaMTLanguageDisambiguationUIShown *)self locales];
    v5 = [locales copy];
    [dictionary setObject:v5 forKeyedSubscript:@"locale"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    locales = [(MTSchemaMTLanguageDisambiguationUIShown *)self locales];
    locales2 = [equalCopy locales];
    v7 = locales2;
    if ((locales != 0) != (locales2 == 0))
    {
      locales3 = [(MTSchemaMTLanguageDisambiguationUIShown *)self locales];
      if (!locales3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = locales3;
      locales4 = [(MTSchemaMTLanguageDisambiguationUIShown *)self locales];
      locales5 = [equalCopy locales];
      v12 = [locales4 isEqual:locales5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_locales;
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

- (int)localeAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_locales objectAtIndexedSubscript:index];
  intValue = [v3 intValue];

  return intValue;
}

- (void)addLocale:(int)locale
{
  v3 = *&locale;
  locales = self->_locales;
  if (!locales)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_locales;
    self->_locales = array;

    locales = self->_locales;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [(NSArray *)locales addObject:v8];
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end