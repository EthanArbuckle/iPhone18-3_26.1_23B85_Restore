@interface SFSafariTableOfContentsItem
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFSafariTableOfContentsItem)initWithCoder:(id)coder;
- (SFSafariTableOfContentsItem)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFSafariTableOfContentsItem

- (SFSafariTableOfContentsItem)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v14.receiver = self;
  v14.super_class = SFSafariTableOfContentsItem;
  v5 = [(SFSafariTableOfContentsItem *)&v14 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      text2 = [protobufCopy text];
      [(SFSafariTableOfContentsItem *)v5 setText:text2];
    }

    elementPath = [protobufCopy elementPath];

    if (elementPath)
    {
      elementPath2 = [protobufCopy elementPath];
      [(SFSafariTableOfContentsItem *)v5 setElementPath:elementPath2];
    }

    trailingText = [protobufCopy trailingText];

    if (trailingText)
    {
      trailingText2 = [protobufCopy trailingText];
      [(SFSafariTableOfContentsItem *)v5 setTrailingText:trailingText2];
    }

    v12 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  text = [(SFSafariTableOfContentsItem *)self text];
  v4 = [text hash];
  elementPath = [(SFSafariTableOfContentsItem *)self elementPath];
  v6 = [elementPath hash] ^ v4;
  trailingText = [(SFSafariTableOfContentsItem *)self trailingText];
  v8 = [trailingText hash];

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
    if ([(SFSafariTableOfContentsItem *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      text = [(SFSafariTableOfContentsItem *)self text];
      text2 = [(SFSafariTableOfContentsItem *)v6 text];
      if ((text != 0) == (text2 == 0))
      {
        v11 = 0;
LABEL_30:

        goto LABEL_31;
      }

      text3 = [(SFSafariTableOfContentsItem *)self text];
      if (text3)
      {
        text4 = [(SFSafariTableOfContentsItem *)self text];
        text5 = [(SFSafariTableOfContentsItem *)v6 text];
        if (![text4 isEqual:text5])
        {
          v11 = 0;
          goto LABEL_28;
        }

        v31 = text5;
      }

      elementPath = [(SFSafariTableOfContentsItem *)self elementPath];
      elementPath2 = [(SFSafariTableOfContentsItem *)v6 elementPath];
      v14 = elementPath2;
      if ((elementPath != 0) == (elementPath2 == 0))
      {

        v11 = 0;
        goto LABEL_27;
      }

      elementPath3 = [(SFSafariTableOfContentsItem *)self elementPath];
      if (elementPath3)
      {
        v25 = elementPath;
        elementPath4 = [(SFSafariTableOfContentsItem *)self elementPath];
        elementPath5 = [(SFSafariTableOfContentsItem *)v6 elementPath];
        v28 = elementPath4;
        if (![elementPath4 isEqual:?])
        {
          v11 = 0;
          elementPath = v25;
          goto LABEL_25;
        }

        v29 = elementPath3;
        v30 = text4;
        elementPath = v25;
      }

      else
      {
        v29 = 0;
        v30 = text4;
      }

      trailingText = [(SFSafariTableOfContentsItem *)self trailingText];
      trailingText2 = [(SFSafariTableOfContentsItem *)v6 trailingText];
      if ((trailingText != 0) == (trailingText2 == 0))
      {

        v11 = 0;
        elementPath3 = v29;
        text4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v24 = trailingText;
        v26 = trailingText2;
        trailingText3 = [(SFSafariTableOfContentsItem *)self trailingText];
        elementPath3 = v29;
        if (trailingText3)
        {
          v23 = trailingText3;
          trailingText4 = [(SFSafariTableOfContentsItem *)self trailingText];
          trailingText5 = [(SFSafariTableOfContentsItem *)v6 trailingText];
          v11 = [trailingText4 isEqual:?];
        }

        else
        {

          v11 = 1;
        }

        text4 = v30;
        if (!v29)
        {
          goto LABEL_26;
        }
      }

LABEL_25:

LABEL_26:
LABEL_27:
      text5 = v31;
      if (!text3)
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
  text = [(SFSafariTableOfContentsItem *)self text];
  v6 = [text copy];
  [v4 setText:v6];

  elementPath = [(SFSafariTableOfContentsItem *)self elementPath];
  v8 = [elementPath copy];
  [v4 setElementPath:v8];

  trailingText = [(SFSafariTableOfContentsItem *)self trailingText];
  v10 = [trailingText copy];
  [v4 setTrailingText:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:self];
  jsonData = [(_SFPBSafariTableOfContentsItem *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBSafariTableOfContentsItem *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBSafariTableOfContentsItem alloc] initWithFacade:self];
  data = [(_SFPBSafariTableOfContentsItem *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFSafariTableOfContentsItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBSafariTableOfContentsItem alloc] initWithData:v5];
  v7 = [(SFSafariTableOfContentsItem *)self initWithProtobuf:v6];

  return v7;
}

@end