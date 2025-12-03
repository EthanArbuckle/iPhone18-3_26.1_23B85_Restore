@interface _SFPBTextCopyItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBTextCopyItem)initWithDictionary:(id)dictionary;
- (_SFPBTextCopyItem)initWithFacade:(id)facade;
- (_SFPBTextCopyItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setCopyableString:(id)string;
- (void)writeTo:(id)to;
@end

@implementation _SFPBTextCopyItem

- (_SFPBTextCopyItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBTextCopyItem *)self init];
  if (v5)
  {
    copyableString = [facadeCopy copyableString];

    if (copyableString)
    {
      copyableString2 = [facadeCopy copyableString];
      [(_SFPBTextCopyItem *)v5 setCopyableString:copyableString2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBTextCopyItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBTextCopyItem;
  v5 = [(_SFPBTextCopyItem *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"copyableString"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBTextCopyItem *)v5 setCopyableString:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBTextCopyItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBTextCopyItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBTextCopyItem *)self dictionaryRepresentation];
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
  if (self->_copyableString)
  {
    copyableString = [(_SFPBTextCopyItem *)self copyableString];
    v5 = [copyableString copy];
    [dictionary setObject:v5 forKeyedSubscript:@"copyableString"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    copyableString = [(_SFPBTextCopyItem *)self copyableString];
    copyableString2 = [equalCopy copyableString];
    v7 = copyableString2;
    if ((copyableString != 0) != (copyableString2 == 0))
    {
      copyableString3 = [(_SFPBTextCopyItem *)self copyableString];
      if (!copyableString3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = copyableString3;
      copyableString4 = [(_SFPBTextCopyItem *)self copyableString];
      copyableString5 = [equalCopy copyableString];
      v12 = [copyableString4 isEqual:copyableString5];

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
  copyableString = [(_SFPBTextCopyItem *)self copyableString];
  if (copyableString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setCopyableString:(id)string
{
  v4 = [string copy];
  copyableString = self->_copyableString;
  self->_copyableString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end