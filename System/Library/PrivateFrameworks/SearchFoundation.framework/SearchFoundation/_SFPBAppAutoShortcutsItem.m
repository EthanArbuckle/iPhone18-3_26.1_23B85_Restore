@interface _SFPBAppAutoShortcutsItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAppAutoShortcutsItem)initWithDictionary:(id)a3;
- (_SFPBAppAutoShortcutsItem)initWithFacade:(id)a3;
- (_SFPBAppAutoShortcutsItem)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setBundleIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAppAutoShortcutsItem

- (_SFPBAppAutoShortcutsItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBAppAutoShortcutsItem *)self init];
  if (v5)
  {
    v6 = [v4 bundleIdentifier];

    if (v6)
    {
      v7 = [v4 bundleIdentifier];
      [(_SFPBAppAutoShortcutsItem *)v5 setBundleIdentifier:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBAppAutoShortcutsItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBAppAutoShortcutsItem;
  v5 = [(_SFPBAppAutoShortcutsItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
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

- (_SFPBAppAutoShortcutsItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAppAutoShortcutsItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAppAutoShortcutsItem *)self dictionaryRepresentation];
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
  if (self->_bundleIdentifier)
  {
    v4 = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
    v6 = [v4 bundleIdentifier];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
      v11 = [v4 bundleIdentifier];
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
  v4 = [(_SFPBAppAutoShortcutsItem *)self bundleIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)setBundleIdentifier:(id)a3
{
  v4 = [a3 copy];
  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = v4;

  MEMORY[0x1EEE66BB8]();
}

@end