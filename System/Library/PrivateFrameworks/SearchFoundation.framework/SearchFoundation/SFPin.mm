@interface SFPin
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPin)initWithCoder:(id)a3;
- (SFPin)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPin

- (unint64_t)hash
{
  v3 = [(SFPin *)self location];
  v4 = [v3 hash];
  v5 = [(SFPin *)self pinColor];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFPin *)self label];
  v8 = [v7 hash];
  v9 = [(SFPin *)self resultID];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(SFPin *)self mapsData];
  v12 = [v11 hash];
  v13 = v12 ^ [(SFPin *)self pinBehavior];
  v14 = [(SFPin *)self pinText];
  v15 = v13 ^ [v14 hash];

  return v10 ^ v15;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  if (self == v6)
  {
    v12 = 1;
  }

  else
  {
    if ([(SFPin *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = v6;
      v8 = [(SFPin *)self location];
      v9 = [(SFPin *)v7 location];
      if ((v8 != 0) == (v9 == 0))
      {
        v12 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v10 = [(SFPin *)self location];
      if (v10)
      {
        v11 = [(SFPin *)self location];
        v58 = [(SFPin *)v7 location];
        if (![v11 isEqual:?])
        {
          v12 = 0;
          goto LABEL_34;
        }

        v55 = v11;
      }

      v57 = [(SFPin *)self pinColor];
      v56 = [(SFPin *)v7 pinColor];
      if ((v57 != 0) == (v56 == 0))
      {
        goto LABEL_32;
      }

      v13 = [(SFPin *)self pinColor];
      if (v13)
      {
        v14 = [(SFPin *)self pinColor];
        v3 = [(SFPin *)v7 pinColor];
        if (([v14 isEqual:v3] & 1) == 0)
        {

LABEL_31:
LABEL_32:

          v12 = 0;
          goto LABEL_33;
        }

        v51 = v14;
        v54 = v9;
        v15 = v58;
        v16 = v13;
      }

      else
      {
        v54 = v9;
        v15 = v58;
        v16 = 0;
      }

      v52 = v3;
      v58 = v15;
      v53 = [(SFPin *)self label];
      v17 = [(SFPin *)v7 label];
      v13 = v16;
      v9 = v54;
      if ((v53 != 0) != (v17 == 0))
      {
        v50 = v17;
        v49 = [(SFPin *)self label];
        if (v49)
        {
          v18 = [(SFPin *)self label];
          v46 = [(SFPin *)v7 label];
          v47 = v18;
          if (![v18 isEqual:?])
          {
            v12 = 0;
            v24 = v49;
            goto LABEL_57;
          }

          v48 = v16;
        }

        else
        {
          v48 = v16;
        }

        v19 = [(SFPin *)self resultID];
        v20 = [(SFPin *)v7 resultID];
        if ((v19 != 0) != (v20 == 0))
        {
          v45 = v20;
          [(SFPin *)self resultID];
          v13 = v48;
          v44 = v43 = v19;
          if (v44)
          {
            v21 = [(SFPin *)self resultID];
            [(SFPin *)v7 resultID];
            v4 = v42 = v21;
            if (![v21 isEqual:?])
            {
              v12 = 0;
              v22 = v44;
LABEL_55:

LABEL_56:
              v24 = v49;
              if (!v49)
              {
LABEL_58:

                if (v13)
                {
                }

LABEL_33:
                v11 = v55;
                if (!v10)
                {
LABEL_35:

                  goto LABEL_36;
                }

LABEL_34:

                goto LABEL_35;
              }

LABEL_57:

              goto LABEL_58;
            }
          }

          v25 = [(SFPin *)self mapsData];
          v26 = [(SFPin *)v7 mapsData];
          if ((v25 != 0) == (v26 == 0))
          {

            v12 = 0;
            v13 = v48;
            goto LABEL_54;
          }

          v40 = v25;
          v41 = v26;
          [(SFPin *)self mapsData];
          v39 = v13 = v48;
          if (!v39 || (-[SFPin mapsData](self, "mapsData"), v27 = objc_claimAutoreleasedReturnValue(), -[SFPin mapsData](v7, "mapsData"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v27, [v27 isEqual:?]))
          {
            v29 = [(SFPin *)self pinBehavior];
            if (v29 == [(SFPin *)v7 pinBehavior])
            {
              v30 = [(SFPin *)self pinText];
              v31 = [(SFPin *)v7 pinText];
              if ((v30 != 0) == (v31 == 0))
              {

                v12 = 0;
              }

              else
              {
                v36 = v31;
                v32 = [(SFPin *)self pinText];
                if (v32)
                {
                  v35 = v32;
                  v34 = [(SFPin *)self pinText];
                  v33 = [(SFPin *)v7 pinText];
                  v12 = [v34 isEqual:?];
                }

                else
                {

                  v12 = 1;
                }
              }
            }

            else
            {
              v12 = 0;
            }

            v28 = v39;
            if (!v39)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v12 = 0;
            v28 = v39;
          }

LABEL_53:
LABEL_54:
          v22 = v44;
          if (!v44)
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        v13 = v48;
        if (v49)
        {
        }

        v17 = v50;
      }

      if (v13)
      {
      }

      goto LABEL_31;
    }

    v12 = 0;
  }

LABEL_37:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFPin *)self location];
  v6 = [v5 copy];
  [v4 setLocation:v6];

  v7 = [(SFPin *)self pinColor];
  v8 = [v7 copy];
  [v4 setPinColor:v8];

  v9 = [(SFPin *)self label];
  v10 = [v9 copy];
  [v4 setLabel:v10];

  v11 = [(SFPin *)self resultID];
  v12 = [v11 copy];
  [v4 setResultID:v12];

  v13 = [(SFPin *)self mapsData];
  v14 = [v13 copy];
  [v4 setMapsData:v14];

  [v4 setPinBehavior:{-[SFPin pinBehavior](self, "pinBehavior")}];
  v15 = [(SFPin *)self pinText];
  v16 = [v15 copy];
  [v4 setPinText:v16];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPin alloc] initWithFacade:self];
  v3 = [(_SFPBPin *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPin alloc] initWithFacade:self];
  v3 = [(_SFPBPin *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPin alloc] initWithFacade:self];
  v5 = [(_SFPBPin *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPin)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPin alloc] initWithData:v5];
  v7 = [(SFPin *)self initWithProtobuf:v6];

  return v7;
}

