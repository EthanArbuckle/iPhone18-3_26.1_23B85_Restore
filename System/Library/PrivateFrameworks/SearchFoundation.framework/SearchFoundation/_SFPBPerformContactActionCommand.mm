@interface _SFPBPerformContactActionCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBPerformContactActionCommand)initWithDictionary:(id)a3;
- (_SFPBPerformContactActionCommand)initWithFacade:(id)a3;
- (_SFPBPerformContactActionCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBPerformContactActionCommand

- (_SFPBPerformContactActionCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBPerformContactActionCommand *)self init];
  if (v5)
  {
    if ([v4 hasContactActionType])
    {
      -[_SFPBPerformContactActionCommand setContactActionType:](v5, "setContactActionType:", [v4 contactActionType]);
    }

    if ([v4 hasDidDisplayHandleOptions])
    {
      -[_SFPBPerformContactActionCommand setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [v4 didDisplayHandleOptions]);
    }

    if ([v4 hasDidSelectFromOptionsMenu])
    {
      -[_SFPBPerformContactActionCommand setDidSelectFromOptionsMenu:](v5, "setDidSelectFromOptionsMenu:", [v4 didSelectFromOptionsMenu]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBPerformContactActionCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBPerformContactActionCommand;
  v5 = [(_SFPBPerformContactActionCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"contactActionType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformContactActionCommand setContactActionType:](v5, "setContactActionType:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"didDisplayHandleOptions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformContactActionCommand setDidDisplayHandleOptions:](v5, "setDidDisplayHandleOptions:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"didSelectFromOptionsMenu"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBPerformContactActionCommand setDidSelectFromOptionsMenu:](v5, "setDidSelectFromOptionsMenu:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBPerformContactActionCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBPerformContactActionCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBPerformContactActionCommand *)self dictionaryRepresentation];
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
  if (self->_contactActionType)
  {
    v4 = [(_SFPBPerformContactActionCommand *)self contactActionType];
    if (v4 >= 0xA)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE220[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"contactActionType"];
  }

  if (self->_didDisplayHandleOptions)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPerformContactActionCommand didDisplayHandleOptions](self, "didDisplayHandleOptions")}];
    [v3 setObject:v6 forKeyedSubscript:@"didDisplayHandleOptions"];
  }

  if (self->_didSelectFromOptionsMenu)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBPerformContactActionCommand didSelectFromOptionsMenu](self, "didSelectFromOptionsMenu")}];
    [v3 setObject:v7 forKeyedSubscript:@"didSelectFromOptionsMenu"];
  }

  return v3;
}

- (unint64_t)hash
{
  v2 = 2654435761;
  if (self->_didDisplayHandleOptions)
  {
    v3 = 2654435761;
  }

  else
  {
    v3 = 0;
  }

  if (!self->_didSelectFromOptionsMenu)
  {
    v2 = 0;
  }

  return v3 ^ v2 ^ (2654435761 * self->_contactActionType);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (contactActionType = self->_contactActionType, contactActionType == objc_msgSend(v4, "contactActionType")) && (didDisplayHandleOptions = self->_didDisplayHandleOptions, didDisplayHandleOptions == objc_msgSend(v4, "didDisplayHandleOptions")))
  {
    didSelectFromOptionsMenu = self->_didSelectFromOptionsMenu;
    v8 = didSelectFromOptionsMenu == [v4 didSelectFromOptionsMenu];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ([(_SFPBPerformContactActionCommand *)self contactActionType])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBPerformContactActionCommand *)self didDisplayHandleOptions])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_SFPBPerformContactActionCommand *)self didSelectFromOptionsMenu])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end