@interface RFVisualPropertyWithAction
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFVisualPropertyWithAction)initWithCoder:(id)coder;
- (RFVisualPropertyWithAction)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFVisualPropertyWithAction

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = RFVisualPropertyWithAction;
  v3 = [(RFVisualProperty *)&v10 hash];
  visual_elements = [(RFVisualProperty *)self visual_elements];
  v5 = [visual_elements hash];
  v6 = v5 ^ [(RFVisualProperty *)self is_safe_for_logging];
  commandItem = [(RFVisualPropertyWithAction *)self commandItem];
  v8 = v6 ^ [commandItem hash];

  return v8 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    if ([(RFVisualPropertyWithAction *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v22.receiver = self;
      v22.super_class = RFVisualPropertyWithAction;
      if ([(RFVisualProperty *)&v22 isEqual:equalCopy])
      {
        v6 = equalCopy;
        visual_elements = [(RFVisualProperty *)self visual_elements];
        visual_elements2 = [(RFVisualProperty *)v6 visual_elements];
        if ((visual_elements != 0) == (visual_elements2 == 0))
        {
          v11 = 0;
LABEL_21:

          goto LABEL_22;
        }

        visual_elements3 = [(RFVisualProperty *)self visual_elements];
        if (visual_elements3)
        {
          visual_elements4 = [(RFVisualProperty *)self visual_elements];
          visual_elements5 = [(RFVisualProperty *)v6 visual_elements];
          if (![visual_elements4 isEqual:visual_elements5])
          {
            v11 = 0;
            goto LABEL_19;
          }

          v21 = visual_elements4;
        }

        is_safe_for_logging = [(RFVisualProperty *)self is_safe_for_logging];
        if (is_safe_for_logging == [(RFVisualProperty *)v6 is_safe_for_logging])
        {
          commandItem = [(RFVisualPropertyWithAction *)self commandItem];
          commandItem2 = [(RFVisualPropertyWithAction *)v6 commandItem];
          v15 = commandItem2;
          if ((commandItem != 0) != (commandItem2 == 0))
          {
            commandItem3 = [(RFVisualPropertyWithAction *)self commandItem];
            if (commandItem3)
            {
              v17 = commandItem3;
              commandItem4 = [(RFVisualPropertyWithAction *)self commandItem];
              commandItem5 = [(RFVisualPropertyWithAction *)v6 commandItem];
              v11 = [commandItem4 isEqual:commandItem5];
            }

            else
            {

              v11 = 1;
            }

LABEL_18:
            visual_elements4 = v21;
            if (!visual_elements3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RFVisualPropertyWithAction;
  v4 = [(RFVisualProperty *)&v10 copyWithZone:zone];
  visual_elements = [(RFVisualProperty *)self visual_elements];
  v6 = [visual_elements copy];
  [v4 setVisual_elements:v6];

  [v4 setIs_safe_for_logging:{-[RFVisualProperty is_safe_for_logging](self, "is_safe_for_logging")}];
  commandItem = [(RFVisualPropertyWithAction *)self commandItem];
  v8 = [commandItem copy];
  [v4 setCommandItem:v8];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFVisualPropertyWithAction alloc] initWithFacade:self];
  jsonData = [(_SFPBRFVisualPropertyWithAction *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFVisualPropertyWithAction alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFVisualPropertyWithAction *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFVisualPropertyWithAction alloc] initWithFacade:self];
  data = [(_SFPBRFVisualPropertyWithAction *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFVisualPropertyWithAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFVisualPropertyWithAction alloc] initWithData:v5];
  v7 = [(RFVisualPropertyWithAction *)self initWithProtobuf:v6];

  return v7;
}

- (RFVisualPropertyWithAction)initWithProtobuf:(id)protobuf
{
  v27 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v25.receiver = self;
  v25.super_class = RFVisualPropertyWithAction;
  v5 = [(RFVisualPropertyWithAction *)&v25 init];
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

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    visual_elements2 = [protobufCopy visual_elements];
    v9 = [visual_elements2 countByEnumeratingWithState:&v21 objects:v26 count:16];
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
            objc_enumerationMutation(visual_elements2);
          }

          v13 = [[RFVisualElement alloc] initWithProtobuf:*(*(&v21 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [visual_elements2 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
    }

    [(RFVisualProperty *)v5 setVisual_elements:v7];
    if ([protobufCopy is_safe_for_logging])
    {
      -[RFVisualProperty setIs_safe_for_logging:](v5, "setIs_safe_for_logging:", [protobufCopy is_safe_for_logging]);
    }

    commandItem = [protobufCopy commandItem];

    if (commandItem)
    {
      v15 = [SFCommandButtonItem alloc];
      commandItem2 = [protobufCopy commandItem];
      v17 = [(SFCommandButtonItem *)v15 initWithProtobuf:commandItem2];
      [(RFVisualPropertyWithAction *)v5 setCommandItem:v17];
    }

    v18 = v5;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v5;
}

@end