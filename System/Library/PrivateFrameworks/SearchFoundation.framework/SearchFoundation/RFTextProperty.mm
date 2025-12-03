@interface RFTextProperty
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTextProperty)initWithCoder:(id)coder;
- (RFTextProperty)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFTextProperty

- (unint64_t)hash
{
  text_elements = [(RFTextProperty *)self text_elements];
  v4 = [text_elements hash];
  is_safe_for_logging = [(RFTextProperty *)self is_safe_for_logging];

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
    if ([(RFTextProperty *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = equalCopy;
      text_elements = [(RFTextProperty *)self text_elements];
      text_elements2 = [(RFTextProperty *)v7 text_elements];
      if ((text_elements != 0) == (text_elements2 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_13:

        goto LABEL_14;
      }

      text_elements3 = [(RFTextProperty *)self text_elements];
      if (!text_elements3 || (-[RFTextProperty text_elements](self, "text_elements"), v3 = objc_claimAutoreleasedReturnValue(), -[RFTextProperty text_elements](v7, "text_elements"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        is_safe_for_logging = [(RFTextProperty *)self is_safe_for_logging];
        v11 = is_safe_for_logging ^ [(RFTextProperty *)v7 is_safe_for_logging]^ 1;
        if (!text_elements3)
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
  text_elements = [(RFTextProperty *)self text_elements];
  v6 = [text_elements copy];
  [v4 setText_elements:v6];

  [v4 setIs_safe_for_logging:{-[RFTextProperty is_safe_for_logging](self, "is_safe_for_logging")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTextProperty alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTextProperty *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTextProperty alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTextProperty *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFTextProperty alloc] initWithFacade:self];
  data = [(_SFPBRFTextProperty *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFTextProperty)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTextProperty alloc] initWithData:v5];
  v7 = [(RFTextProperty *)self initWithProtobuf:v6];

  return v7;
}

- (RFTextProperty)initWithProtobuf:(id)protobuf
{
  v23 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v21.receiver = self;
  v21.super_class = RFTextProperty;
  v5 = [(RFTextProperty *)&v21 init];
  if (v5)
  {
    text_elements = [protobufCopy text_elements];
    if (text_elements)
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
    text_elements2 = [protobufCopy text_elements];
    v9 = [text_elements2 countByEnumeratingWithState:&v17 objects:v22 count:16];
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
            objc_enumerationMutation(text_elements2);
          }

          v13 = [[RFTextElement alloc] initWithProtobuf:*(*(&v17 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [text_elements2 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v10);
    }

    [(RFTextProperty *)v5 setText_elements:v7];
    if ([protobufCopy is_safe_for_logging])
    {
      -[RFTextProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [protobufCopy is_safe_for_logging]);
    }

    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end