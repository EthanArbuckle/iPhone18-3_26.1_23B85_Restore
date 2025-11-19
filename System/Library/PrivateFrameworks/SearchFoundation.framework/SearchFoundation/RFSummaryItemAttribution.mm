@interface RFSummaryItemAttribution
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFSummaryItemAttribution)initWithCoder:(id)a3;
- (RFSummaryItemAttribution)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFSummaryItemAttribution

- (unint64_t)hash
{
  v3 = [(RFSummaryItemAttribution *)self text];
  v4 = [v3 hash];
  v5 = [(RFSummaryItemAttribution *)self text_compact];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFSummaryItemAttribution *)self text_minimal];
  v8 = [v7 hash];

  return v6 ^ v8;
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
    if ([(RFSummaryItemAttribution *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFSummaryItemAttribution *)self text];
      v8 = [(RFSummaryItemAttribution *)v6 text];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(RFSummaryItemAttribution *)self text];
      if (v9)
      {
        v3 = [(RFSummaryItemAttribution *)self text];
        v10 = [(RFSummaryItemAttribution *)v6 text];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(RFSummaryItemAttribution *)self text_compact];
      v13 = [(RFSummaryItemAttribution *)v6 text_compact];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(RFSummaryItemAttribution *)self text_compact];
      if (v15)
      {
        v25 = v12;
        v16 = [(RFSummaryItemAttribution *)self text_compact];
        v27 = [(RFSummaryItemAttribution *)v6 text_compact];
        v28 = v16;
        if (![v16 isEqual:?])
        {
          v11 = 0;
          v12 = v25;
          goto LABEL_25;
        }

        v29 = v15;
        v30 = v3;
        v12 = v25;
      }

      else
      {
        v29 = 0;
        v30 = v3;
      }

      v17 = [(RFSummaryItemAttribution *)self text_minimal];
      v18 = [(RFSummaryItemAttribution *)v6 text_minimal];
      if ((v17 != 0) == (v18 == 0))
      {

        v11 = 0;
        v15 = v29;
        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = v17;
        v26 = v18;
        v19 = [(RFSummaryItemAttribution *)self text_minimal];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(RFSummaryItemAttribution *)self text_minimal];
          v20 = [(RFSummaryItemAttribution *)v6 text_minimal];
          v11 = [v22 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        v3 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      v10 = v31;
      if (!v9)
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_31:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFSummaryItemAttribution *)self text];
  v6 = [v5 copy];
  [v4 setText:v6];

  v7 = [(RFSummaryItemAttribution *)self text_compact];
  v8 = [v7 copy];
  [v4 setText_compact:v8];

  v9 = [(RFSummaryItemAttribution *)self text_minimal];
  v10 = [v9 copy];
  [v4 setText_minimal:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFSummaryItemAttribution alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemAttribution *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFSummaryItemAttribution alloc] initWithFacade:self];
  v3 = [(_SFPBRFSummaryItemAttribution *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFSummaryItemAttribution alloc] initWithFacade:self];
  v5 = [(_SFPBRFSummaryItemAttribution *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFSummaryItemAttribution)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFSummaryItemAttribution alloc] initWithData:v5];
  v7 = [(RFSummaryItemAttribution *)self initWithProtobuf:v6];

  return v7;
}

- (RFSummaryItemAttribution)initWithProtobuf:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = RFSummaryItemAttribution;
  v5 = [(RFSummaryItemAttribution *)&v20 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFSummaryItemAttribution *)v5 setText:v9];
    }

    v10 = [v4 text_compact];

    if (v10)
    {
      v11 = [RFTextProperty alloc];
      v12 = [v4 text_compact];
      v13 = [(RFTextProperty *)v11 initWithProtobuf:v12];
      [(RFSummaryItemAttribution *)v5 setText_compact:v13];
    }

    v14 = [v4 text_minimal];

    if (v14)
    {
      v15 = [RFTextProperty alloc];
      v16 = [v4 text_minimal];
      v17 = [(RFTextProperty *)v15 initWithProtobuf:v16];
      [(RFSummaryItemAttribution *)v5 setText_minimal:v17];
    }

    v18 = v5;
  }

  return v5;
}

@end