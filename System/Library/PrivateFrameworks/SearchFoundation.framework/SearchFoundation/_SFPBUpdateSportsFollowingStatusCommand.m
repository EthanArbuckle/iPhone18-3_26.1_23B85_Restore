@interface _SFPBUpdateSportsFollowingStatusCommand
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBUpdateSportsFollowingStatusCommand)initWithDictionary:(id)a3;
- (_SFPBUpdateSportsFollowingStatusCommand)initWithFacade:(id)a3;
- (_SFPBUpdateSportsFollowingStatusCommand)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBUpdateSportsFollowingStatusCommand

- (_SFPBUpdateSportsFollowingStatusCommand)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBUpdateSportsFollowingStatusCommand *)self init];
  if (v5)
  {
    v6 = [v4 sportsItem];

    if (v6)
    {
      v7 = [_SFPBSportsItem alloc];
      v8 = [v4 sportsItem];
      v9 = [(_SFPBSportsItem *)v7 initWithFacade:v8];
      [(_SFPBUpdateSportsFollowingStatusCommand *)v5 setSportsItem:v9];
    }

    if ([v4 hasFollow])
    {
      -[_SFPBUpdateSportsFollowingStatusCommand setFollow:](v5, "setFollow:", [v4 follow]);
    }

    v10 = v5;
  }

  return v5;
}

- (_SFPBUpdateSportsFollowingStatusCommand)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBUpdateSportsFollowingStatusCommand;
  v5 = [(_SFPBUpdateSportsFollowingStatusCommand *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sportsItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBSportsItem alloc] initWithDictionary:v6];
      [(_SFPBUpdateSportsFollowingStatusCommand *)v5 setSportsItem:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"follow"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBUpdateSportsFollowingStatusCommand setFollow:](v5, "setFollow:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBUpdateSportsFollowingStatusCommand)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBUpdateSportsFollowingStatusCommand *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBUpdateSportsFollowingStatusCommand *)self dictionaryRepresentation];
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
  if (self->_follow)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBUpdateSportsFollowingStatusCommand follow](self, "follow")}];
    [v3 setObject:v4 forKeyedSubscript:@"follow"];
  }

  if (self->_sportsItem)
  {
    v5 = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"sportsItem"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"sportsItem"];
    }
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_SFPBSportsItem *)self->_sportsItem hash];
  v4 = 2654435761;
  if (!self->_follow)
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
    v6 = [v4 sportsItem];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
      if (!v8)
      {

LABEL_10:
        follow = self->_follow;
        v13 = follow == [v4 follow];
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
      v11 = [v4 sportsItem];
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
  v4 = [(_SFPBUpdateSportsFollowingStatusCommand *)self sportsItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBUpdateSportsFollowingStatusCommand *)self follow])
  {
    PBDataWriterWriteBOOLField();
  }
}

@end