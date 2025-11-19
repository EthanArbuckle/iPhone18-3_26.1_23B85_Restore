@interface RFTextElement
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTextElement)initWithCoder:(id)a3;
- (RFTextElement)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFTextElement

- (unint64_t)hash
{
  v3 = [(RFTextElement *)self formatted_text];
  v4 = [v3 hash];
  v5 = [(RFTextElement *)self line_limit];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFTextElement *)self show_more_on_tap];
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
    if ([(RFTextElement *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFTextElement *)self formatted_text];
      v8 = [(RFTextElement *)v6 formatted_text];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [(RFTextElement *)self formatted_text];
      if (v9)
      {
        v3 = [(RFTextElement *)self formatted_text];
        v10 = [(RFTextElement *)v6 formatted_text];
        if (![v3 isEqual:v10])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = v10;
      }

      v12 = [(RFTextElement *)self line_limit];
      v13 = [(RFTextElement *)v6 line_limit];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      v15 = [(RFTextElement *)self line_limit];
      if (v15)
      {
        v25 = v12;
        v16 = [(RFTextElement *)self line_limit];
        v27 = [(RFTextElement *)v6 line_limit];
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

      v17 = [(RFTextElement *)self show_more_on_tap];
      v18 = [(RFTextElement *)v6 show_more_on_tap];
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
        v19 = [(RFTextElement *)self show_more_on_tap];
        v15 = v29;
        if (v19)
        {
          v23 = v19;
          v22 = [(RFTextElement *)self show_more_on_tap];
          v20 = [(RFTextElement *)v6 show_more_on_tap];
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
  v5 = [(RFTextElement *)self formatted_text];
  v6 = [v5 copy];
  [v4 setFormatted_text:v6];

  v7 = [(RFTextElement *)self line_limit];
  v8 = [v7 copy];
  [v4 setLine_limit:v8];

  v9 = [(RFTextElement *)self show_more_on_tap];
  v10 = [v9 copy];
  [v4 setShow_more_on_tap:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTextElement alloc] initWithFacade:self];
  v3 = [(_SFPBRFTextElement *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTextElement alloc] initWithFacade:self];
  v3 = [(_SFPBRFTextElement *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFTextElement alloc] initWithFacade:self];
  v5 = [(_SFPBRFTextElement *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFTextElement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTextElement alloc] initWithData:v5];
  v7 = [(RFTextElement *)self initWithProtobuf:v6];

  return v7;
}

- (RFTextElement)initWithProtobuf:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = RFTextElement;
  v5 = [(RFTextElement *)&v26 init];
  if (v5)
  {
    v6 = [v4 formatted_texts];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v4 formatted_texts];
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[RFFormattedText alloc] initWithProtobuf:*(*(&v22 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    [(RFTextElement *)v5 setFormatted_text:v7];
    if ([v4 line_limit])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "line_limit")}];
      [(RFTextElement *)v5 setLine_limit:v14];
    }

    v15 = [v4 show_more_on_tap];

    if (v15)
    {
      v16 = [RFShowMoreOnTap alloc];
      v17 = [v4 show_more_on_tap];
      v18 = [(RFShowMoreOnTap *)v16 initWithProtobuf:v17];
      [(RFTextElement *)v5 setShow_more_on_tap:v18];
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

@end