@interface RFTextElement
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTextElement)initWithCoder:(id)coder;
- (RFTextElement)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RFTextElement

- (unint64_t)hash
{
  formatted_text = [(RFTextElement *)self formatted_text];
  v4 = [formatted_text hash];
  line_limit = [(RFTextElement *)self line_limit];
  v6 = [line_limit hash] ^ v4;
  show_more_on_tap = [(RFTextElement *)self show_more_on_tap];
  v8 = [show_more_on_tap hash];

  return v6 ^ v8;
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
    if ([(RFTextElement *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      formatted_text = [(RFTextElement *)self formatted_text];
      formatted_text2 = [(RFTextElement *)v6 formatted_text];
      if ((formatted_text != 0) == (formatted_text2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      formatted_text3 = [(RFTextElement *)self formatted_text];
      if (formatted_text3)
      {
        formatted_text4 = [(RFTextElement *)self formatted_text];
        formatted_text5 = [(RFTextElement *)v6 formatted_text];
        if (![formatted_text4 isEqual:formatted_text5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = formatted_text5;
      }

      line_limit = [(RFTextElement *)self line_limit];
      line_limit2 = [(RFTextElement *)v6 line_limit];
      v14 = line_limit2;
      if ((line_limit != 0) == (line_limit2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      line_limit3 = [(RFTextElement *)self line_limit];
      if (line_limit3)
      {
        v25 = line_limit;
        line_limit4 = [(RFTextElement *)self line_limit];
        line_limit5 = [(RFTextElement *)v6 line_limit];
        v28 = line_limit4;
        if (![line_limit4 isEqual:?])
        {
          v11 = 0;
          line_limit = v25;
          goto LABEL_25;
        }

        v29 = line_limit3;
        v30 = formatted_text4;
        line_limit = v25;
      }

      else
      {
        v29 = 0;
        v30 = formatted_text4;
      }

      show_more_on_tap = [(RFTextElement *)self show_more_on_tap];
      show_more_on_tap2 = [(RFTextElement *)v6 show_more_on_tap];
      if ((show_more_on_tap != 0) == (show_more_on_tap2 == 0))
      {

        v11 = 0;
        line_limit3 = v29;
        formatted_text4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = show_more_on_tap;
        v26 = show_more_on_tap2;
        show_more_on_tap3 = [(RFTextElement *)self show_more_on_tap];
        line_limit3 = v29;
        if (show_more_on_tap3)
        {
          v23 = show_more_on_tap3;
          show_more_on_tap4 = [(RFTextElement *)self show_more_on_tap];
          show_more_on_tap5 = [(RFTextElement *)v6 show_more_on_tap];
          v11 = [show_more_on_tap4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        formatted_text4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      formatted_text5 = v31;
      if (!formatted_text3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  formatted_text = [(RFTextElement *)self formatted_text];
  v6 = [formatted_text copy];
  [v4 setFormatted_text:v6];

  line_limit = [(RFTextElement *)self line_limit];
  v8 = [line_limit copy];
  [v4 setLine_limit:v8];

  show_more_on_tap = [(RFTextElement *)self show_more_on_tap];
  v10 = [show_more_on_tap copy];
  [v4 setShow_more_on_tap:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTextElement alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTextElement *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTextElement alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTextElement *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFTextElement alloc] initWithFacade:self];
  data = [(_SFPBRFTextElement *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFTextElement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTextElement alloc] initWithData:v5];
  v7 = [(RFTextElement *)self initWithProtobuf:v6];

  return v7;
}

- (RFTextElement)initWithProtobuf:(id)protobuf
{
  v28 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v26.receiver = self;
  v26.super_class = RFTextElement;
  v5 = [(RFTextElement *)&v26 init];
  if (v5)
  {
    formatted_texts = [protobufCopy formatted_texts];
    if (formatted_texts)
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
    formatted_texts2 = [protobufCopy formatted_texts];
    v9 = [formatted_texts2 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
            objc_enumerationMutation(formatted_texts2);
          }

          v13 = [[RFFormattedText alloc] initWithProtobuf:*(*(&v22 + 1) + 8 * i)];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [formatted_texts2 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v10);
    }

    [(RFTextElement *)v5 setFormatted_text:v7];
    if ([protobufCopy line_limit])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "line_limit")}];
      [(RFTextElement *)v5 setLine_limit:v14];
    }

    show_more_on_tap = [protobufCopy show_more_on_tap];

    if (show_more_on_tap)
    {
      v16 = [RFShowMoreOnTap alloc];
      show_more_on_tap2 = [protobufCopy show_more_on_tap];
      v18 = [(RFShowMoreOnTap *)v16 initWithProtobuf:show_more_on_tap2];
      [(RFTextElement *)v5 setShow_more_on_tap:v18];
    }

    v19 = v5;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

@end