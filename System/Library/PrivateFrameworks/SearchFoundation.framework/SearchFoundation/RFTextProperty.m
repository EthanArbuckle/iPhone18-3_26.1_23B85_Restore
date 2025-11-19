@interface RFTextProperty
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTextProperty)initWithCoder:(id)a3;
- (RFTextProperty)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFTextProperty

- (unint64_t)hash
{
  v3 = [(RFTextProperty *)self text_elements];
  v4 = [v3 hash];
  v5 = [(RFTextProperty *)self is_safe_for_logging];

  return v4 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFTextProperty *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFTextProperty *)self text_elements];
      v9 = [(RFTextProperty *)v7 text_elements];
      if ((v8 != 0) == (v9 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(RFTextProperty *)self text_elements];
      if (!v10 || (-[RFTextProperty text_elements](self, "text_elements"), v3 = objc_claimAutoreleasedReturnValue(), -[RFTextProperty text_elements](v7, "text_elements"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(RFTextProperty *)self is_safe_for_logging];
        v11 = v12 ^ [(RFTextProperty *)v7 is_safe_for_logging]^ 1;
        if (!v10)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      goto LABEL_12;
    }

    LOBYTE(v11) = 0;
  }

LABEL_14:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFTextProperty *)self text_elements];
  v6 = [v5 copy];
  [v4 setText_elements:v6];

  [v4 setIs_safe_for_logging:{-[RFTextProperty is_safe_for_logging](self, "is_safe_for_logging")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTextProperty alloc] initWithFacade:self];
  v3 = [(_SFPBRFTextProperty *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTextProperty alloc] initWithFacade:self];
  v3 = [(_SFPBRFTextProperty *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFTextProperty alloc] initWithFacade:self];
  v5 = [(_SFPBRFTextProperty *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFTextProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTextProperty alloc] initWithData:v5];
  v7 = [(RFTextProperty *)self initWithProtobuf:v6];

  return v7;
}

- (RFTextProperty)initWithProtobuf:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RFTextProperty;
  v5 = [(RFTextProperty *)&v21 init];
  if (v5)
  {
    v6 = [v4 text_elements];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [v4 text_elements];
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[RFTextElement alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(RFTextProperty *)v5 setText_elements:v7];
    if ([v4 is_safe_for_logging])
    {
      -[RFTextProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [v4 is_safe_for_logging]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end