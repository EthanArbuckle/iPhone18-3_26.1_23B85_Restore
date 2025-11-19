@interface RFVisualProperty
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFVisualProperty)initWithCoder:(id)a3;
- (RFVisualProperty)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFVisualProperty

- (RFVisualProperty)initWithProtobuf:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = RFVisualProperty;
  v5 = [(RFVisualProperty *)&v21 init];
  if (v5)
  {
    v6 = [v4 visual_elements];
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
    v8 = [v4 visual_elements];
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

          v13 = [[RFVisualElement alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(RFVisualProperty *)v5 setVisual_elements:v7];
    if ([v4 is_safe_for_logging])
    {
      -[RFVisualProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [v4 is_safe_for_logging]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFVisualProperty *)self visual_elements];
  v4 = [v3 hash];
  v5 = [(RFVisualProperty *)self is_safe_for_logging];

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
    if ([(RFVisualProperty *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(RFVisualProperty *)self visual_elements];
      v9 = [(RFVisualProperty *)v7 visual_elements];
      if ((v8 != 0) == (v9 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_13:

        goto LABEL_14;
      }

      v10 = [(RFVisualProperty *)self visual_elements];
      if (!v10 || (-[RFVisualProperty visual_elements](self, "visual_elements"), v3 = objc_claimAutoreleasedReturnValue(), -[RFVisualProperty visual_elements](v7, "visual_elements"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v12 = [(RFVisualProperty *)self is_safe_for_logging];
        v11 = v12 ^ [(RFVisualProperty *)v7 is_safe_for_logging]^ 1;
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
  v5 = [(RFVisualProperty *)self visual_elements];
  v6 = [v5 copy];
  [v4 setVisual_elements:v6];

  [v4 setIs_safe_for_logging:{-[RFVisualProperty is_safe_for_logging](self, "is_safe_for_logging")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFVisualProperty alloc] initWithFacade:self];
  v3 = [(_SFPBRFVisualProperty *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFVisualProperty alloc] initWithFacade:self];
  v3 = [(_SFPBRFVisualProperty *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFVisualProperty alloc] initWithFacade:self];
  v5 = [(_SFPBRFVisualProperty *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFVisualProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFVisualProperty alloc] initWithData:v5];
  v7 = [(RFVisualProperty *)self initWithProtobuf:v6];

  return v7;
}

@end