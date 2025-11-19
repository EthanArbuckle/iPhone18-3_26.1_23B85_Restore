@interface _SFPBAppIconImage
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBAppIconImage)initWithDictionary:(id)a3;
- (_SFPBAppIconImage)initWithFacade:(id)a3;
- (_SFPBAppIconImage)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)setBundleIdentifier:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBAppIconImage

- (_SFPBAppIconImage)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBAppIconImage *)self init];
  if (v5)
  {
    v6 = [v4 bundleIdentifier];

    if (v6)
    {
      v7 = [v4 bundleIdentifier];
      [(_SFPBAppIconImage *)v5 setBundleIdentifier:v7];
    }

    if ([v4 hasIconType])
    {
      -[_SFPBAppIconImage setIconType:](v5, "setIconType:", [v4 iconType]);
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBAppIconImage)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBAppIconImage;
  v5 = [(_SFPBAppIconImage *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBAppIconImage *)v5 setBundleIdentifier:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"iconType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBAppIconImage setIconType:](v5, "setIconType:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBAppIconImage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBAppIconImage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBAppIconImage *)self dictionaryRepresentation];
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
    v4 = [(_SFPBAppIconImage *)self bundleIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_iconType)
  {
    v6 = [(_SFPBAppIconImage *)self iconType];
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E7ACE548[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"iconType"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBAppIconImage *)self bundleIdentifier];
    v6 = [v4 bundleIdentifier];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBAppIconImage *)self bundleIdentifier];
      if (!v8)
      {

LABEL_10:
        iconType = self->_iconType;
        v13 = iconType == [v4 iconType];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBAppIconImage *)self bundleIdentifier];
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
  v4 = [(_SFPBAppIconImage *)self bundleIdentifier];
  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBAppIconImage *)self iconType])
  {
    PBDataWriterWriteInt32Field();
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