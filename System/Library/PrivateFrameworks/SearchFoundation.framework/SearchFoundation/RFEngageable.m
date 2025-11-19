@interface RFEngageable
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFEngageable)initWithCoder:(id)a3;
- (RFEngageable)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCommand_reference:(id)a3;
- (void)setPreview_list:(id)a3;
@end

@implementation RFEngageable

- (unint64_t)hash
{
  v3 = [(RFEngageable *)self command_reference];
  v4 = [v3 hash];
  v5 = [(RFEngageable *)self preview_list];
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
    if ([(RFEngageable *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFEngageable *)self command_reference];
      v8 = [(RFEngageable *)v6 command_reference];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v9 = [(RFEngageable *)self command_reference];
      if (v9)
      {
        v3 = [(RFEngageable *)self command_reference];
        v10 = [(RFEngageable *)v6 command_reference];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
LABEL_17:

LABEL_18:
          goto LABEL_19;
        }

        v21 = v10;
      }

      v12 = [(RFEngageable *)self preview_list];
      v13 = [(RFEngageable *)v6 preview_list];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
      }

      else
      {
        v15 = [(RFEngageable *)self preview_list];
        if (v15)
        {
          v16 = v15;
          v19 = [(RFEngageable *)self preview_list];
          [(RFEngageable *)v6 preview_list];
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
  if ([(RFEngageable *)self hasCommand_reference])
  {
    v5 = [(RFEngageable *)self command_reference];
    v6 = [v5 copy];
    [v4 setCommand_reference:v6];
  }

  if ([(RFEngageable *)self hasPreview_list])
  {
    v7 = [(RFEngageable *)self preview_list];
    v8 = [v7 copy];
    [v4 setPreview_list:v8];
  }

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFEngageable alloc] initWithFacade:self];
  v3 = [(_SFPBRFEngageable *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFEngageable alloc] initWithFacade:self];
  v3 = [(_SFPBRFEngageable *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFEngageable alloc] initWithFacade:self];
  v5 = [(_SFPBRFEngageable *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFEngageable)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFEngageable alloc] initWithData:v5];
  v7 = [(RFEngageable *)self initWithProtobuf:v6];

  return v7;
}

- (void)setPreview_list:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_preview_list, a3);
  v6 = a3;
  *&self->_has &= ~1u;
  command_reference = self->_command_reference;
  self->_command_reference = 0;
}

- (void)setCommand_reference:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_command_reference, a3);
  v6 = a3;
  *&self->_has &= ~2u;
  preview_list = self->_preview_list;
  self->_preview_list = 0;
}

- (RFEngageable)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = RFEngageable;
  v5 = [(RFEngageable *)&v16 init];
  if (v5)
  {
    v6 = [v4 command_reference];

    if (v6)
    {
      v7 = [SFCommandReference alloc];
      v8 = [v4 command_reference];
      v9 = [(SFCommandReference *)v7 initWithProtobuf:v8];
      [(RFEngageable *)v5 setCommand_reference:v9];
    }

    v10 = [v4 preview_list];

    if (v10)
    {
      v11 = [RFPreviewList alloc];
      v12 = [v4 preview_list];
      v13 = [(RFPreviewList *)v11 initWithProtobuf:v12];
      [(RFEngageable *)v5 setPreview_list:v13];
    }

    v14 = v5;
  }

  return v5;
}

@end