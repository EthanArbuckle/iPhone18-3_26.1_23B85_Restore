@interface SFPatternModel
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (NSDictionary)dictionaryRepresentation;
- (SFPatternModel)initWithCoder:(id)coder;
- (SFPatternModel)initWithProtobuf:(id)protobuf;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFPatternModel

- (SFPatternModel)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v16.receiver = self;
  v16.super_class = SFPatternModel;
  v5 = [(SFPatternModel *)&v16 init];
  if (v5)
  {
    pattern_id = [protobufCopy pattern_id];

    if (pattern_id)
    {
      pattern_id2 = [protobufCopy pattern_id];
      [(SFPatternModel *)v5 setPattern_id:pattern_id2];
    }

    pattern_parameters = [protobufCopy pattern_parameters];

    if (pattern_parameters)
    {
      pattern_parameters2 = [protobufCopy pattern_parameters];
      [(SFPatternModel *)v5 setPattern_parameters:pattern_parameters2];
    }

    pattern_bundle_id = [protobufCopy pattern_bundle_id];

    if (pattern_bundle_id)
    {
      pattern_bundle_id2 = [protobufCopy pattern_bundle_id];
      [(SFPatternModel *)v5 setPattern_bundle_id:pattern_bundle_id2];
    }

    pattern_template_directory = [protobufCopy pattern_template_directory];

    if (pattern_template_directory)
    {
      pattern_template_directory2 = [protobufCopy pattern_template_directory];
      [(SFPatternModel *)v5 setPattern_template_directory:pattern_template_directory2];
    }

    v14 = v5;
  }

  return v5;
}

- (unint64_t)hash
{
  pattern_id = [(SFPatternModel *)self pattern_id];
  v4 = [pattern_id hash];
  pattern_parameters = [(SFPatternModel *)self pattern_parameters];
  v6 = [pattern_parameters hash] ^ v4;
  pattern_bundle_id = [(SFPatternModel *)self pattern_bundle_id];
  v8 = [pattern_bundle_id hash];
  pattern_template_directory = [(SFPatternModel *)self pattern_template_directory];
  v10 = v8 ^ [pattern_template_directory hash];

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
    if ([(SFPatternModel *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = equalCopy;
      pattern_id = [(SFPatternModel *)self pattern_id];
      pattern_id2 = [(SFPatternModel *)v6 pattern_id];
      if ((pattern_id != 0) == (pattern_id2 == 0))
      {
        v11 = 0;
LABEL_37:

        goto LABEL_38;
      }

      pattern_id3 = [(SFPatternModel *)self pattern_id];
      if (pattern_id3)
      {
        pattern_id4 = [(SFPatternModel *)self pattern_id];
        pattern_id5 = [(SFPatternModel *)v6 pattern_id];
        if (![pattern_id4 isEqual:pattern_id5])
        {
          v11 = 0;
          goto LABEL_35;
        }

        v41 = pattern_id4;
      }

      pattern_parameters = [(SFPatternModel *)self pattern_parameters];
      pattern_parameters2 = [(SFPatternModel *)v6 pattern_parameters];
      v14 = pattern_parameters2;
      if ((pattern_parameters != 0) == (pattern_parameters2 == 0))
      {

        v11 = 0;
        goto LABEL_34;
      }

      pattern_parameters3 = [(SFPatternModel *)self pattern_parameters];
      v40 = pattern_parameters3;
      if (pattern_parameters3)
      {
        v16 = pattern_parameters3;
        v35 = v14;
        v17 = pattern_parameters;
        pattern_parameters4 = [(SFPatternModel *)self pattern_parameters];
        pattern_parameters5 = [(SFPatternModel *)v6 pattern_parameters];
        v38 = pattern_parameters4;
        if (![pattern_parameters4 isEqual:?])
        {
          v11 = 0;
          pattern_parameters = v17;
          v14 = v35;
          goto LABEL_32;
        }

        v39 = pattern_id5;
        pattern_parameters = v17;
        v14 = v35;
      }

      else
      {
        v39 = pattern_id5;
      }

      pattern_bundle_id = [(SFPatternModel *)self pattern_bundle_id];
      pattern_bundle_id2 = [(SFPatternModel *)v6 pattern_bundle_id];
      if ((pattern_bundle_id != 0) == (pattern_bundle_id2 == 0))
      {

        v11 = 0;
        pattern_id5 = v39;
        v16 = v40;
        if (!v40)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      v33 = pattern_bundle_id2;
      v34 = pattern_bundle_id;
      [(SFPatternModel *)self pattern_bundle_id];
      v36 = v16 = v40;
      if (!v36 || (-[SFPatternModel pattern_bundle_id](self, "pattern_bundle_id"), v21 = objc_claimAutoreleasedReturnValue(), -[SFPatternModel pattern_bundle_id](v6, "pattern_bundle_id"), v31 = objc_claimAutoreleasedReturnValue(), v32 = v21, [v21 isEqual:?]))
      {
        pattern_template_directory = [(SFPatternModel *)self pattern_template_directory];
        pattern_template_directory2 = [(SFPatternModel *)v6 pattern_template_directory];
        if ((pattern_template_directory != 0) == (pattern_template_directory2 == 0))
        {

          v11 = 0;
          v16 = v40;
        }

        else
        {
          v29 = pattern_template_directory;
          v30 = pattern_template_directory2;
          pattern_template_directory3 = [(SFPatternModel *)self pattern_template_directory];
          v16 = v40;
          if (pattern_template_directory3)
          {
            v28 = pattern_template_directory3;
            pattern_template_directory4 = [(SFPatternModel *)self pattern_template_directory];
            pattern_template_directory5 = [(SFPatternModel *)v6 pattern_template_directory];
            v11 = [pattern_template_directory4 isEqual:?];
          }

          else
          {

            v11 = 1;
          }
        }

        pattern_id5 = v39;
        if (!v36)
        {
LABEL_31:

          if (!v16)
          {
LABEL_33:

LABEL_34:
            pattern_id4 = v41;
            if (!pattern_id3)
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
        pattern_id5 = v39;
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
  pattern_id = [(SFPatternModel *)self pattern_id];
  v6 = [pattern_id copy];
  [v4 setPattern_id:v6];

  pattern_parameters = [(SFPatternModel *)self pattern_parameters];
  v8 = [pattern_parameters copy];
  [v4 setPattern_parameters:v8];

  pattern_bundle_id = [(SFPatternModel *)self pattern_bundle_id];
  v10 = [pattern_bundle_id copy];
  [v4 setPattern_bundle_id:v10];

  pattern_template_directory = [(SFPatternModel *)self pattern_template_directory];
  v12 = [pattern_template_directory copy];
  [v4 setPattern_template_directory:v12];

  return v4;
}

- (NSData)jsonData
{
  v2 = [[_SFPBPatternModel alloc] initWithFacade:self];
  jsonData = [(_SFPBPatternModel *)v2 jsonData];

  return jsonData;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [[_SFPBPatternModel alloc] initWithFacade:self];
  dictionaryRepresentation = [(_SFPBPatternModel *)v2 dictionaryRepresentation];

  return dictionaryRepresentation;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6 = [[_SFPBPatternModel alloc] initWithFacade:self];
  data = [(_SFPBPatternModel *)v6 data];
  [coderCopy encodeObject:data forKey:@"_backingStore"];
}

- (SFPatternModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_backingStore"];

  v6 = [[_SFPBPatternModel alloc] initWithData:v5];
  v7 = [(SFPatternModel *)self initWithProtobuf:v6];

  return v7;
}

@end