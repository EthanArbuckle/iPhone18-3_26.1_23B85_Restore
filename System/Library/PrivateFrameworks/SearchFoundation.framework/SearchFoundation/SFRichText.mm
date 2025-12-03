@interface SFRichText
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFRichText)initWithCoder:(id)coder;
- (SFRichText)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
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
  contentAdvisory = [(SFRichText *)self contentAdvisory];
  v10 = [contentAdvisory hash];
  icons = [(SFRichText *)self icons];
  v12 = [icons hash];
  formattedTextPieces = [(SFRichText *)self formattedTextPieces];
  v14 = v10 ^ v12 ^ v3 ^ [formattedTextPieces hash];

  return v14 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    if ([(SFRichText *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v35.receiver = self;
      v35.super_class = SFRichText;
      if ([(SFText *)&v35 isEqual:equalCopy])
      {
        v6 = equalCopy;
        [(SFRichText *)self starRating];
        v8 = v7;
        [(SFRichText *)v6 starRating];
        if (vabdd_f64(v8, v9) >= 2.22044605e-16)
        {
          v14 = 0;
LABEL_34:

          goto LABEL_35;
        }

        contentAdvisory = [(SFRichText *)self contentAdvisory];
        contentAdvisory2 = [(SFRichText *)v6 contentAdvisory];
        if ((contentAdvisory != 0) == (contentAdvisory2 == 0))
        {
          v14 = 0;
LABEL_33:

          goto LABEL_34;
        }

        contentAdvisory3 = [(SFRichText *)self contentAdvisory];
        if (contentAdvisory3)
        {
          contentAdvisory4 = [(SFRichText *)self contentAdvisory];
          contentAdvisory5 = [(SFRichText *)v6 contentAdvisory];
          if (![contentAdvisory4 isEqual:contentAdvisory5])
          {
            v14 = 0;
            goto LABEL_31;
          }

          v34 = contentAdvisory5;
        }

        icons = [(SFRichText *)self icons];
        icons2 = [(SFRichText *)v6 icons];
        v17 = icons2;
        if ((icons != 0) == (icons2 == 0))
        {

          v14 = 0;
          goto LABEL_30;
        }

        icons3 = [(SFRichText *)self icons];
        if (icons3)
        {
          v28 = icons;
          icons4 = [(SFRichText *)self icons];
          icons5 = [(SFRichText *)v6 icons];
          v31 = icons4;
          if (![icons4 isEqual:?])
          {
            v14 = 0;
            icons = v28;
            goto LABEL_28;
          }

          v32 = icons3;
          v33 = contentAdvisory4;
          icons = v28;
        }

        else
        {
          v32 = 0;
          v33 = contentAdvisory4;
        }

        formattedTextPieces = [(SFRichText *)self formattedTextPieces];
        formattedTextPieces2 = [(SFRichText *)v6 formattedTextPieces];
        if ((formattedTextPieces != 0) == (formattedTextPieces2 == 0))
        {

          v14 = 0;
          icons3 = v32;
          contentAdvisory4 = v33;
          if (!v32)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v27 = formattedTextPieces;
          v29 = formattedTextPieces2;
          formattedTextPieces3 = [(SFRichText *)self formattedTextPieces];
          icons3 = v32;
          if (formattedTextPieces3)
          {
            v26 = formattedTextPieces3;
            formattedTextPieces4 = [(SFRichText *)self formattedTextPieces];
            formattedTextPieces5 = [(SFRichText *)v6 formattedTextPieces];
            v14 = [formattedTextPieces4 isEqual:?];
          }

          else
          {

            v14 = 1;
          }

          contentAdvisory4 = v33;
          if (!v32)
          {
            goto LABEL_29;
          }
        }

LABEL_28:

LABEL_29:
LABEL_30:
        contentAdvisory5 = v34;
        if (!contentAdvisory3)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = SFRichText;
  v4 = [(SFText *)&v12 copyWithZone:zone];
  [(SFRichText *)self starRating];
  [v4 setStarRating:?];
  contentAdvisory = [(SFRichText *)self contentAdvisory];
  v6 = [contentAdvisory copy];
  [v4 setContentAdvisory:v6];

  icons = [(SFRichText *)self icons];
  v8 = [icons copy];
  [v4 setIcons:v8];

  formattedTextPieces = [(SFRichText *)self formattedTextPieces];
  v10 = [formattedTextPieces copy];
  [v4 setFormattedTextPieces:v10];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBRichText alloc] initWithFacade:self];
  jsonData = [(_SFPBRichText *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBRichText alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBRichText *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBRichText alloc] initWithFacade:self];
  data = [(_SFPBRichText *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFRichText)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBRichText alloc] initWithData:v5];
  v7 = [(SFRichText *)self initWithProtobuf:v6];

  return v7;
}

- (SFRichText)initWithProtobuf:(id)protobuf
{
  v41 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  text = [protobufCopy text];
  v38.receiver = self;
  v38.super_class = SFRichText;
  v6 = [(SFText *)&v38 initWithProtobuf:text];

  if (v6)
  {
    starRating = [protobufCopy starRating];

    if (starRating)
    {
      starRating2 = [protobufCopy starRating];
      [starRating2 doubleValue];
      [(SFRichText *)v6 setStarRating:?];
    }

    contentAdvisory = [protobufCopy contentAdvisory];

    if (contentAdvisory)
    {
      contentAdvisory2 = [protobufCopy contentAdvisory];
      [(SFRichText *)v6 setContentAdvisory:contentAdvisory2];
    }

    icons = [protobufCopy icons];
    if (icons)
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
    icons2 = [protobufCopy icons];
    v14 = [icons2 countByEnumeratingWithState:&v34 objects:v40 count:16];
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
            objc_enumerationMutation(icons2);
          }

          v18 = [[SFImage alloc] initWithProtobuf:*(*(&v34 + 1) + 8 * i)];
          if (v18)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [icons2 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v15);
    }

    [(SFRichText *)v6 setIcons:v12];
    formattedTextPieces = [protobufCopy formattedTextPieces];
    if (formattedTextPieces)
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
    formattedTextPieces2 = [protobufCopy formattedTextPieces];
    v22 = [formattedTextPieces2 countByEnumeratingWithState:&v30 objects:v39 count:16];
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
            objc_enumerationMutation(formattedTextPieces2);
          }

          v26 = [[SFFormattedText alloc] initWithProtobuf:*(*(&v30 + 1) + 8 * j)];
          if (v26)
          {
            [v20 addObject:v26];
          }
        }

        v23 = [formattedTextPieces2 countByEnumeratingWithState:&v30 objects:v39 count:16];
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