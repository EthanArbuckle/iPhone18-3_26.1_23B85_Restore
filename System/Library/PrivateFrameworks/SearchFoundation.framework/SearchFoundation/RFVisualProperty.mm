@interface RFVisualProperty
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFVisualProperty)initWithCoder:(id)coder;
- (RFVisualProperty)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFVisualProperty

- (RFVisualProperty)initWithProtobuf:(id)protobuf
{
  v23 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = RFVisualProperty;
  v5 = [(RFVisualProperty *)&v21 init];
  if (v5)
  {
    visual_elements = [protobufCopy visual_elements];
    if (visual_elements)
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
    visual_elements2 = [protobufCopy visual_elements];
    v9 = [visual_elements2 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(visual_elements2);
          }

          v13 = [[RFVisualElement alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [visual_elements2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(RFVisualProperty *)v5 setVisual_elements:v7];
    if ([protobufCopy is_safe_for_logging])
    {
      -[RFVisualProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [protobufCopy is_safe_for_logging]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (unint64_t)hash
{
  visual_elements = [(RFVisualProperty *)self visual_elements];
  v4 = [visual_elements hash];
  is_safe_for_logging = [(RFVisualProperty *)self is_safe_for_logging];

  return v4 ^ is_safe_for_logging;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFVisualProperty *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      visual_elements = [(RFVisualProperty *)self visual_elements];
      visual_elements2 = [(RFVisualProperty *)v7 visual_elements];
      if ((visual_elements != 0) == (visual_elements2 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_13:

        goto LABEL_14;
      }

      visual_elements3 = [(RFVisualProperty *)self visual_elements];
      if (!visual_elements3 || (-[RFVisualProperty visual_elements](self, "visual_elements"), v3 = objc_claimAutoreleasedReturnValue(), -[RFVisualProperty visual_elements](v7, "visual_elements"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        is_safe_for_logging = [(RFVisualProperty *)self is_safe_for_logging];
        v11 = is_safe_for_logging ^ [(RFVisualProperty *)v7 is_safe_for_logging]^ 1;
        if (!visual_elements3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  visual_elements = [(RFVisualProperty *)self visual_elements];
  v6 = [visual_elements copy];
  [v4 setVisual_elements:v6];

  [v4 setIs_safe_for_logging:{-[RFVisualProperty is_safe_for_logging](self, "is_safe_for_logging")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFVisualProperty alloc] initWithFacade:self];
  jsonData = [(_SFPBRFVisualProperty *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFVisualProperty alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFVisualProperty *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFVisualProperty alloc] initWithFacade:self];
  data = [(_SFPBRFVisualProperty *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFVisualProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFVisualProperty alloc] initWithData:v5];
  v7 = [(RFVisualProperty *)self initWithProtobuf:v6];

  return v7;
}

@end