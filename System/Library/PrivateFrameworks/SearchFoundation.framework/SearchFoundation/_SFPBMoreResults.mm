@interface _SFPBMoreResults
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMoreResults)initWithDictionary:(id)dictionary;
- (_SFPBMoreResults)initWithFacade:(id)facade;
- (_SFPBMoreResults)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setLabel:(id)label;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMoreResults

- (_SFPBMoreResults)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMoreResults *)self init];
  if (v5)
  {
    label = [facadeCopy label];

    if (label)
    {
      label2 = [facadeCopy label];
      [(_SFPBMoreResults *)v5 setLabel:label2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBMoreResults)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBMoreResults;
  v5 = [(_SFPBMoreResults *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"label"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMoreResults *)v5 setLabel:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBMoreResults)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMoreResults *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMoreResults *)self dictionaryRepresentation];
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
  if (self->_label)
  {
    label = [(_SFPBMoreResults *)self label];
    v5 = [label copy];
    [dictionary setObject:v5 forKeyedSubscript:@"label"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    label = [(_SFPBMoreResults *)self label];
    label2 = [equalCopy label];
    v7 = label2;
    if ((label != 0) != (label2 == 0))
    {
      label3 = [(_SFPBMoreResults *)self label];
      if (!label3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = label3;
      label4 = [(_SFPBMoreResults *)self label];
      label5 = [equalCopy label];
      v12 = [label4 isEqual:label5];

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
  label = [(_SFPBMoreResults *)self label];
  if (label)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setLabel:(id)label
{
  v4 = [label copy];
  label = self->_label;
  self->_label = v4;

  MEMORY[0x1EEE66BB8]();
}

@end