@interface PREResponsesExperimentSuggestion
- (BOOL)isEqual:(id)a3;
- (PREResponsesExperimentSuggestion)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PREResponsesExperimentSuggestion

- (unint64_t)hash
{
  v2 = [(PREResponsesExperimentSuggestion *)self title];
  v3 = [v2 hash];

  return v3 + 31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(PREResponsesExperimentSuggestion *)self hash];
      if (v8 == [(PREResponsesExperimentSuggestion *)v7 hash])
      {
        title = self->_title;
        v10 = [(PREResponsesExperimentSuggestion *)v7 title];
        if ([(NSString *)title isEqualToString:v10])
        {
          dynamicReply = self->_dynamicReply;
          v6 = dynamicReply == [(PREResponsesExperimentSuggestion *)v7 isDynamicReply];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_title copy];
  [v4 setTitle:v5];

  [v4 setDynamicReply:self->_dynamicReply];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeBool:self->_dynamicReply forKey:@"dynamicReply"];
}

- (PREResponsesExperimentSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PREResponsesExperimentSuggestion;
  v5 = [(PREResponsesExperimentSuggestion *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v7 = [v6 copy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &stru_28733D8C0;
    }

    objc_storeStrong(&v5->_title, v9);

    v5->_dynamicReply = [v4 decodeBoolForKey:@"dynamicReply"];
    v10 = v5;
  }

  return v5;
}

@end