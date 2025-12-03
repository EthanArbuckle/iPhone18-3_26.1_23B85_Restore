@interface _SFPBAppAutoShortcutsItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBAppAutoShortcutsItem)initWithDictionary:(id)dictionary;
- (_SFPBAppAutoShortcutsItem)initWithFacade:(id)facade;
- (_SFPBAppAutoShortcutsItem)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)setBundleIdentifier:(id)identifier;
- (void)writeTo:(id)to;
@end

@implementation _SFPBAppAutoShortcutsItem

- (_SFPBAppAutoShortcutsItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBAppAutoShortcutsItem *)self init];
  if (v5)
  {
    bundleIdentifier = [facadeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [facadeCopy bundleIdentifier];
      [(_SFPBAppAutoShortcutsItem *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBAppAutoShortcutsItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBAppAutoShortcutsItem;
  v5 = [(_SFPBAppAutoShortcutsItem *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppAutoShortcutsItem *)v5 setBundleIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBAppAutoShortcutsItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBAppAutoShortcutsItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBAppAutoShortcutsItem *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
    v5 = [bundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleIdentifier = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
    bundleIdentifier2 = [equalCopy bundleIdentifier];
    v7 = bundleIdentifier2;
    if ((bundleIdentifier != 0) != (bundleIdentifier2 == 0))
    {
      bundleIdentifier3 = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
      if (!bundleIdentifier3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = bundleIdentifier3;
      bundleIdentifier4 = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
      bundleIdentifier5 = [equalCopy bundleIdentifier];
      v12 = [bundleIdentifier4 isEqual:bundleIdentifier5];

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
  bundleIdentifier = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setBundleIdentifier:(id)identifier
{
  v4 = [identifier copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end