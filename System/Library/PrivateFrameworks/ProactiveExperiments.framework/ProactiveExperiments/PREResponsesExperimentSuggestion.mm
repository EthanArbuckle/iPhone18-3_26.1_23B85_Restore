@interface PREResponsesExperimentSuggestion
- (BOOL)isEqual:(id)equal;
- (PREResponsesExperimentSuggestion)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PREResponsesExperimentSuggestion

- (unint64_t)hash
{
  title = [(PREResponsesExperimentSuggestion *)self title];
  v3 = [title hash];

  return v3 + 31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      v8 = [(PREResponsesExperimentSuggestion *)self hash];
      if (v8 == [(PREResponsesExperimentSuggestion *)v7 hash])
      {
        title = self->_title;
        title = [(PREResponsesExperimentSuggestion *)v7 title];
        if ([(NSString *)title isEqualToString:title])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_title copy];
  [v4 setTitle:v5];

  [v4 setDynamicReply:self->_dynamicReply];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeBool:self->_dynamicReply forKey:@"dynamicReply"];
}

- (PREResponsesExperimentSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PREResponsesExperimentSuggestion;
  v5 = [(PREResponsesExperimentSuggestion *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
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

    v5->_dynamicReply = [coderCopy decodeBoolForKey:@"dynamicReply"];
    v10 = v5;
  }

  return v5;
}

@end