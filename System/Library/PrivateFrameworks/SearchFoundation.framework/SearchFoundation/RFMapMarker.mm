@interface RFMapMarker
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapMarker)initWithCoder:(id)coder;
- (RFMapMarker)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentifier:(id)identifier;
- (void)setImage:(id)image;
- (void)setText:(id)text;
@end

@implementation RFMapMarker

- (RFMapMarker)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v24.receiver = self;
  v24.super_class = RFMapMarker;
  v5 = [(RFMapMarker *)&v24 init];
  if (v5)
  {
    identifier = [protobufCopy identifier];

    if (identifier)
    {
      v7 = [RFMapMarkerIdentifier alloc];
      identifier2 = [protobufCopy identifier];
      v9 = [(RFMapMarkerIdentifier *)v7 initWithProtobuf:identifier2];
      [(RFMapMarker *)v5 setIdentifier:v9];
    }

    text = [protobufCopy text];

    if (text)
    {
      v11 = [RFMapMarkerText alloc];
      text2 = [protobufCopy text];
      v13 = [(RFMapMarkerText *)v11 initWithProtobuf:text2];
      [(RFMapMarker *)v5 setText:v13];
    }

    image = [protobufCopy image];

    if (image)
    {
      v15 = [RFMapMarkerImage alloc];
      image2 = [protobufCopy image];
      v17 = [(RFMapMarkerImage *)v15 initWithProtobuf:image2];
      [(RFMapMarker *)v5 setImage:v17];
    }

    tint = [protobufCopy tint];

    if (tint)
    {
      v19 = [RFColor alloc];
      tint2 = [protobufCopy tint];
      v21 = [(RFColor *)v19 initWithProtobuf:tint2];
      [(RFMapMarker *)v5 setTint:v21];
    }

    v22 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(RFMapMarker *)self identifier];
  v4 = [identifier hash];
  text = [(RFMapMarker *)self text];
  v6 = [text hash] ^ v4;
  image = [(RFMapMarker *)self image];
  v8 = [image hash];
  tint = [(RFMapMarker *)self tint];
  v10 = v8 ^ [tint hash];

  return v6 ^ v10;
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
    if ([(RFMapMarker *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      identifier = [(RFMapMarker *)self identifier];
      identifier2 = [(RFMapMarker *)v6 identifier];
      if ((identifier != 0) == (identifier2 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      identifier3 = [(RFMapMarker *)self identifier];
      if (identifier3)
      {
        identifier4 = [(RFMapMarker *)self identifier];
        identifier5 = [(RFMapMarker *)v6 identifier];
        if (![identifier4 isEqual:identifier5])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = identifier4;
      }

      text = [(RFMapMarker *)self text];
      text2 = [(RFMapMarker *)v6 text];
      v14 = text2;
      if ((text != 0) == (text2 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      text3 = [(RFMapMarker *)self text];
      v40 = text3;
      if (text3)
      {
        v16 = text3;
        v35 = v14;
        v17 = text;
        text4 = [(RFMapMarker *)self text];
        text5 = [(RFMapMarker *)v6 text];
        v38 = text4;
        if (![text4 isEqual:?])
        {
          v11 = 0;
          text = v17;
          v14 = v35;
          goto LABEL_32;
        }

        v39 = identifier5;
        text = v17;
        v14 = v35;
      }

      else
      {
        v39 = identifier5;
      }

      image = [(RFMapMarker *)self image];
      image2 = [(RFMapMarker *)v6 image];
      if ((image != 0) == (image2 == 0))
      {

        v11 = 0;
        identifier5 = v39;
        v16 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v33 = image2;
      v34 = image;
      [(RFMapMarker *)self image];
      v36 = v16 = v40;
      if (!v36 || (-[RFMapMarker image](self, "image"), v21 = objc_claimAutoreleasedReturnValue(), -[RFMapMarker image](v6, "image"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        tint = [(RFMapMarker *)self tint];
        tint2 = [(RFMapMarker *)v6 tint];
        if ((tint != 0) == (tint2 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = tint;
          v30 = tint2;
          tint3 = [(RFMapMarker *)self tint];
          v16 = v40;
          if (tint3)
          {
            v28 = tint3;
            tint4 = [(RFMapMarker *)self tint];
            tint5 = [(RFMapMarker *)v6 tint];
            v11 = [tint4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }
        }

        identifier5 = v39;
        if (!v36)
        {
LABEL_31:

          if (!v16)
          {
LABEL_33:

LABEL_34:
            identifier4 = v41;
            if (!identifier3)
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
        identifier5 = v39;
      }

      goto LABEL_31;
    }

    v11 = 0;
  }

LABEL_38:

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(RFMapMarker *)self hasIdentifier])
  {
    identifier = [(RFMapMarker *)self identifier];
    v6 = [identifier copy];
    [v4 setIdentifier:v6];
  }

  if ([(RFMapMarker *)self hasText])
  {
    text = [(RFMapMarker *)self text];
    v8 = [text copy];
    [v4 setText:v8];
  }

  if ([(RFMapMarker *)self hasImage])
  {
    image = [(RFMapMarker *)self image];
    v10 = [image copy];
    [v4 setImage:v10];
  }

  tint = [(RFMapMarker *)self tint];
  v12 = [tint copy];
  [v4 setTint:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapMarker alloc] initWithFacade:self];
  jsonData = [(_SFPBRFMapMarker *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapMarker alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRFMapMarker *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRFMapMarker alloc] initWithFacade:self];
  data = [(_SFPBRFMapMarker *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (RFMapMarker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapMarker alloc] initWithData:v5];
  v7 = [(RFMapMarker *)self initWithProtobuf:v6];

  return v7;
}

- (void)setImage:(id)image
{
  *&self->_has |= 4u;
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  *&self->_has &= ~1u;
  identifier = self->_identifier;
  self->_identifier = 0;

  *&self->_has &= ~2u;
  text = self->_text;
  self->_text = 0;
}

- (void)setText:(id)text
{
  *&self->_has |= 2u;
  objc_storeStrong(&self->_text, text);
  textCopy = text;
  *&self->_has &= ~1u;
  identifier = self->_identifier;
  self->_identifier = 0;

  *&self->_has &= ~4u;
  image = self->_image;
  self->_image = 0;
}

- (void)setIdentifier:(id)identifier
{
  *&self->_has |= 1u;
  objc_storeStrong(&self->_identifier, identifier);
  identifierCopy = identifier;
  *&self->_has &= ~2u;
  text = self->_text;
  self->_text = 0;

  *&self->_has &= ~4u;
  image = self->_image;
  self->_image = 0;
}

@end