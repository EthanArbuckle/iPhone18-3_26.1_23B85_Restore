@interface _SFPBDomainSubscriptionRequestItem
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBDomainSubscriptionRequestItem)initWithDictionary:(id)a3;
- (_SFPBDomainSubscriptionRequestItem)initWithFacade:(id)a3;
- (_SFPBDomainSubscriptionRequestItem)initWithJSON:(id)a3;
- (_SFPBSportsSubscriptionRequestItem)sportsSubscriptionRequestItem;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBDomainSubscriptionRequestItem

- (_SFPBDomainSubscriptionRequestItem)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBDomainSubscriptionRequestItem *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_SFPBSportsSubscriptionRequestItem alloc] initWithFacade:v4];
      [(_SFPBDomainSubscriptionRequestItem *)v5 setSportsSubscriptionRequestItem:v6];
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBDomainSubscriptionRequestItem)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFPBDomainSubscriptionRequestItem;
  v5 = [(_SFPBDomainSubscriptionRequestItem *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"sportsSubscriptionRequestItem"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[_SFPBSportsSubscriptionRequestItem alloc] initWithDictionary:v6];
      [(_SFPBDomainSubscriptionRequestItem *)v5 setSportsSubscriptionRequestItem:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (_SFPBDomainSubscriptionRequestItem)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBDomainSubscriptionRequestItem *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBDomainSubscriptionRequestItem *)self dictionaryRepresentation];
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
  if (self->_sportsSubscriptionRequestItem)
  {
    v4 = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"sportsSubscriptionRequestItem"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"sportsSubscriptionRequestItem"];
    }
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
    v6 = [v4 sportsSubscriptionRequestItem];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
      v11 = [v4 sportsSubscriptionRequestItem];
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
  v4 = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
  if (v4)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (_SFPBSportsSubscriptionRequestItem)sportsSubscriptionRequestItem
{
  if (self->_whichValue == 1)
  {
    v3 = self->_sportsSubscriptionRequestItem;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end