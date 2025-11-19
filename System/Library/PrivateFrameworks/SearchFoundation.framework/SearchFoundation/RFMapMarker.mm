@interface RFMapMarker
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarker)initWithCoder:(id)a3;
- (RFMapMarker)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setImage:(id)a3;
- (void)setText:(id)a3;
@end

@implementation RFMapMarker

- (RFMapMarker)initWithProtobuf:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = RFMapMarker;
  v5 = [(RFMapMarker *)&v24 init];
  if (v5)
  {
    v6 = [v4 identifier];

    if (v6)
    {
      v7 = [RFMapMarkerIdentifier alloc];
      v8 = [v4 identifier];
      v9 = [(RFMapMarkerIdentifier *)v7 initWithProtobuf:v8];
      [(RFMapMarker *)v5 setIdentifier:v9];
    }

    v10 = [v4 text];

    if (v10)
    {
      v11 = [RFMapMarkerText alloc];
      v12 = [v4 text];
      v13 = [(RFMapMarkerText *)v11 initWithProtobuf:v12];
      [(RFMapMarker *)v5 setText:v13];
    }

    v14 = [v4 image];

    if (v14)
    {
      v15 = [RFMapMarkerImage alloc];
      v16 = [v4 image];
      v17 = [(RFMapMarkerImage *)v15 initWithProtobuf:v16];
      [(RFMapMarker *)v5 setImage:v17];
    }

    v18 = [v4 tint];

    if (v18)
    {
      v19 = [RFColor alloc];
      v20 = [v4 tint];
      v21 = [(RFColor *)v19 initWithProtobuf:v20];
      [(RFMapMarker *)v5 setTint:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(RFMapMarker *)self identifier];
  v4 = [v3 hash];
  v5 = [(RFMapMarker *)self text];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFMapMarker *)self image];
  v8 = [v7 hash];
  v9 = [(RFMapMarker *)self tint];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
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
    if ([(RFMapMarker *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(RFMapMarker *)self identifier];
      v8 = [(RFMapMarker *)v6 identifier];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v9 = [(RFMapMarker *)self identifier];
      if (v9)
      {
        v10 = [(RFMapMarker *)self identifier];
        v3 = [(RFMapMarker *)v6 identifier];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = v10;
      }

      v12 = [(RFMapMarker *)self text];
      v13 = [(RFMapMarker *)v6 text];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      v15 = [(RFMapMarker *)self text];
      v40 = v15;
      if (v15)
      {
        v16 = v15;
        v35 = v14;
        v17 = v12;
        v18 = [(RFMapMarker *)self text];
        v37 = [(RFMapMarker *)v6 text];
        v38 = v18;
        if (![v18 isEqual:?])
        {
          v11 = 0;
          v12 = v17;
          v14 = v35;
          goto LABEL_32;
        }

        v39 = v3;
        v12 = v17;
        v14 = v35;
      }

      else
      {
        v39 = v3;
      }

      v19 = [(RFMapMarker *)self image];
      v20 = [(RFMapMarker *)v6 image];
      if ((v19 != 0) == (v20 == 0))
      {

        v11 = 0;
        v3 = v39;
        v16 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v33 = v20;
      v34 = v19;
      [(RFMapMarker *)self image];
      v36 = v16 = v40;
      if (!v36 || (-[RFMapMarker image](self, "image"), v21 = objc_claimAutoreleasedReturnValue(), -[RFMapMarker image](v6, "image"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        v22 = [(RFMapMarker *)self tint];
        v23 = [(RFMapMarker *)v6 tint];
        if ((v22 != 0) == (v23 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = v22;
          v30 = v23;
          v24 = [(RFMapMarker *)self tint];
          v16 = v40;
          if (v24)
          {
            v28 = v24;
            v27 = [(RFMapMarker *)self tint];
            v25 = [(RFMapMarker *)v6 tint];
            v11 = [v27 isEqual:?];
          }

          else
          {

            v11 = 1;
          }
        }

        v3 = v39;
        if (!v36)
        {
LABEL_31:

          if (!v16)
          {
LABEL_33:

LABEL_34:
            v10 = v41;
            if (!v9)
            {
LABEL_36:

              goto LABEL_37;
            }

LABEL_35:

            goto LABEL_36;
          }

LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v11 = 0;
        v3 = v39;
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if ([(RFMapMarker *)self hasIdentifier])
  {
    v5 = [(RFMapMarker *)self identifier];
    v6 = [v5 copy];
    [v4 setIdentifier:v6];
  }

  if ([(RFMapMarker *)self hasText])
  {
    v7 = [(RFMapMarker *)self text];
    v8 = [v7 copy];
    [v4 setText:v8];
  }

  if ([(RFMapMarker *)self hasImage])
  {
    v9 = [(RFMapMarker *)self image];
    v10 = [v9 copy];
    [v4 setImage:v10];
  }

  v11 = [(RFMapMarker *)self tint];
  v12 = [v11 copy];
  [v4 setTint:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarker alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarker *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarker alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapMarker *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFMapMarker alloc] initWithFacade:self];
  v5 = [(_SFPBRFMapMarker *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFMapMarker)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarker alloc] initWithData:v5];
  v7 = [(RFMapMarker *)self initWithProtobuf:v6];

  return v7;
}

- (void)setImage:(id)a3
{
  *&self->_has |= 4u;
  objc_storeStrong(&self->_image, a3);
  v7 = a3;
  *&self->_has &= ~1u;
  identifier = self->_identifier;
  self->_identifier = 0;

  *&self->_has &= ~2u;
  text = self->_text;
  self->_text = 0;
}

- (void)setText:(id)a3
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_text, a3);
  v7 = a3;
  *&self->_has &= ~1u;
  identifier = self->_identifier;
  self->_identifier = 0;

  *&self->_has &= ~4u;
  image = self->_image;
  self->_image = 0;
}

- (void)setIdentifier:(id)a3
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_identifier, a3);
  v7 = a3;
  *&self->_has &= ~2u;
  text = self->_text;
  self->_text = 0;

  *&self->_has &= ~4u;
  image = self->_image;
  self->_image = 0;
}

@end