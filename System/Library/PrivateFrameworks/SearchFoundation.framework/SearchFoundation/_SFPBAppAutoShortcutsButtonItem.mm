@interface _SFPBAppAutoShortcutsButtonItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppAutoShortcutsButtonItem)initWithDictionary:(id)dictionary;
- (_SFPBAppAutoShortcutsButtonItem)initWithFacade:(id)facade;
- (_SFPBAppAutoShortcutsButtonItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAppAutoShortcutsButtonItem

- (_SFPBAppAutoShortcutsButtonItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAppAutoShortcutsButtonItem *)self init];
  if (v5)
  {
    appAutoShortcutsItem = [facadeCopy appAutoShortcutsItem];

    if (appAutoShortcutsItem)
    {
      v7 = [_SFPBAppAutoShortcutsItem alloc];
      appAutoShortcutsItem2 = [facadeCopy appAutoShortcutsItem];
      v9 = [(_SFPBAppAutoShortcutsItem *)v7 initWithFacade:appAutoShortcutsItem2];
      [(_SFPBAppAutoShortcutsButtonItem *)v5 setAppAutoShortcutsItem:v9];
    }

    if ([facadeCopy hasUniqueId])
    {
      -[_SFPBAppAutoShortcutsButtonItem setUniqueId:](v5, "setUniqueId:", [facadeCopy uniqueId]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBAppAutoShortcutsButtonItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBAppAutoShortcutsButtonItem;
  v5 = [(_SFPBAppAutoShortcutsButtonItem *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"appAutoShortcutsItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBAppAutoShortcutsItem alloc] initWithDictionary:v6];
      [(_SFPBAppAutoShortcutsButtonItem *)v5 setAppAutoShortcutsItem:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"uniqueId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAppAutoShortcutsButtonItem setUniqueId:](v5, "setUniqueId:", [v8 unsignedLongLongValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBAppAutoShortcutsButtonItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAppAutoShortcutsButtonItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAppAutoShortcutsButtonItem *)self dictionaryRepresentation];
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
  if (self->_appAutoShortcutsItem)
  {
    appAutoShortcutsItem = [(_SFPBAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
    dictionaryRepresentation = [appAutoShortcutsItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"appAutoShortcutsItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"appAutoShortcutsItem"];
    }
  }

  if (self->_uniqueId)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[_SFPBAppAutoShortcutsButtonItem uniqueId](self, "uniqueId")}];
    [dictionary setObject:v7 forKeyedSubscript:@"uniqueId"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    appAutoShortcutsItem = [(_SFPBAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
    appAutoShortcutsItem2 = [equalCopy appAutoShortcutsItem];
    v7 = appAutoShortcutsItem2;
    if ((appAutoShortcutsItem != 0) != (appAutoShortcutsItem2 == 0))
    {
      appAutoShortcutsItem3 = [(_SFPBAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
      if (!appAutoShortcutsItem3)
      {

LABEL_10:
        uniqueId = self->_uniqueId;
        v13 = uniqueId == [equalCopy uniqueId];
        goto LABEL_8;
      }

      v9 = appAutoShortcutsItem3;
      appAutoShortcutsItem4 = [(_SFPBAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
      appAutoShortcutsItem5 = [equalCopy appAutoShortcutsItem];
      v12 = [appAutoShortcutsItem4 isEqual:appAutoShortcutsItem5];

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
  appAutoShortcutsItem = [(_SFPBAppAutoShortcutsButtonItem *)self appAutoShortcutsItem];
  if (appAutoShortcutsItem)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBAppAutoShortcutsButtonItem *)self uniqueId])
  {
    PBDataWriterWriteUint64Field();
  }
}

@end