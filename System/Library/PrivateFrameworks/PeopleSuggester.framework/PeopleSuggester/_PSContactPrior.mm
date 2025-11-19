@interface _PSContactPrior
- (BOOL)isEqual:(id)a3;
- (_PSContactPrior)initWithCoder:(id)a3;
- (_PSContactPrior)initWithContactIdentifier:(id)a3 priorScore:(float)a4 rank:(unsigned int)a5 modelName:(id)a6 modelVersion:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _PSContactPrior

- (_PSContactPrior)initWithContactIdentifier:(id)a3 priorScore:(float)a4 rank:(unsigned int)a5 modelName:(id)a6 modelVersion:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v24.receiver = self;
  v24.super_class = _PSContactPrior;
  v15 = [(_PSContactPrior *)&v24 init];
  if (v15)
  {
    v16 = [v12 copy];
    contactIdentifier = v15->_contactIdentifier;
    v15->_contactIdentifier = v16;

    contact = v15->_contact;
    v15->_contact = 0;

    v15->_priorScore = a4;
    v15->_rank = a5;
    v19 = [v13 copy];
    modelName = v15->_modelName;
    v15->_modelName = v19;

    v21 = [v14 copy];
    modelVersion = v15->_modelVersion;
    v15->_modelVersion = v21;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(_PSContactPrior *)self contactIdentifier];
  v6 = NSStringFromSelector(sel_contactIdentifier);
  [v4 encodeObject:v5 forKey:v6];

  [(_PSContactPrior *)self priorScore];
  v8 = v7;
  v9 = NSStringFromSelector(sel_priorScore);
  LODWORD(v10) = v8;
  [v4 encodeFloat:v9 forKey:v10];

  v11 = [(_PSContactPrior *)self rank];
  v12 = NSStringFromSelector(sel_rank);
  [v4 encodeInt32:v11 forKey:v12];

  v13 = [(_PSContactPrior *)self modelName];
  v14 = NSStringFromSelector(sel_modelName);
  [v4 encodeObject:v13 forKey:v14];

  v16 = [(_PSContactPrior *)self modelVersion];
  v15 = NSStringFromSelector(sel_modelVersion);
  [v4 encodeObject:v16 forKey:v15];
}

- (_PSContactPrior)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_contactIdentifier);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  v8 = NSStringFromSelector(sel_priorScore);
  [v4 decodeFloatForKey:v8];
  v10 = v9;

  v11 = NSStringFromSelector(sel_rank);
  v12 = [v4 decodeInt32ForKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_modelName);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_modelVersion);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  LODWORD(v19) = v10;
  v20 = [(_PSContactPrior *)self initWithContactIdentifier:v7 priorScore:v12 rank:v15 modelName:v18 modelVersion:v19];

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v20 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(_PSContactPrior *)self contactIdentifier];
        if (v7)
        {
          v8 = v7;
          v9 = [(_PSContactPrior *)self modelName];
          if (!v9)
          {
            v20 = 0;
LABEL_24:

            goto LABEL_25;
          }

          v10 = v9;
          v11 = [(_PSContactPrior *)self modelVersion];
          if (!v11)
          {
            goto LABEL_18;
          }

          v12 = v11;
          v13 = [(_PSContactPrior *)v6 contactIdentifier];
          if (!v13)
          {
            v20 = 0;
LABEL_22:

            goto LABEL_23;
          }

          v14 = v13;
          v15 = [(_PSContactPrior *)v6 modelName];
          if (!v15)
          {
            goto LABEL_20;
          }

          v16 = v15;
          v17 = [(_PSContactPrior *)v6 modelVersion];

          if (v17)
          {
            v8 = [(_PSContactPrior *)self contactIdentifier];
            v10 = [(_PSContactPrior *)v6 contactIdentifier];
            if ([v8 isEqualToString:v10])
            {
              v12 = [(_PSContactPrior *)self modelName];
              v14 = [(_PSContactPrior *)v6 modelName];
              if ([v12 isEqualToString:v14])
              {
                v18 = [(_PSContactPrior *)self modelVersion];
                v19 = [(_PSContactPrior *)v6 modelVersion];
                if ([v18 isEqualToString:v19])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[_PSContactPrior allocWithZone:?]];
  v5 = [(_PSContactPrior *)self contactIdentifier];
  [(_PSContactPrior *)v4 setContactIdentifier:v5];

  [(_PSContactPrior *)self priorScore];
  [(_PSContactPrior *)v4 setPriorScore:?];
  [(_PSContactPrior *)v4 setRank:[(_PSContactPrior *)self rank]];
  v6 = [(_PSContactPrior *)self modelName];
  [(_PSContactPrior *)v4 setModelName:v6];

  v7 = [(_PSContactPrior *)self modelVersion];
  [(_PSContactPrior *)v4 setModelVersion:v7];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(_PSContactPrior *)self contactIdentifier];
  v6 = [(_PSContactPrior *)self contact];
  [(_PSContactPrior *)self priorScore];
  v8 = v7;
  v9 = [(_PSContactPrior *)self rank];
  v10 = [(_PSContactPrior *)self modelName];
  v11 = [(_PSContactPrior *)self modelVersion];
  v12 = [v3 stringWithFormat:@"<%@ %p> contactIdentifier: %@, contact: %@, priorScore: %f, rank: %d, modelName: %@, modelVersion: %@", v4, self, v5, v6, *&v8, v9, v10, v11];

  return v12;
}

@end