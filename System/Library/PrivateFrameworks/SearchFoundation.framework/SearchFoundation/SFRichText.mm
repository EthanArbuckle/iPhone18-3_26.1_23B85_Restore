@interface SFRichText
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRichText)initWithCoder:(id)a3;
- (SFRichText)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRichText

- (unint64_t)hash
{
  v16.receiver = self;
  v16.super_class = SFRichText;
  v3 = [(SFText *)&v16 hash];
  [(SFRichText *)self starRating];
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  *v5.i64 = round(v4);
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = (*vbslq_s8(vnegq_f64(v7), v6, v5).i64 * 2654435760.0) + vcvtd_n_u64_f64(v4 - *v5.i64, 0x40uLL);
  v9 = [(SFRichText *)self contentAdvisory];
  v10 = [v9 hash];
  v11 = [(SFRichText *)self icons];
  v12 = [v11 hash];
  v13 = [(SFRichText *)self formattedTextPieces];
  v14 = v10 ^ v12 ^ v3 ^ [v13 hash];

  return v14 ^ v8;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v14 = 1;
  }

  else
  {
    if ([(SFRichText *)v5 isMemberOfClass:objc_opt_class()])
    {
      v35.receiver = self;
      v35.super_class = SFRichText;
      if ([(SFText *)&v35 isEqual:v5])
      {
        v6 = v5;
        [(SFRichText *)self starRating];
        v8 = v7;
        [(SFRichText *)v6 starRating];
        if (vabdd_f64(v8, v9) >= 2.22044605e-16)
        {
          v14 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v10 = [(SFRichText *)self contentAdvisory];
        v11 = [(SFRichText *)v6 contentAdvisory];
        if ((v10 != 0) == (v11 == 0))
        {
          v14 = 0;
LABEL_33:

          goto LABEL_34;
        }

        v12 = [(SFRichText *)self contentAdvisory];
        if (v12)
        {
          v3 = [(SFRichText *)self contentAdvisory];
          v13 = [(SFRichText *)v6 contentAdvisory];
          if (![v3 isEqual:v13])
          {
            v14 = 0;
            goto LABEL_31;
          }

          v34 = v13;
        }

        v15 = [(SFRichText *)self icons];
        v16 = [(SFRichText *)v6 icons];
        v17 = v16;
        if ((v15 != 0) == (v16 == 0))
        {

          v14 = 0;
          goto LABEL_30;
        }

        v18 = [(SFRichText *)self icons];
        if (v18)
        {
          v28 = v15;
          v19 = [(SFRichText *)self icons];
          v30 = [(SFRichText *)v6 icons];
          v31 = v19;
          if (![v19 isEqual:?])
          {
            v14 = 0;
            v15 = v28;
            goto LABEL_28;
          }

          v32 = v18;
          v33 = v3;
          v15 = v28;
        }

        else
        {
          v32 = 0;
          v33 = v3;
        }

        v20 = [(SFRichText *)self formattedTextPieces];
        v21 = [(SFRichText *)v6 formattedTextPieces];
        if ((v20 != 0) == (v21 == 0))
        {

          v14 = 0;
          v18 = v32;
          v3 = v33;
          if (!v32)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v27 = v20;
          v29 = v21;
          v22 = [(SFRichText *)self formattedTextPieces];
          v18 = v32;
          if (v22)
          {
            v26 = v22;
            v25 = [(SFRichText *)self formattedTextPieces];
            v23 = [(SFRichText *)v6 formattedTextPieces];
            v14 = [v25 isEqual:?];
          }

          else
          {

            v14 = 1;
          }

          v3 = v33;
          if (!v32)
          {
            goto LABEL_29;
          }
        }

LABEL_28:

LABEL_29:
LABEL_30:
        v13 = v34;
        if (!v12)
        {
LABEL_32:

          goto LABEL_33;
        }

LABEL_31:

        goto LABEL_32;
      }
    }

    v14 = 0;
  }

LABEL_35:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = SFRichText;
  v4 = [(SFText *)&v12 copyWithZone:a3];
  [(SFRichText *)self starRating];
  [v4 setStarRating:?];
  v5 = [(SFRichText *)self contentAdvisory];
  v6 = [v5 copy];
  [v4 setContentAdvisory:v6];

  v7 = [(SFRichText *)self icons];
  v8 = [v7 copy];
  [v4 setIcons:v8];

  v9 = [(SFRichText *)self formattedTextPieces];
  v10 = [v9 copy];
  [v4 setFormattedTextPieces:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRichText alloc] initWithFacade:self];
  v3 = [(_SFPBRichText *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRichText alloc] initWithFacade:self];
  v3 = [(_SFPBRichText *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBRichText alloc] initWithFacade:self];
  v5 = [(_SFPBRichText *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFRichText)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRichText alloc] initWithData:v5];
  v7 = [(SFRichText *)self initWithProtobuf:v6];

  return v7;
}

- (SFRichText)initWithProtobuf:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 text];
  v38.receiver = self;
  v38.super_class = SFRichText;
  v6 = [(SFText *)&v38 initWithProtobuf:v5];

  if (v6)
  {
    v7 = [v4 starRating];

    if (v7)
    {
      v8 = [v4 starRating];
      [v8 doubleValue];
      [(SFRichText *)v6 setStarRating:?];
    }

    v9 = [v4 contentAdvisory];

    if (v9)
    {
      v10 = [v4 contentAdvisory];
      [(SFRichText *)v6 setContentAdvisory:v10];
    }

    v11 = [v4 icons];
    if (v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v12 = 0;
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v4 icons];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[SFImage alloc] initWithProtobuf:*(*(&v34 + 1) + 8 * i)];
          if (v18)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v15);
    }

    [(SFRichText *)v6 setIcons:v12];
    v19 = [v4 formattedTextPieces];
    if (v19)
    {
      v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v20 = 0;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [v4 formattedTextPieces];
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = [[SFFormattedText alloc] initWithProtobuf:*(*(&v30 + 1) + 8 * j)];
          if (v26)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v23);
    }

    [(SFRichText *)v6 setFormattedTextPieces:v20];
    v27 = v6;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v6;
}

@end