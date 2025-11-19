@interface _SFPBSafariAttributes
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSafariAttributes)initWithDictionary:(id)a3;
- (_SFPBSafariAttributes)initWithFacade:(id)a3;
- (_SFPBSafariAttributes)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSafariAttributes

- (_SFPBSafariAttributes)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSafariAttributes *)self init];
  if (v5)
  {
    if ([v4 hasHideReason])
    {
      -[_SFPBSafariAttributes setHideReason:](v5, "setHideReason:", [v4 hideReason]);
    }

    v6 = v5;
  }

  return v5;
}

- (_SFPBSafariAttributes)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _SFPBSafariAttributes;
  v5 = [(_SFPBSafariAttributes *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"hideReason"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSafariAttributes setHideReason:](v5, "setHideReason:", [v6 intValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBSafariAttributes)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSafariAttributes *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSafariAttributes *)self dictionaryRepresentation];
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
  if (self->_hideReason)
  {
    v4 = [(_SFPBSafariAttributes *)self hideReason];
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E7ACE548[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"hideReason"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    hideReason = self->_hideReason;
    v6 = hideReason == [v4 hideReason];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if ([(_SFPBSafariAttributes *)self hideReason])
  {
    PBDataWriterWriteInt32Field();
  }
}

@end