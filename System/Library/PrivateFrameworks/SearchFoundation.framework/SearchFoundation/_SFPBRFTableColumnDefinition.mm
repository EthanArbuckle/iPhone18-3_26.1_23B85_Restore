@interface _SFPBRFTableColumnDefinition
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBRFTableColumnDefinition)initWithDictionary:(id)dictionary;
- (_SFPBRFTableColumnDefinition)initWithFacade:(id)facade;
- (_SFPBRFTableColumnDefinition)initWithJSON:(id)n;
- (_SFPBRFTableContentColumnDefinition)content;
- (_SFPBRFTableSpacerColumnDefinition)spacer;
- (id)dictionaryRepresentation;
- (void)setContent:(id)content;
- (void)setSpacer:(id)spacer;
- (void)writeTo:(id)to;
@end

@implementation _SFPBRFTableColumnDefinition

- (_SFPBRFTableColumnDefinition)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBRFTableColumnDefinition *)self init];
  if (v5)
  {
    if ([facadeCopy hasSpacer])
    {
      spacer = [facadeCopy spacer];

      if (spacer)
      {
        v7 = [_SFPBRFTableSpacerColumnDefinition alloc];
        spacer2 = [facadeCopy spacer];
        v9 = [(_SFPBRFTableSpacerColumnDefinition *)v7 initWithFacade:spacer2];
        [(_SFPBRFTableColumnDefinition *)v5 setSpacer:v9];
      }
    }

    if ([facadeCopy hasContent])
    {
      content = [facadeCopy content];

      if (content)
      {
        v11 = [_SFPBRFTableContentColumnDefinition alloc];
        content2 = [facadeCopy content];
        v13 = [(_SFPBRFTableContentColumnDefinition *)v11 initWithFacade:content2];
        [(_SFPBRFTableColumnDefinition *)v5 setContent:v13];
      }
    }

    v14 = v5;
  }

  return v5;
}

- (_SFPBRFTableColumnDefinition)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = _SFPBRFTableColumnDefinition;
  v5 = [(_SFPBRFTableColumnDefinition *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"spacer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBRFTableSpacerColumnDefinition alloc] initWithDictionary:v6];
      [(_SFPBRFTableColumnDefinition *)v5 setSpacer:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"content"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[_SFPBRFTableContentColumnDefinition alloc] initWithDictionary:v8];
      [(_SFPBRFTableColumnDefinition *)v5 setContent:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBRFTableColumnDefinition)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBRFTableColumnDefinition *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBRFTableColumnDefinition *)self dictionaryRepresentation];
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
    content = [(_SFPBRFTableColumnDefinition *)self content];
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

  if (self->_spacer)
  {
    spacer = [(_SFPBRFTableColumnDefinition *)self spacer];
    dictionaryRepresentation2 = [spacer dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"spacer"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"spacer"];
    }
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

  spacer = [(_SFPBRFTableColumnDefinition *)self spacer];
  spacer2 = [equalCopy spacer];
  if ((spacer != 0) == (spacer2 == 0))
  {
    goto LABEL_11;
  }

  spacer3 = [(_SFPBRFTableColumnDefinition *)self spacer];
  if (spacer3)
  {
    v8 = spacer3;
    spacer4 = [(_SFPBRFTableColumnDefinition *)self spacer];
    spacer5 = [equalCopy spacer];
    v11 = [spacer4 isEqual:spacer5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  spacer = [(_SFPBRFTableColumnDefinition *)self content];
  spacer2 = [equalCopy content];
  if ((spacer != 0) != (spacer2 == 0))
  {
    content = [(_SFPBRFTableColumnDefinition *)self content];
    if (!content)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = content;
    content2 = [(_SFPBRFTableColumnDefinition *)self content];
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
  spacer = [(_SFPBRFTableColumnDefinition *)self spacer];
  if (spacer)
  {
    PBDataWriterWriteSubmessage();
  }

  content = [(_SFPBRFTableColumnDefinition *)self content];
  if (content)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBRFTableContentColumnDefinition)content
{
  if (self->_whichDefinition == 2)
  {
    v3 = self->_content;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setContent:(id)content
{
  contentCopy = content;
  spacer = self->_spacer;
  self->_spacer = 0;

  self->_whichDefinition = 2 * (contentCopy != 0);
  content = self->_content;
  self->_content = contentCopy;
}

- (_SFPBRFTableSpacerColumnDefinition)spacer
{
  if (self->_whichDefinition == 1)
  {
    v3 = self->_spacer;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSpacer:(id)spacer
{
  spacerCopy = spacer;
  content = self->_content;
  self->_content = 0;

  self->_whichDefinition = spacerCopy != 0;
  spacer = self->_spacer;
  self->_spacer = spacerCopy;
}

@end