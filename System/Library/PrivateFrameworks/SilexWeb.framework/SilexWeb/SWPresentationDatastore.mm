@interface SWPresentationDatastore
- (BOOL)isEqual:(id)equal;
- (SWPresentationDatastore)initWithType:(id)type identifier:(id)identifier;
- (id)description;
@end

@implementation SWPresentationDatastore

- (SWPresentationDatastore)initWithType:(id)type identifier:(id)identifier
{
  typeCopy = type;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = SWPresentationDatastore;
  v9 = [(SWPresentationDatastore *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, type);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      type = [(SWPresentationDatastore *)self type];
      type2 = [(SWPresentationDatastore *)equalCopy type];
      if ([type isEqualToString:type2])
      {
        identifier = [(SWPresentationDatastore *)self identifier];
        identifier2 = [(SWPresentationDatastore *)equalCopy identifier];
        v9 = [identifier isEqualToString:identifier2];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  type = [(SWPresentationDatastore *)self type];
  identifier = [(SWPresentationDatastore *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p type: %@; identifier: %@>", v4, self, type, identifier];;

  return v7;
}

@end