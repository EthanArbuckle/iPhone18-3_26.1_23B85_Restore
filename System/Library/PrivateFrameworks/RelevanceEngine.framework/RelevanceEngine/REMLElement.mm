@interface REMLElement
- (BOOL)isEqual:(id)equal;
- (REMLElement)initWithIdentifier:(id)identifier featureMap:(id)map;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation REMLElement

- (REMLElement)initWithIdentifier:(id)identifier featureMap:(id)map
{
  identifierCopy = identifier;
  mapCopy = map;
  v12.receiver = self;
  v12.super_class = REMLElement;
  v9 = [(REMLElement *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_featureMap, map);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = v5->_identifier;
      v7 = self->_identifier;
      v8 = v7;
      if (v7 == identifier)
      {
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:identifier];

        if (!v9)
        {
          v10 = 0;
LABEL_13:

          goto LABEL_14;
        }
      }

      featureMap = self->_featureMap;
      v12 = v5->_featureMap;
      v13 = featureMap;
      v14 = v13;
      if (v13 == v12)
      {
        v10 = 1;
      }

      else
      {
        v10 = [(REFeatureMap *)v13 isEqual:v12];
      }

      goto LABEL_13;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  identifier = self->_identifier;
  v6 = [(REFeatureMap *)self->_featureMap copy];
  v7 = [v4 initWithIdentifier:identifier featureMap:v6];

  return v7;
}

@end