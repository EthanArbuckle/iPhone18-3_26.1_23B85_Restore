@interface RFTableCell
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableCell)initWithCoder:(id)coder;
- (RFTableCell)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setText:(id)text;
- (void)setVisual:(id)visual;
@end

@implementation RFTableCell

- (unint64_t)hash
{
  text = [(RFTableCell *)self text];
  v4 = [text hash];
  visual = [(RFTableCell *)self visual];
  v6 = [visual hash] ^ v4;
  column_span = [(RFTableCell *)self column_span];
  v8 = [column_span hash];
  v9 = v6 ^ v8 ^ [(RFTableCell *)self horizontal_alignment];
  applySmallCaps = [(RFTableCell *)self applySmallCaps];

  return v9 ^ applySmallCaps;
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
    if ([(RFTableCell *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      text = [(RFTableCell *)self text];
      text2 = [(RFTableCell *)v6 text];
      if ((text != 0) == (text2 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_36:

        goto LABEL_37;
      }

      text3 = [(RFTableCell *)self text];
      if (text3)
      {
        text4 = [(RFTableCell *)self text];
        text5 = [(RFTableCell *)v6 text];
        if (![text4 isEqual:text5])
        {
          LOBYTE(v11) = 0;
          goto LABEL_34;
        }

        v36 = text4;
      }

      visual = [(RFTableCell *)self visual];
      visual2 = [(RFTableCell *)v6 visual];
      v14 = visual2;
      if ((visual != 0) == (visual2 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_33;
      }

      visual3 = [(RFTableCell *)self visual];
      if (visual3)
      {
        v29 = v14;
        v16 = visual;
        visual4 = [(RFTableCell *)self visual];
        visual5 = [(RFTableCell *)v6 visual];
        v32 = visual4;
        if (![visual4 isEqual:?])
        {
          LOBYTE(v11) = 0;
          visual = v16;
          v14 = v29;
          goto LABEL_31;
        }

        v33 = visual3;
        v34 = text5;
        visual = v16;
        v14 = v29;
      }

      else
      {
        v33 = 0;
        v34 = text5;
      }

      column_span = [(RFTableCell *)self column_span];
      column_span2 = [(RFTableCell *)v6 column_span];
      if ((column_span != 0) == (column_span2 == 0))
      {

        LOBYTE(v11) = 0;
        visual3 = v33;
        text5 = v34;
        if (!v33)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v27 = column_span2;
      v28 = column_span;
      [(RFTableCell *)self column_span];
      v30 = visual3 = v33;
      if (v30)
      {
        column_span3 = [(RFTableCell *)self column_span];
        [(RFTableCell *)v6 column_span];
        v26 = v25 = column_span3;
        v21 = [column_span3 isEqual:?];
        text5 = v34;
        if (!v21)
        {
          LOBYTE(v11) = 0;
          v22 = v26;
          goto LABEL_29;
        }
      }

      else
      {
        text5 = v34;
      }

      horizontal_alignment = [(RFTableCell *)self horizontal_alignment];
      if (horizontal_alignment == [(RFTableCell *)v6 horizontal_alignment])
      {
        applySmallCaps = [(RFTableCell *)self applySmallCaps];
        v11 = applySmallCaps ^ [(RFTableCell *)v6 applySmallCaps]^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }

      v22 = v26;
      if (!v30)
      {
LABEL_30:

        if (!v33)
        {
LABEL_32:

LABEL_33:
          text4 = v36;
          if (!text3)
          {
LABEL_35:

            goto LABEL_36;
          }

LABEL_34:

          goto LABEL_35;
        }

LABEL_31:

        goto LABEL_32;
      }

LABEL_29:

      goto LABEL_30;
    }

    LOBYTE(v11) = 0;
  }

LABEL_37:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFTableCell *)self hasText])
  {
    text = [(RFTableCell *)self text];
    v6 = [text copy];
    [v4 setText:v6];
  }

  if ([(RFTableCell *)self hasVisual])
  {
    visual = [(RFTableCell *)self visual];
    v8 = [visual copy];
    [v4 setVisual:v8];
  }

  column_span = [(RFTableCell *)self column_span];
  v10 = [column_span copy];
  [v4 setColumn_span:v10];

  [v4 setHorizontal_alignment:{-[RFTableCell horizontal_alignment](self, "horizontal_alignment")}];
  [v4 setApplySmallCaps:{-[RFTableCell applySmallCaps](self, "applySmallCaps")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableCell alloc] initWithFacade:self];
  jsonData = [(_SFPBRFTableCell *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableCell alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFTableCell *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFTableCell alloc] initWithFacade:self];
  data = [(_SFPBRFTableCell *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFTableCell)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableCell alloc] initWithData:v5];
  v7 = [(RFTableCell *)self initWithProtobuf:v6];

  return v7;
}

- (void)setVisual:(id)visual
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_visual, visual);
  visualCopy = visual;
  *&self->_has &= ~1u;
  text = self->_text;
  self->_text = 0;
}

- (void)setText:(id)text
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_text, text);
  textCopy = text;
  *&self->_has &= ~2u;
  visual = self->_visual;
  self->_visual = 0;
}

- (RFTableCell)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v17.receiver = self;
  v17.super_class = RFTableCell;
  v5 = [(RFTableCell *)&v17 init];
  if (v5)
  {
    text = [protobufCopy text];

    if (text)
    {
      v7 = [RFTextProperty alloc];
      text2 = [protobufCopy text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:text2];
      [(RFTableCell *)v5 setText:v9];
    }

    visual = [protobufCopy visual];

    if (visual)
    {
      v11 = [RFVisualProperty alloc];
      visual2 = [protobufCopy visual];
      v13 = [(RFVisualProperty *)v11 initWithProtobuf:visual2];
      [(RFTableCell *)v5 setVisual:v13];
    }

    if ([protobufCopy column_span])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(protobufCopy, "column_span")}];
      [(RFTableCell *)v5 setColumn_span:v14];
    }

    if ([protobufCopy horizontal_alignment])
    {
      -[RFTableCell setHorizontal_alignment:](v5, "setHorizontal_alignment:", [protobufCopy horizontal_alignment]);
    }

    if ([protobufCopy applySmallCaps])
    {
      -[RFTableCell setApplySmallCaps:](v5, "setApplySmallCaps:", [protobufCopy applySmallCaps]);
    }

    v15 = v5;
  }

  return v5;
}

@end