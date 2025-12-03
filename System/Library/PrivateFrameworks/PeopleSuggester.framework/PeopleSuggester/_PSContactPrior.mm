@interface _PSContactPrior
- (BOOL)isEqual:(id)equal;
- (_PSContactPrior)initWithCoder:(id)coder;
- (_PSContactPrior)initWithContactIdentifier:(id)identifier priorScore:(float)score rank:(unsigned int)rank modelName:(id)name modelVersion:(id)version;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _PSContactPrior

- (_PSContactPrior)initWithContactIdentifier:(id)identifier priorScore:(float)score rank:(unsigned int)rank modelName:(id)name modelVersion:(id)version
{
  identifierCopy = identifier;
  nameCopy = name;
  versionCopy = version;
  v24.receiver = self;
  v24.super_class = _PSContactPrior;
  v15 = [(_PSContactPrior *)&v24 init];
  if (v15)
  {
    v16 = [identifierCopy copy];
    contactIdentifier = v15->_contactIdentifier;
    v15->_contactIdentifier = v16;

    contact = v15->_contact;
    v15->_contact = 0;

    v15->_priorScore = score;
    v15->_rank = rank;
    v19 = [nameCopy copy];
    modelName = v15->_modelName;
    v15->_modelName = v19;

    v21 = [versionCopy copy];
    modelVersion = v15->_modelVersion;
    v15->_modelVersion = v21;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactIdentifier = [(_PSContactPrior *)self contactIdentifier];
  v6 = NSStringFromSelector(sel_contactIdentifier);
  [coderCopy encodeObject:contactIdentifier forKey:v6];

  [(_PSContactPrior *)self priorScore];
  v8 = v7;
  v9 = NSStringFromSelector(sel_priorScore);
  LODWORD(v10) = v8;
  [coderCopy encodeFloat:v9 forKey:v10];

  rank = [(_PSContactPrior *)self rank];
  v12 = NSStringFromSelector(sel_rank);
  [coderCopy encodeInt32:rank forKey:v12];

  modelName = [(_PSContactPrior *)self modelName];
  v14 = NSStringFromSelector(sel_modelName);
  [coderCopy encodeObject:modelName forKey:v14];

  modelVersion = [(_PSContactPrior *)self modelVersion];
  v15 = NSStringFromSelector(sel_modelVersion);
  [coderCopy encodeObject:modelVersion forKey:v15];
}

- (_PSContactPrior)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_contactIdentifier);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_priorScore);
  [coderCopy decodeFloatForKey:v8];
  v10 = v9;

  v11 = NSStringFromSelector(sel_rank);
  v12 = [coderCopy decodeInt32ForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_modelName);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_modelVersion);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  LODWORD(v19) = v10;
  v20 = [(_PSContactPrior *)self initWithContactIdentifier:v7 priorScore:v12 rank:v15 modelName:v18 modelVersion:v19];

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v20 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        contactIdentifier = [(_PSContactPrior *)self contactIdentifier];
        if (contactIdentifier)
        {
          contactIdentifier3 = contactIdentifier;
          modelName = [(_PSContactPrior *)self modelName];
          if (!modelName)
          {
            v20 = 0;
LABEL_24:

            goto LABEL_25;
          }

          contactIdentifier4 = modelName;
          modelVersion = [(_PSContactPrior *)self modelVersion];
          if (!modelVersion)
          {
            goto LABEL_18;
          }

          modelName3 = modelVersion;
          contactIdentifier2 = [(_PSContactPrior *)v6 contactIdentifier];
          if (!contactIdentifier2)
          {
            v20 = 0;
LABEL_22:

            goto LABEL_23;
          }

          modelName4 = contactIdentifier2;
          modelName2 = [(_PSContactPrior *)v6 modelName];
          if (!modelName2)
          {
            goto LABEL_20;
          }

          v16 = modelName2;
          modelVersion2 = [(_PSContactPrior *)v6 modelVersion];

          if (modelVersion2)
          {
            contactIdentifier3 = [(_PSContactPrior *)self contactIdentifier];
            contactIdentifier4 = [(_PSContactPrior *)v6 contactIdentifier];
            if ([contactIdentifier3 isEqualToString:contactIdentifier4])
            {
              modelName3 = [(_PSContactPrior *)self modelName];
              modelName4 = [(_PSContactPrior *)v6 modelName];
              if ([modelName3 isEqualToString:modelName4])
              {
                modelVersion3 = [(_PSContactPrior *)self modelVersion];
                modelVersion4 = [(_PSContactPrior *)v6 modelVersion];
                if ([modelVersion3 isEqualToString:modelVersion4])
                {
                  v20 = self->_rank == v6->_rank;
                }

                else
                {
                  v20 = 0;
                }

                goto LABEL_21;
              }

LABEL_20:
              v20 = 0;
LABEL_21:

              goto LABEL_22;
            }

LABEL_18:
            v20 = 0;
LABEL_23:

            goto LABEL_24;
          }
        }

        v20 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v20 = 0;
  }

LABEL_26:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[_PSContactPrior allocWithZone:?]];
  contactIdentifier = [(_PSContactPrior *)self contactIdentifier];
  [(_PSContactPrior *)v4 setContactIdentifier:contactIdentifier];

  [(_PSContactPrior *)self priorScore];
  [(_PSContactPrior *)v4 setPriorScore:?];
  [(_PSContactPrior *)v4 setRank:[(_PSContactPrior *)self rank]];
  modelName = [(_PSContactPrior *)self modelName];
  [(_PSContactPrior *)v4 setModelName:modelName];

  modelVersion = [(_PSContactPrior *)self modelVersion];
  [(_PSContactPrior *)v4 setModelVersion:modelVersion];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  contactIdentifier = [(_PSContactPrior *)self contactIdentifier];
  contact = [(_PSContactPrior *)self contact];
  [(_PSContactPrior *)self priorScore];
  v8 = v7;
  rank = [(_PSContactPrior *)self rank];
  modelName = [(_PSContactPrior *)self modelName];
  modelVersion = [(_PSContactPrior *)self modelVersion];
  v12 = [v3 stringWithFormat:@"<%@ %p> contactIdentifier: %@, contact: %@, priorScore: %f, rank: %d, modelName: %@, modelVersion: %@", v4, self, contactIdentifier, contact, *&v8, rank, modelName, modelVersion];

  return v12;
}

@end