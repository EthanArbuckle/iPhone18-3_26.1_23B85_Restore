@interface _SFPBDomainSubscriptionRequestItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBDomainSubscriptionRequestItem)initWithDictionary:(id)dictionary;
- (_SFPBDomainSubscriptionRequestItem)initWithFacade:(id)facade;
- (_SFPBDomainSubscriptionRequestItem)initWithJSON:(id)n;
- (_SFPBSportsSubscriptionRequestItem)sportsSubscriptionRequestItem;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBDomainSubscriptionRequestItem

- (_SFPBDomainSubscriptionRequestItem)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBDomainSubscriptionRequestItem *)self init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [[_SFPBSportsSubscriptionRequestItem alloc] initWithFacade:facadeCopy];
      [(_SFPBDomainSubscriptionRequestItem *)v5 setSportsSubscriptionRequestItem:v6];
    }

    v7 = v5;
  }

  return v5;
}

- (_SFPBDomainSubscriptionRequestItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = _SFPBDomainSubscriptionRequestItem;
  v5 = [(_SFPBDomainSubscriptionRequestItem *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sportsSubscriptionRequestItem"];
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

- (_SFPBDomainSubscriptionRequestItem)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBDomainSubscriptionRequestItem *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBDomainSubscriptionRequestItem *)self dictionaryRepresentation];
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
  if (self->_sportsSubscriptionRequestItem)
  {
    sportsSubscriptionRequestItem = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
    dictionaryRepresentation = [sportsSubscriptionRequestItem dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"sportsSubscriptionRequestItem"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"sportsSubscriptionRequestItem"];
    }
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    sportsSubscriptionRequestItem = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
    sportsSubscriptionRequestItem2 = [equalCopy sportsSubscriptionRequestItem];
    v7 = sportsSubscriptionRequestItem2;
    if ((sportsSubscriptionRequestItem != 0) != (sportsSubscriptionRequestItem2 == 0))
    {
      sportsSubscriptionRequestItem3 = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
      if (!sportsSubscriptionRequestItem3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = sportsSubscriptionRequestItem3;
      sportsSubscriptionRequestItem4 = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
      sportsSubscriptionRequestItem5 = [equalCopy sportsSubscriptionRequestItem];
      v12 = [sportsSubscriptionRequestItem4 isEqual:sportsSubscriptionRequestItem5];

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
  sportsSubscriptionRequestItem = [(_SFPBDomainSubscriptionRequestItem *)self sportsSubscriptionRequestItem];
  if (sportsSubscriptionRequestItem)
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