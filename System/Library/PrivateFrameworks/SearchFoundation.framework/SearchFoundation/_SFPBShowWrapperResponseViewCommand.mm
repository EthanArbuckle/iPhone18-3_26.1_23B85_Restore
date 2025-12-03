@interface _SFPBShowWrapperResponseViewCommand
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBShowWrapperResponseViewCommand)initWithDictionary:(id)dictionary;
- (_SFPBShowWrapperResponseViewCommand)initWithFacade:(id)facade;
- (_SFPBShowWrapperResponseViewCommand)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBShowWrapperResponseViewCommand

- (_SFPBShowWrapperResponseViewCommand)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBShowWrapperResponseViewCommand *)self init];
  if (v5)
  {
    catModel = [facadeCopy catModel];

    if (catModel)
    {
      v7 = [_SFPBCATModel alloc];
      catModel2 = [facadeCopy catModel];
      v9 = [(_SFPBCATModel *)v7 initWithFacade:catModel2];
      [(_SFPBShowWrapperResponseViewCommand *)v5 setCatModel:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBShowWrapperResponseViewCommand)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBShowWrapperResponseViewCommand;
  v5 = [(_SFPBShowWrapperResponseViewCommand *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"catModel"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBCATModel alloc] initWithDictionary:v6];
      [(_SFPBShowWrapperResponseViewCommand *)v5 setCatModel:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBShowWrapperResponseViewCommand)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBShowWrapperResponseViewCommand *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBShowWrapperResponseViewCommand *)self dictionaryRepresentation];
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
  if (self->_catModel)
  {
    catModel = [(_SFPBShowWrapperResponseViewCommand *)self catModel];
    dictionaryRepresentation = [catModel dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"catModel"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"catModel"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    catModel = [(_SFPBShowWrapperResponseViewCommand *)self catModel];
    catModel2 = [equalCopy catModel];
    v7 = catModel2;
    if ((catModel != 0) != (catModel2 == 0))
    {
      catModel3 = [(_SFPBShowWrapperResponseViewCommand *)self catModel];
      if (!catModel3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = catModel3;
      catModel4 = [(_SFPBShowWrapperResponseViewCommand *)self catModel];
      catModel5 = [equalCopy catModel];
      v12 = [catModel4 isEqual:catModel5];

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
  toCopy = to;
  catModel = [(_SFPBShowWrapperResponseViewCommand *)self catModel];
  if (catModel)
  {
    PBDataWriterWriteSubmessage();
  }
}

@end