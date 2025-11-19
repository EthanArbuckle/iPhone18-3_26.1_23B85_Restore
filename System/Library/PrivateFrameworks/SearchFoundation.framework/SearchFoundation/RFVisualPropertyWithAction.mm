@interface RFVisualPropertyWithAction
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFVisualPropertyWithAction)initWithCoder:(id)a3;
- (RFVisualPropertyWithAction)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFVisualPropertyWithAction

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = RFVisualPropertyWithAction;
  v3 = [(RFVisualProperty *)&v10 hash];
  v4 = [(RFVisualProperty *)self visual_elements];
  v5 = [v4 hash];
  v6 = v5 ^ [(RFVisualProperty *)self is_safe_for_logging];
  v7 = [(RFVisualPropertyWithAction *)self commandItem];
  v8 = v6 ^ [v7 hash];

  return v8 ^ v3;
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
    if ([(RFVisualPropertyWithAction *)v5 isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = RFVisualPropertyWithAction;
      if ([(RFVisualProperty *)&v22 isEqual:v5])
      {
        v6 = v5;
        v7 = [(RFVisualProperty *)self visual_elements];
        v8 = [(RFVisualProperty *)v6 visual_elements];
        if ((v7 != 0) == (v8 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        v9 = [(RFVisualProperty *)self visual_elements];
        if (v9)
        {
          v10 = [(RFVisualProperty *)self visual_elements];
          v3 = [(RFVisualProperty *)v6 visual_elements];
          if (![v10 isEqual:v3])
          {
            v11 = 0;
            goto LABEL_19;
          }

          v21 = v10;
        }

        v12 = [(RFVisualProperty *)self is_safe_for_logging];
        if (v12 == [(RFVisualProperty *)v6 is_safe_for_logging])
        {
          v13 = [(RFVisualPropertyWithAction *)self commandItem];
          v14 = [(RFVisualPropertyWithAction *)v6 commandItem];
          v15 = v14;
          if ((v13 != 0) != (v14 == 0))
          {
            v16 = [(RFVisualPropertyWithAction *)self commandItem];
            if (v16)
            {
              v17 = v16;
              v20 = [(RFVisualPropertyWithAction *)self commandItem];
              v19 = [(RFVisualPropertyWithAction *)v6 commandItem];
              v11 = [v20 isEqual:v19];
            }

            else
            {

              v11 = 1;
            }

LABEL_18:
            v10 = v21;
            if (!v9)
            {
LABEL_20:

              goto LABEL_21;
            }

LABEL_19:

            goto LABEL_20;
          }
        }

        v11 = 0;
        goto LABEL_18;
      }
    }

    v11 = 0;
  }

LABEL_22:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RFVisualPropertyWithAction;
  v4 = [(RFVisualProperty *)&v10 copyWithZone:a3];
  v5 = [(RFVisualProperty *)self visual_elements];
  v6 = [v5 copy];
  [v4 setVisual_elements:v6];

  [v4 setIs_safe_for_logging:{-[RFVisualProperty is_safe_for_logging](self, "is_safe_for_logging")}];
  v7 = [(RFVisualPropertyWithAction *)self commandItem];
  v8 = [v7 copy];
  [v4 setCommandItem:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFVisualPropertyWithAction alloc] initWithFacade:self];
  v3 = [(_SFPBRFVisualPropertyWithAction *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFVisualPropertyWithAction alloc] initWithFacade:self];
  v3 = [(_SFPBRFVisualPropertyWithAction *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFVisualPropertyWithAction alloc] initWithFacade:self];
  v5 = [(_SFPBRFVisualPropertyWithAction *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFVisualPropertyWithAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFVisualPropertyWithAction alloc] initWithData:v5];
  v7 = [(RFVisualPropertyWithAction *)self initWithProtobuf:v6];

  return v7;
}

- (RFVisualPropertyWithAction)initWithProtobuf:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = RFVisualPropertyWithAction;
  v5 = [(RFVisualPropertyWithAction *)&v25 init];
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

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = [v4 visual_elements];
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [[RFVisualElement alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    [(RFVisualProperty *)v5 setVisual_elements:v7];
    if ([v4 is_safe_for_logging])
    {
      -[RFVisualProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [v4 is_safe_for_logging]);
    }

    v14 = [v4 commandItem];

    if (v14)
    {
      v15 = [SFCommandButtonItem alloc];
      v16 = [v4 commandItem];
      v17 = [(SFCommandButtonItem *)v15 initWithProtobuf:v16];
      [(RFVisualPropertyWithAction *)v5 setCommandItem:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end