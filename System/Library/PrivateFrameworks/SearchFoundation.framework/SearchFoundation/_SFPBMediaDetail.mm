@interface _SFPBMediaDetail
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBMediaDetail)initWithDictionary:(id)dictionary;
- (_SFPBMediaDetail)initWithFacade:(id)facade;
- (_SFPBMediaDetail)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBMediaDetail

- (_SFPBMediaDetail)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBMediaDetail *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBMediaDetail *)v5 setTitle:title2];
    }

    content = [facadeCopy content];

    if (content)
    {
      v9 = [_SFPBText alloc];
      content2 = [facadeCopy content];
      v11 = [(_SFPBText *)v9 initWithFacade:content2];
      [(_SFPBMediaDetail *)v5 setContent:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBMediaDetail)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBMediaDetail;
  v5 = [(_SFPBMediaDetail *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBMediaDetail *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBText alloc] initWithDictionary:v8];
      [(_SFPBMediaDetail *)v5 setContent:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBMediaDetail)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBMediaDetail *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBMediaDetail *)self dictionaryRepresentation];
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
  if (self->_content)
  {
    content = [(_SFPBMediaDetail *)self content];
    dictionaryRepresentation = [content dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"content"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"content"];
    }
  }

  if (self->_title)
  {
    title = [(_SFPBMediaDetail *)self title];
    v8 = [title copy];
    [dictionary setObject:v8 forKeyedSubscript:@"title"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  title = [(_SFPBMediaDetail *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_11;
  }

  title3 = [(_SFPBMediaDetail *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBMediaDetail *)self title];
    title5 = [equalCopy title];
    v11 = [title4 isEqual:title5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  title = [(_SFPBMediaDetail *)self content];
  title2 = [equalCopy content];
  if ((title != 0) != (title2 == 0))
  {
    content = [(_SFPBMediaDetail *)self content];
    if (!content)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = content;
    content2 = [(_SFPBMediaDetail *)self content];
    content3 = [equalCopy content];
    v16 = [content2 isEqual:content3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  title = [(_SFPBMediaDetail *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  content = [(_SFPBMediaDetail *)self content];
  if (content)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end