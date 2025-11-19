@interface REMHashtagLabel
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHashtagLabel:(id)a3;
- (REMHashtagLabel)initWithCoder:(id)a3;
- (REMHashtagLabel)initWithName:(id)a3;
- (REMHashtagLabel)initWithName:(id)a3 canonicalName:(id)a4 firstOccurrenceCreationDate:(id)a5 recencyDate:(id)a6 uuidForChangeTracking:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMHashtagLabel

- (REMHashtagLabel)initWithName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMHashtagLabel;
  v6 = [(REMHashtagLabel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
  }

  return v7;
}

- (REMHashtagLabel)initWithName:(id)a3 canonicalName:(id)a4 firstOccurrenceCreationDate:(id)a5 recencyDate:(id)a6 uuidForChangeTracking:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = REMHashtagLabel;
  v17 = [(REMHashtagLabel *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, a3);
    objc_storeStrong(&v18->_canonicalName, a4);
    objc_storeStrong(&v18->_firstOccurrenceCreationDate, a5);
    objc_storeStrong(&v18->_recencyDate, a6);
    objc_storeStrong(&v18->_uuidForChangeTracking, a7);
  }

  return v18;
}

- (REMHashtagLabel)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = REMHashtagLabel;
  v5 = [(REMHashtagLabel *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"canonicalName"];
    canonicalName = v5->_canonicalName;
    v5->_canonicalName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstOccurrenceCreationDate"];
    firstOccurrenceCreationDate = v5->_firstOccurrenceCreationDate;
    v5->_firstOccurrenceCreationDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recencyDate"];
    recencyDate = v5->_recencyDate;
    v5->_recencyDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuidForChangeTracking"];
    uuidForChangeTracking = v5->_uuidForChangeTracking;
    v5->_uuidForChangeTracking = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMHashtagLabel *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(REMHashtagLabel *)self canonicalName];
  [v4 encodeObject:v6 forKey:@"canonicalName"];

  v7 = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
  [v4 encodeObject:v7 forKey:@"firstOccurrenceCreationDate"];

  v8 = [(REMHashtagLabel *)self recencyDate];
  [v4 encodeObject:v8 forKey:@"recencyDate"];

  v9 = [(REMHashtagLabel *)self uuidForChangeTracking];
  [v4 encodeObject:v9 forKey:@"uuidForChangeTracking"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, v4);

  if (v6)
  {
    v7 = [(REMHashtagLabel *)self isEqualToHashtagLabel:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqualToHashtagLabel:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMHashtagLabel *)self name];
      v8 = [(REMHashtagLabel *)v6 name];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMHashtagLabel *)self name];
        v11 = [(REMHashtagLabel *)v6 name];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      v14 = [(REMHashtagLabel *)self canonicalName];
      v15 = [(REMHashtagLabel *)v6 canonicalName];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(REMHashtagLabel *)self canonicalName];
        v18 = [(REMHashtagLabel *)v6 canonicalName];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      v20 = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
      v21 = [(REMHashtagLabel *)v6 firstOccurrenceCreationDate];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
        v24 = [(REMHashtagLabel *)v6 firstOccurrenceCreationDate];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      v26 = [(REMHashtagLabel *)self recencyDate];
      v27 = [(REMHashtagLabel *)v6 recencyDate];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(REMHashtagLabel *)self recencyDate];
        v30 = [(REMHashtagLabel *)v6 recencyDate];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      v33 = [(REMHashtagLabel *)self uuidForChangeTracking];
      v34 = [(REMHashtagLabel *)v6 uuidForChangeTracking];
      if (v33 == v34)
      {
        v13 = 1;
      }

      else
      {
        v35 = [(REMHashtagLabel *)self uuidForChangeTracking];
        v36 = [(REMHashtagLabel *)v6 uuidForChangeTracking];
        v13 = [v35 isEqual:v36];
      }

      goto LABEL_19;
    }

LABEL_18:
    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v13 = 1;
LABEL_20:

  return v13 & 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMHashtagLabel *)self name];
  v6 = [(REMHashtagLabel *)self canonicalName];
  v7 = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
  v8 = [(REMHashtagLabel *)self recencyDate];
  v9 = [(REMHashtagLabel *)self uuidForChangeTracking];
  v10 = [v3 stringWithFormat:@"<%@: %p name: %@, canonicalName: %@, firstOccurrenceCreationDate: %@, recencyDate: %@, uuidForChangeTracking: %@>", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end