@interface SFPatternModel
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPatternModel)initWithCoder:(id)a3;
- (SFPatternModel)initWithProtobuf:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFPatternModel

- (SFPatternModel)initWithProtobuf:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = SFPatternModel;
  v5 = [(SFPatternModel *)&v16 init];
  if (v5)
  {
    v6 = [v4 pattern_id];

    if (v6)
    {
      v7 = [v4 pattern_id];
      [(SFPatternModel *)v5 setPattern_id:v7];
    }

    v8 = [v4 pattern_parameters];

    if (v8)
    {
      v9 = [v4 pattern_parameters];
      [(SFPatternModel *)v5 setPattern_parameters:v9];
    }

    v10 = [v4 pattern_bundle_id];

    if (v10)
    {
      v11 = [v4 pattern_bundle_id];
      [(SFPatternModel *)v5 setPattern_bundle_id:v11];
    }

    v12 = [v4 pattern_template_directory];

    if (v12)
    {
      v13 = [v4 pattern_template_directory];
      [(SFPatternModel *)v5 setPattern_template_directory:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(SFPatternModel *)self pattern_id];
  v4 = [v3 hash];
  v5 = [(SFPatternModel *)self pattern_parameters];
  v6 = [v5 hash] ^ v4;
  v7 = [(SFPatternModel *)self pattern_bundle_id];
  v8 = [v7 hash];
  v9 = [(SFPatternModel *)self pattern_template_directory];
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
    if ([(SFPatternModel *)v5 isMemberOfClass:objc_opt_class()])
    {
      v6 = v5;
      v7 = [(SFPatternModel *)self pattern_id];
      v8 = [(SFPatternModel *)v6 pattern_id];
      if ((v7 != 0) == (v8 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v9 = [(SFPatternModel *)self pattern_id];
      if (v9)
      {
        v10 = [(SFPatternModel *)self pattern_id];
        v3 = [(SFPatternModel *)v6 pattern_id];
        if (![v10 isEqual:v3])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = v10;
      }

      v12 = [(SFPatternModel *)self pattern_parameters];
      v13 = [(SFPatternModel *)v6 pattern_parameters];
      v14 = v13;
      if ((v12 != 0) == (v13 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      v15 = [(SFPatternModel *)self pattern_parameters];
      v40 = v15;
      if (v15)
      {
        v16 = v15;
        v35 = v14;
        v17 = v12;
        v18 = [(SFPatternModel *)self pattern_parameters];
        v37 = [(SFPatternModel *)v6 pattern_parameters];
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

      v19 = [(SFPatternModel *)self pattern_bundle_id];
      v20 = [(SFPatternModel *)v6 pattern_bundle_id];
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
      [(SFPatternModel *)self pattern_bundle_id];
      v36 = v16 = v40;
      if (!v36 || (-[SFPatternModel pattern_bundle_id](self, "pattern_bundle_id"), v21 = objc_claimAutoreleasedReturnValue(), -[SFPatternModel pattern_bundle_id](v6, "pattern_bundle_id"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        v22 = [(SFPatternModel *)self pattern_template_directory];
        v23 = [(SFPatternModel *)v6 pattern_template_directory];
        if ((v22 != 0) == (v23 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = v22;
          v30 = v23;
          v24 = [(SFPatternModel *)self pattern_template_directory];
          v16 = v40;
          if (v24)
          {
            v28 = v24;
            v27 = [(SFPatternModel *)self pattern_template_directory];
            v25 = [(SFPatternModel *)v6 pattern_template_directory];
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
  v5 = [(SFPatternModel *)self pattern_id];
  v6 = [v5 copy];
  [v4 setPattern_id:v6];

  v7 = [(SFPatternModel *)self pattern_parameters];
  v8 = [v7 copy];
  [v4 setPattern_parameters:v8];

  v9 = [(SFPatternModel *)self pattern_bundle_id];
  v10 = [v9 copy];
  [v4 setPattern_bundle_id:v10];

  v11 = [(SFPatternModel *)self pattern_template_directory];
  v12 = [v11 copy];
  [v4 setPattern_template_directory:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPatternModel alloc] initWithFacade:self];
  v3 = [(_SFPBPatternModel *)v2 jsonData];

  return v3;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPatternModel alloc] initWithFacade:self];
  v3 = [(_SFPBPatternModel *)v2 dictionaryRepresentation];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [[_SFPBPatternModel alloc] initWithFacade:self];
  v5 = [(_SFPBPatternModel *)v6 data];
  [v4 encodeObject:v5 forKey:@"_backingStore"];
}

- (SFPatternModel)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPatternModel alloc] initWithData:v5];
  v7 = [(SFPatternModel *)self initWithProtobuf:v6];

  return v7;
}

@end