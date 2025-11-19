@interface _SFPBTextCopyItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBTextCopyItem)initWithDictionary:(id)a3;
- (_SFPBTextCopyItem)initWithFacade:(id)a3;
- (_SFPBTextCopyItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setCopyableString:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBTextCopyItem

- (_SFPBTextCopyItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBTextCopyItem *)self init];
  if (v5)
  {
    v6 = [v4 copyableString];

    if (v6)
    {
      v7 = [v4 copyableString];
      [(_SFPBTextCopyItem *)v5 setCopyableString:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBTextCopyItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBTextCopyItem;
  v5 = [(_SFPBTextCopyItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"copyableString"];
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

- (_SFPBTextCopyItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBTextCopyItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBTextCopyItem *)self dictionaryRepresentation];
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
  if (self->_copyableString)
  {
    v4 = [(_SFPBTextCopyItem *)self copyableString];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"copyableString"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBTextCopyItem *)self copyableString];
    v6 = [v4 copyableString];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBTextCopyItem *)self copyableString];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBTextCopyItem *)self copyableString];
      v11 = [v4 copyableString];
      v12 = [v10 isEqual:v11];

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

- (void)writeTo:(id)a3
{
  v5 = a3;
  v4 = [(_SFPBTextCopyItem *)self copyableString];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setCopyableString:(id)a3
{
  v4 = [a3 copy];
  copyableString = self->_copyableString;
  self->_copyableString = v4;

  MEMORY[0x1EEE66BB8]();
}

@end