@interface RFMapAnnotation
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (RFMapAnnotation)initWithCoder:(id)a3;
- (RFMapAnnotation)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RFMapAnnotation

- (unint64_t)hash
{
  v3 = [(RFMapAnnotation *)self coordinate];
  v4 = [v3 hash];
  v5 = [(RFMapAnnotation *)self content];
  v6 = [v5 hash] ^ v4;
  v7 = [(RFMapAnnotation *)self title];
  v8 = [v7 hash];
  v9 = [(RFMapAnnotation *)self anchor];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(RFMapAnnotation *)self label];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    if ([(RFMapAnnotation *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(RFMapAnnotation *)self coordinate];
      v7 = [(RFMapAnnotation *)v5 coordinate];
      if ((v6 != 0) == (v7 == 0))
      {
        v10 = 0;
LABEL_50:

        goto LABEL_51;
      }

      v8 = [(RFMapAnnotation *)self coordinate];
      if (v8)
      {
        v9 = [(RFMapAnnotation *)self coordinate];
        v48 = [(RFMapAnnotation *)v5 coordinate];
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_48;
        }

        v47 = v9;
      }

      v49 = [(RFMapAnnotation *)self content];
      v11 = [(RFMapAnnotation *)v5 content];
      if ((v49 != 0) != (v11 == 0))
      {
        v12 = [(RFMapAnnotation *)self content];
        if (v12)
        {
          v13 = v12;
          v14 = [(RFMapAnnotation *)self content];
          [(RFMapAnnotation *)v5 content];
          v45 = v44 = v14;
          if (![v14 isEqual:?])
          {
            v10 = 0;
            v19 = v13;
            v20 = v45;
            goto LABEL_45;
          }

          v46 = v13;
        }

        else
        {
          v46 = 0;
        }

        v15 = [(RFMapAnnotation *)self title];
        v16 = [(RFMapAnnotation *)v5 title];
        if ((v15 != 0) != (v16 == 0))
        {
          v42 = v15;
          v43 = v16;
          v17 = [(RFMapAnnotation *)self title];
          if (v17)
          {
            v18 = [(RFMapAnnotation *)self title];
            v39 = [(RFMapAnnotation *)v5 title];
            v40 = v18;
            if (![v18 isEqual:?])
            {
              v10 = 0;
              v19 = v46;
              v20 = v45;
              goto LABEL_43;
            }

            v41 = v17;
          }

          else
          {
            v41 = 0;
          }

          v21 = [(RFMapAnnotation *)self anchor];
          v22 = [(RFMapAnnotation *)v5 anchor];
          if ((v21 != 0) != (v22 == 0))
          {
            v38 = v22;
            [(RFMapAnnotation *)self anchor];
            v37 = v20 = v45;
            if (v37)
            {
              v33 = v21;
              v23 = [(RFMapAnnotation *)self anchor];
              v35 = [(RFMapAnnotation *)v5 anchor];
              v36 = v23;
              if (![v23 isEqual:?])
              {
                v10 = 0;
                v27 = v37;
                v21 = v33;
                goto LABEL_41;
              }

              v21 = v33;
            }

            v24 = [(RFMapAnnotation *)self label];
            v25 = [(RFMapAnnotation *)v5 label];
            if ((v24 != 0) == (v25 == 0))
            {

              v10 = 0;
              v20 = v45;
              v27 = v37;
              if (!v37)
              {
LABEL_42:

                v17 = v41;
                v19 = v46;
                if (!v41)
                {
                  goto LABEL_44;
                }

                goto LABEL_43;
              }
            }

            else
            {
              v32 = v25;
              v34 = v24;
              v26 = [(RFMapAnnotation *)self label];
              v20 = v45;
              v27 = v37;
              if (v26)
              {
                v31 = v26;
                v30 = [(RFMapAnnotation *)self label];
                v29 = [(RFMapAnnotation *)v5 label];
                v10 = [v30 isEqual:v29];

                if (!v37)
                {
                  goto LABEL_42;
                }
              }

              else
              {

                v10 = 1;
                if (!v37)
                {
                  goto LABEL_42;
                }
              }
            }

LABEL_41:

            goto LABEL_42;
          }

          v10 = 0;
          v19 = v46;
          v20 = v45;
          v17 = v41;
          if (!v41)
          {
LABEL_44:

            if (!v19)
            {
LABEL_46:

LABEL_47:
              v9 = v47;
              if (!v8)
              {
LABEL_49:

                goto LABEL_50;
              }

LABEL_48:

              goto LABEL_49;
            }

LABEL_45:

            goto LABEL_46;
          }

LABEL_43:

          goto LABEL_44;
        }

        if (v46)
        {
        }
      }

      v10 = 0;
      goto LABEL_47;
    }

    v10 = 0;
  }

LABEL_51:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(RFMapAnnotation *)self coordinate];
  v6 = [v5 copy];
  [v4 setCoordinate:v6];

  v7 = [(RFMapAnnotation *)self content];
  v8 = [v7 copy];
  [v4 setContent:v8];

  v9 = [(RFMapAnnotation *)self title];
  v10 = [v9 copy];
  [v4 setTitle:v10];

  v11 = [(RFMapAnnotation *)self anchor];
  v12 = [v11 copy];
  [v4 setAnchor:v12];

  v13 = [(RFMapAnnotation *)self label];
  v14 = [v13 copy];
  [v4 setLabel:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRFMapAnnotation alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapAnnotation *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRFMapAnnotation alloc] initWithFacade:self];
  v3 = [(_SFPBRFMapAnnotation *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRFMapAnnotation alloc] initWithFacade:self];
  v5 = [(_SFPBRFMapAnnotation *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (RFMapAnnotation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRFMapAnnotation alloc] initWithData:v5];
  v7 = [(RFMapAnnotation *)self initWithProtobuf:v6];

  return v7;
}

- (RFMapAnnotation)initWithProtobuf:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = RFMapAnnotation;
  v5 = [(RFMapAnnotation *)&v26 init];
  if (v5)
  {
    v6 = [v4 coordinate];

    if (v6)
    {
      v7 = [SFLatLng alloc];
      v8 = [v4 coordinate];
      v9 = [(SFLatLng *)v7 initWithProtobuf:v8];
      [(RFMapAnnotation *)v5 setCoordinate:v9];
    }

    v10 = [v4 content];

    if (v10)
    {
      v11 = [RFVisualProperty alloc];
      v12 = [v4 content];
      v13 = [(RFVisualProperty *)v11 initWithProtobuf:v12];
      [(RFMapAnnotation *)v5 setContent:v13];
    }

    v14 = [v4 title];

    if (v14)
    {
      v15 = [v4 title];
      [(RFMapAnnotation *)v5 setTitle:v15];
    }

    v16 = [v4 anchor];

    if (v16)
    {
      v17 = [RFMapPoint alloc];
      v18 = [v4 anchor];
      v19 = [(RFMapPoint *)v17 initWithProtobuf:v18];
      [(RFMapAnnotation *)v5 setAnchor:v19];
    }

    v20 = [v4 label];

    if (v20)
    {
      v21 = [RFTextProperty alloc];
      v22 = [v4 label];
      v23 = [(RFTextProperty *)v21 initWithProtobuf:v22];
      [(RFMapAnnotation *)v5 setLabel:v23];
    }

    v24 = v5;
  }

  return v5;
}

@end