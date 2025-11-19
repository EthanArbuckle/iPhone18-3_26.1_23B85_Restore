@interface SFTrack
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFTrack)initWithCoder:(id)a3;
- (SFTrack)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFTrack

- (unint64_t)hash
{
  v3 = [(SFTrack *)self title];
  v4 = [v3 hash];
  v5 = [(SFTrack *)self number];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFTrack *)self duration];
  v8 = v6 ^ [v7 hash];
  v9 = [(SFTrack *)self highlighted];
  v10 = [(SFTrack *)self preview];
  v11 = v8 ^ v9 ^ [v10 hash];
  v12 = [(SFTrack *)self playAction];
  v13 = [v12 hash];

  return v11 ^ v13;
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
    if ([(SFTrack *)v4 isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      v6 = [(SFTrack *)self title];
      v7 = [(SFTrack *)v5 title];
      if ((v6 != 0) == (v7 == 0))
      {
        v10 = 0;
LABEL_41:

        goto LABEL_42;
      }

      v8 = [(SFTrack *)self title];
      if (v8)
      {
        v9 = [(SFTrack *)self title];
        v50 = [(SFTrack *)v5 title];
        if (![v9 isEqual:?])
        {
          v10 = 0;
          goto LABEL_39;
        }

        v49 = v9;
      }

      v51 = [(SFTrack *)self number];
      v11 = [(SFTrack *)v5 number];
      if ((v51 != 0) != (v11 == 0))
      {
        v12 = [(SFTrack *)self number];
        if (v12)
        {
          v13 = v12;
          v14 = [(SFTrack *)self number];
          [(SFTrack *)v5 number];
          v48 = v46 = v14;
          if (![v14 isEqual:?])
          {
            v10 = 0;
            v19 = v48;
            v20 = v13;
            goto LABEL_36;
          }

          v47 = v13;
        }

        else
        {
          v47 = 0;
        }

        v15 = [(SFTrack *)self duration];
        v16 = [(SFTrack *)v5 duration];
        if ((v15 != 0) != (v16 == 0))
        {
          v44 = v15;
          v45 = v16;
          v17 = [(SFTrack *)self duration];
          if (v17)
          {
            v18 = [(SFTrack *)self duration];
            v41 = [(SFTrack *)v5 duration];
            v42 = v18;
            if (![v18 isEqual:?])
            {
              v10 = 0;
              v20 = v47;
              v26 = v48;
              goto LABEL_34;
            }

            v43 = v17;
          }

          else
          {
            v43 = 0;
          }

          v21 = [(SFTrack *)self highlighted];
          if (v21 == [(SFTrack *)v5 highlighted])
          {
            v22 = [(SFTrack *)self preview];
            v23 = [(SFTrack *)v5 preview];
            if ((v22 != 0) != (v23 == 0))
            {
              v39 = v23;
              v40 = v22;
              v24 = [(SFTrack *)self preview];
              v25 = v24;
              v26 = v48;
              if (v24)
              {
                v35 = v24;
                v27 = [(SFTrack *)self preview];
                v37 = [(SFTrack *)v5 preview];
                v38 = v27;
                if (![v27 isEqual:?])
                {
                  v10 = 0;
                  v25 = v35;
                  goto LABEL_50;
                }

                v25 = v35;
              }

              v29 = [(SFTrack *)self playAction];
              v30 = [(SFTrack *)v5 playAction];
              if ((v29 != 0) == (v30 == 0))
              {

                v10 = 0;
              }

              else
              {
                v36 = v30;
                v31 = [(SFTrack *)self playAction];
                if (v31)
                {
                  v34 = v31;
                  v33 = [(SFTrack *)self playAction];
                  v32 = [(SFTrack *)v5 playAction];
                  v10 = [v33 isEqual:v32];
                }

                else
                {

                  v10 = 1;
                }
              }

              v26 = v48;
              if (!v25)
              {
LABEL_51:

                v17 = v43;
                v20 = v47;
                if (!v43)
                {
LABEL_35:

                  v19 = v26;
                  if (!v20)
                  {
LABEL_37:

LABEL_38:
                    v9 = v49;
                    if (!v8)
                    {
LABEL_40:

                      goto LABEL_41;
                    }

LABEL_39:

                    goto LABEL_40;
                  }

LABEL_36:

                  goto LABEL_37;
                }

LABEL_34:

                goto LABEL_35;
              }

LABEL_50:

              goto LABEL_51;
            }
          }

          v10 = 0;
          v20 = v47;
          v26 = v48;
          v17 = v43;
          if (!v43)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        if (v47)
        {
        }
      }

      v10 = 0;
      goto LABEL_38;
    }

    v10 = 0;
  }

LABEL_42:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(SFTrack *)self title];
  v6 = [v5 copy];
  [v4 setTitle:v6];

  v7 = [(SFTrack *)self number];
  v8 = [v7 copy];
  [v4 setNumber:v8];

  v9 = [(SFTrack *)self duration];
  v10 = [v9 copy];
  [v4 setDuration:v10];

  [v4 setHighlighted:{-[SFTrack highlighted](self, "highlighted")}];
  v11 = [(SFTrack *)self preview];
  v12 = [v11 copy];
  [v4 setPreview:v12];

  v13 = [(SFTrack *)self playAction];
  v14 = [v13 copy];
  [v4 setPlayAction:v14];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBTrack alloc] initWithFacade:self];
  v3 = [(_SFPBTrack *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBTrack alloc] initWithFacade:self];
  v3 = [(_SFPBTrack *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBTrack alloc] initWithFacade:self];
  v5 = [(_SFPBTrack *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFTrack)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBTrack alloc] initWithData:v5];
  v7 = [(SFTrack *)self initWithProtobuf:v6];

  return v7;
}

- (SFTrack)initWithProtobuf:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = SFTrack;
  v5 = [(SFTrack *)&v21 init];
  if (v5)
  {
    v6 = [v4 title];

    if (v6)
    {
      v7 = [v4 title];
      [(SFTrack *)v5 setTitle:v7];
    }

    v8 = [v4 number];

    if (v8)
    {
      v9 = [v4 number];
      [(SFTrack *)v5 setNumber:v9];
    }

    v10 = [v4 duration];

    if (v10)
    {
      v11 = [v4 duration];
      [(SFTrack *)v5 setDuration:v11];
    }

    if ([v4 highlighted])
    {
      -[SFTrack setHighlighted:](v5, "setHighlighted:", [v4 highlighted]);
    }

    v12 = [v4 preview];

    if (v12)
    {
      v13 = [v4 preview];
      v14 = _SFPBURLHandwrittenTranslator(v13);
      [(SFTrack *)v5 setPreview:v14];
    }

    v15 = [v4 playAction];

    if (v15)
    {
      v16 = [SFActionItem alloc];
      v17 = [v4 playAction];
      v18 = [(SFActionItem *)v16 initWithProtobuf:v17];
      [(SFTrack *)v5 setPlayAction:v18];
    }

    v19 = v5;
  }

  return v5;
}

@end