- (SFPin)initWithProtobuf:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = SFPin;
  v5 = [(SFPin *)&v24 init];
  if (v5)
  {
    v6 = [v4 location];

    if (v6)
    {
      v7 = [SFLatLng alloc];
      v8 = [v4 location];
      v9 = [(SFLatLng *)v7 initWithProtobuf:v8];
      [(SFPin *)v5 setLocation:v9];
    }

    v10 = [v4 pinColor];

    if (v10)
    {
      v11 = [SFColor alloc];
      v12 = [v4 pinColor];
      v13 = [(SFColor *)v11 initWithProtobuf:v12];
      [(SFPin *)v5 setPinColor:v13];
    }

    v14 = [v4 label];

    if (v14)
    {
      v15 = [v4 label];
      [(SFPin *)v5 setLabel:v15];
    }

    v16 = [v4 resultID];

    if (v16)
    {
      v17 = [v4 resultID];
      [(SFPin *)v5 setResultID:v17];
    }

    v18 = [v4 mapsData];

    if (v18)
    {
      v19 = [v4 mapsData];
      [(SFPin *)v5 setMapsData:v19];
    }

    if ([v4 pinBehavior])
    {
      -[SFPin setPinBehavior:](v5, "setPinBehavior:", [v4 pinBehavior]);
    }

    v20 = [v4 pinText];

    if (v20)
    {
      v21 = [v4 pinText];
      [(SFPin *)v5 setPinText:v21];
    }

    v22 = v5;
  }

  return v5;
}

@end