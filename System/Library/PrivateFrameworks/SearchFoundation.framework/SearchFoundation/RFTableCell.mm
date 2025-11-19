@interface RFTableCell
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFTableCell)initWithCoder:(id)a3;
- (RFTableCell)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setText:(id)a3;
- (void)setVisual:(id)a3;
@end

@implementation RFTableCell

- (unint64_t)hash
{
  v3 = [(RFTableCell *)self text];
  v4 = [v3 hash];
  v5 = [(RFTableCell *)self visual];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFTableCell *)self column_span];
  v8 = [v7 hash];
  v9 = v6 ^ v8 ^ [(RFTableCell *)self horizontal_alignment];
  v10 = [(RFTableCell *)self applySmallCaps];

  return v9 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    if ([(RFTableCell *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFTableCell *)self text];
      v8 = [(RFTableCell *)v6 text];
      if ((v7 != 0) == (v8 == 0))
      {
        LOBYTE(v11) = 0;
LABEL_36:

        goto LABEL_37;
      }

      v9 = [(RFTableCell *)self text];
      if (v9)
      {
        v10 = [(RFTableCell *)self text];
        v3 = [(RFTableCell *)v6 text];
        if (![v10 isEqual:v3])
        {
          LOBYTE(v11) = 0;
          goto LABEL_34;
        }

        v36 = v10;
      }

      v12 = [(RFTableCell *)self visual];
      v13 = [(RFTableCell *)v6 visual];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        LOBYTE(v11) = 0;
        goto LABEL_33;
      }

      v15 = [(RFTableCell *)self visual];
      if (v15)
      {
        v29 = v14;
        v16 = v12;
        v17 = [(RFTableCell *)self visual];
        v31 = [(RFTableCell *)v6 visual];
        v32 = v17;
        if (![v17 isEqual:?])
        {
          LOBYTE(v11) = 0;
          v12 = v16;
          v14 = v29;
          goto LABEL_31;
        }

        v33 = v15;
        v34 = v3;
        v12 = v16;
        v14 = v29;
      }

      else
      {
        v33 = 0;
        v34 = v3;
      }

      v18 = [(RFTableCell *)self column_span];
      v19 = [(RFTableCell *)v6 column_span];
      if ((v18 != 0) == (v19 == 0))
      {

        LOBYTE(v11) = 0;
        v15 = v33;
        v3 = v34;
        if (!v33)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      v27 = v19;
      v28 = v18;
      [(RFTableCell *)self column_span];
      v30 = v15 = v33;
      if (v30)
      {
        v20 = [(RFTableCell *)self column_span];
        [(RFTableCell *)v6 column_span];
        v26 = v25 = v20;
        v21 = [v20 isEqual:?];
        v3 = v34;
        if (!v21)
        {
          LOBYTE(v11) = 0;
          v22 = v26;
          goto LABEL_29;
        }
      }

      else
      {
        v3 = v34;
      }

      v35 = [(RFTableCell *)self horizontal_alignment];
      if (v35 == [(RFTableCell *)v6 horizontal_alignment])
      {
        v23 = [(RFTableCell *)self applySmallCaps];
        v11 = v23 ^ [(RFTableCell *)v6 applySmallCaps]^ 1;
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
          v10 = v36;
          if (!v9)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFTableCell *)self hasText])
  {
    v5 = [(RFTableCell *)self text];
    v6 = [v5 copy];
    [v4 setText:v6];
  }

  if ([(RFTableCell *)self hasVisual])
  {
    v7 = [(RFTableCell *)self visual];
    v8 = [v7 copy];
    [v4 setVisual:v8];
  }

  v9 = [(RFTableCell *)self column_span];
  v10 = [v9 copy];
  [v4 setColumn_span:v10];

  [v4 setHorizontal_alignment:{-[RFTableCell horizontal_alignment](self, "horizontal_alignment")}];
  [v4 setApplySmallCaps:{-[RFTableCell applySmallCaps](self, "applySmallCaps")}];
  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFTableCell alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableCell *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFTableCell alloc] initWithFacade:self];
  v3 = [(_SFPBRFTableCell *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFTableCell alloc] initWithFacade:self];
  v5 = [(_SFPBRFTableCell *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFTableCell)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFTableCell alloc] initWithData:v5];
  v7 = [(RFTableCell *)self initWithProtobuf:v6];

  return v7;
}

- (void)setVisual:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_visual, a3);
  v6 = a3;
  *&self->_has &= ~1u;
  text = self->_text;
  self->_text = 0;
}

- (void)setText:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_text, a3);
  v6 = a3;
  *&self->_has &= ~2u;
  visual = self->_visual;
  self->_visual = 0;
}

- (RFTableCell)initWithProtobuf:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = RFTableCell;
  v5 = [(RFTableCell *)&v17 init];
  if (v5)
  {
    v6 = [v4 text];

    if (v6)
    {
      v7 = [RFTextProperty alloc];
      v8 = [v4 text];
      v9 = [(RFTextProperty *)v7 initWithProtobuf:v8];
      [(RFTableCell *)v5 setText:v9];
    }

    v10 = [v4 visual];

    if (v10)
    {
      v11 = [RFVisualProperty alloc];
      v12 = [v4 visual];
      v13 = [(RFVisualProperty *)v11 initWithProtobuf:v12];
      [(RFTableCell *)v5 setVisual:v13];
    }

    if ([v4 column_span])
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v4, "column_span")}];
      [(RFTableCell *)v5 setColumn_span:v14];
    }

    if ([v4 horizontal_alignment])
    {
      -[RFTableCell setHorizontal_alignment:](v5, "setHorizontal_alignment:", [v4 horizontal_alignment]);
    }

    if ([v4 applySmallCaps])
    {
      -[RFTableCell setApplySmallCaps:](v5, "setApplySmallCaps:", [v4 applySmallCaps]);
    }

    v15 = v5;
  }

  return v5;
}

@end