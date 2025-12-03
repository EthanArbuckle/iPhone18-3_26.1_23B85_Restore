@interface _SFPBTitleSubtitleTuple
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTitleSubtitleTuple)initWithDictionary:(id)dictionary;
- (_SFPBTitleSubtitleTuple)initWithFacade:(id)facade;
- (_SFPBTitleSubtitleTuple)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTitleSubtitleTuple

- (_SFPBTitleSubtitleTuple)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBTitleSubtitleTuple *)self init];
  if (v5)
  {
    title = [facadeCopy title];

    if (title)
    {
      title2 = [facadeCopy title];
      [(_SFPBTitleSubtitleTuple *)v5 setTitle:title2];
    }

    subtitle = [facadeCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [facadeCopy subtitle];
      [(_SFPBTitleSubtitleTuple *)v5 setSubtitle:subtitle2];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBTitleSubtitleTuple)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBTitleSubtitleTuple;
  v5 = [(_SFPBTitleSubtitleTuple *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBTitleSubtitleTuple *)v5 setTitle:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"subtitle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBTitleSubtitleTuple *)v5 setSubtitle:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBTitleSubtitleTuple)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTitleSubtitleTuple *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTitleSubtitleTuple *)self dictionaryRepresentation];
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
  if (self->_subtitle)
  {
    subtitle = [(_SFPBTitleSubtitleTuple *)self subtitle];
    v5 = [subtitle copy];
    [dictionary setObject:v5 forKeyedSubscript:@"subtitle"];
  }

  if (self->_title)
  {
    title = [(_SFPBTitleSubtitleTuple *)self title];
    v7 = [title copy];
    [dictionary setObject:v7 forKeyedSubscript:@"title"];
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

  title = [(_SFPBTitleSubtitleTuple *)self title];
  title2 = [equalCopy title];
  if ((title != 0) == (title2 == 0))
  {
    goto LABEL_11;
  }

  title3 = [(_SFPBTitleSubtitleTuple *)self title];
  if (title3)
  {
    v8 = title3;
    title4 = [(_SFPBTitleSubtitleTuple *)self title];
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

  title = [(_SFPBTitleSubtitleTuple *)self subtitle];
  title2 = [equalCopy subtitle];
  if ((title != 0) != (title2 == 0))
  {
    subtitle = [(_SFPBTitleSubtitleTuple *)self subtitle];
    if (!subtitle)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = subtitle;
    subtitle2 = [(_SFPBTitleSubtitleTuple *)self subtitle];
    subtitle3 = [equalCopy subtitle];
    v16 = [subtitle2 isEqual:subtitle3];

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
  title = [(_SFPBTitleSubtitleTuple *)self title];
  if (title)
  {
    PBDataWriterWriteStringField();
  }

  subtitle = [(_SFPBTitleSubtitleTuple *)self subtitle];
  if (subtitle)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setSubtitle:(id)subtitle
{
  v4 = [subtitle copy];
  subtitle = self->_subtitle;
  self->_subtitle = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setTitle:(id)title
{
  v4 = [title copy];
  title = self->_title;
  self->_title = v4;

  MEMORY[0x1EEE66BB8]();
}

@end