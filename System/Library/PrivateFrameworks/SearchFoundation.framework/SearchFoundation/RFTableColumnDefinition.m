@interface RFTableColumnDefinition
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableColumnDefinition)initWithCoder:(id)a3;
- (RFTableColumnDefinition)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setContent:(id)a3;
- (void)setSpacer:(id)a3;
@end

@implementation RFTableColumnDefinition

- (unint64_t)hash
{
  v3 = [(RFTableColumnDefinition *)self spacer];
  v4 = [v3 hash];
  v5 = [(RFTableColumnDefinition *)self content];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFTableColumnDefinition *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFTableColumnDefinition *)self spacer];
      v8 = [(RFTableColumnDefinition *)v6 spacer];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(RFTableColumnDefinition *)self spacer];
      if (v9)
      {
        v3 = [(RFTableColumnDefinition *)self spacer];
        v10 = [(RFTableColumnDefinition *)v6 spacer];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(RFTableColumnDefinition *)self content];
      v13 = [(RFTableColumnDefinition *)v6 content];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(RFTableColumnDefinition *)self content];
        if (v15)
        {
          v16 = v15;
          v19 = [(RFTableColumnDefinition *)self content];
          [(RFTableColumnDefinition *)v6 content];
          v17 = v20 = v3;
          v11 = [v19 isEqual:v17];

          v3 = v20;
        }

        else
        {

          v11 = 1;
        }
      }

      v10 = v21;
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    v11 = 0;
  }

LABEL_20:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFTableColumnDefinition *)self hasSpacer])
  {
    v5 = [(RFTableColumnDefinition *)self spacer];
    v6 = [v5 copy];
    [v4 setSpacer:v6];
  }

  if ([(RFTableColumnDefinition *)self hasContent])
  {
    v7 = [(RFTableColumnDefinition *)self content];
    v8 = [v7 copy];
    [v4 setContent:v8];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableColumnDefinition *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableColumnDefinition *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFTableColumnDefinition alloc] initWithFacade:self];
  v5 = [(_SFPBRFTableColumnDefinition *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFTableColumnDefinition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableColumnDefinition alloc] initWithData:v5];
  v7 = [(RFTableColumnDefinition *)self initWithProtobuf:v6];

  return v7;
}

- (void)setContent:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_content, a3);
  v6 = a3;
  *&self->_has &= ~1u;
  spacer = self->_spacer;
  self->_spacer = 0;
}

- (void)setSpacer:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_spacer, a3);
  v6 = a3;
  *&self->_has &= ~2u;
  content = self->_content;
  self->_content = 0;
}

- (RFTableColumnDefinition)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFTableColumnDefinition;
  v5 = [(RFTableColumnDefinition *)&v16 init];
  if (v5)
  {
    v6 = [v4 spacer];

    if (v6)
    {
      v7 = [RFTableSpacerColumnDefinition alloc];
      v8 = [v4 spacer];
      v9 = [(RFTableSpacerColumnDefinition *)v7 initWithProtobuf:v8];
      [(RFTableColumnDefinition *)v5 setSpacer:v9];
    }

    v10 = [v4 content];

    if (v10)
    {
      v11 = [RFTableContentColumnDefinition alloc];
      v12 = [v4 content];
      v13 = [(RFTableContentColumnDefinition *)v11 initWithProtobuf:v12];
      [(RFTableColumnDefinition *)v5 setContent:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end