@interface REMHashtagLabel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHashtagLabel:(id)label;
- (REMHashtagLabel)initWithCoder:(id)coder;
- (REMHashtagLabel)initWithName:(id)name;
- (REMHashtagLabel)initWithName:(id)name canonicalName:(id)canonicalName firstOccurrenceCreationDate:(id)date recencyDate:(id)recencyDate uuidForChangeTracking:(id)tracking;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMHashtagLabel

- (REMHashtagLabel)initWithName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = REMHashtagLabel;
  v6 = [(REMHashtagLabel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
  }

  return v7;
}

- (REMHashtagLabel)initWithName:(id)name canonicalName:(id)canonicalName firstOccurrenceCreationDate:(id)date recencyDate:(id)recencyDate uuidForChangeTracking:(id)tracking
{
  nameCopy = name;
  canonicalNameCopy = canonicalName;
  dateCopy = date;
  recencyDateCopy = recencyDate;
  trackingCopy = tracking;
  v21.receiver = self;
  v21.super_class = REMHashtagLabel;
  v17 = [(REMHashtagLabel *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, name);
    objc_storeStrong(&v18->_canonicalName, canonicalName);
    objc_storeStrong(&v18->_firstOccurrenceCreationDate, date);
    objc_storeStrong(&v18->_recencyDate, recencyDate);
    objc_storeStrong(&v18->_uuidForChangeTracking, tracking);
  }

  return v18;
}

- (REMHashtagLabel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = REMHashtagLabel;
  v5 = [(REMHashtagLabel *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"canonicalName"];
    canonicalName = v5->_canonicalName;
    v5->_canonicalName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstOccurrenceCreationDate"];
    firstOccurrenceCreationDate = v5->_firstOccurrenceCreationDate;
    v5->_firstOccurrenceCreationDate = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recencyDate"];
    recencyDate = v5->_recencyDate;
    v5->_recencyDate = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuidForChangeTracking"];
    uuidForChangeTracking = v5->_uuidForChangeTracking;
    v5->_uuidForChangeTracking = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(REMHashtagLabel *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  canonicalName = [(REMHashtagLabel *)self canonicalName];
  [coderCopy encodeObject:canonicalName forKey:@"canonicalName"];

  firstOccurrenceCreationDate = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
  [coderCopy encodeObject:firstOccurrenceCreationDate forKey:@"firstOccurrenceCreationDate"];

  recencyDate = [(REMHashtagLabel *)self recencyDate];
  [coderCopy encodeObject:recencyDate forKey:@"recencyDate"];

  uuidForChangeTracking = [(REMHashtagLabel *)self uuidForChangeTracking];
  [coderCopy encodeObject:uuidForChangeTracking forKey:@"uuidForChangeTracking"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = REMDynamicCast(v5, equalCopy);

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

- (BOOL)isEqualToHashtagLabel:(id)label
{
  labelCopy = label;
  v5 = labelCopy;
  if (labelCopy != self)
  {
    v6 = labelCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      name = [(REMHashtagLabel *)self name];
      name2 = [(REMHashtagLabel *)v6 name];
      v9 = name2;
      if (name == name2)
      {
      }

      else
      {
        name3 = [(REMHashtagLabel *)self name];
        name4 = [(REMHashtagLabel *)v6 name];
        v12 = [name3 isEqual:name4];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      canonicalName = [(REMHashtagLabel *)self canonicalName];
      canonicalName2 = [(REMHashtagLabel *)v6 canonicalName];
      v16 = canonicalName2;
      if (canonicalName == canonicalName2)
      {
      }

      else
      {
        canonicalName3 = [(REMHashtagLabel *)self canonicalName];
        canonicalName4 = [(REMHashtagLabel *)v6 canonicalName];
        v19 = [canonicalName3 isEqual:canonicalName4];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      firstOccurrenceCreationDate = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
      firstOccurrenceCreationDate2 = [(REMHashtagLabel *)v6 firstOccurrenceCreationDate];
      v22 = firstOccurrenceCreationDate2;
      if (firstOccurrenceCreationDate == firstOccurrenceCreationDate2)
      {
      }

      else
      {
        firstOccurrenceCreationDate3 = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
        firstOccurrenceCreationDate4 = [(REMHashtagLabel *)v6 firstOccurrenceCreationDate];
        v25 = [firstOccurrenceCreationDate3 isEqual:firstOccurrenceCreationDate4];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      recencyDate = [(REMHashtagLabel *)self recencyDate];
      recencyDate2 = [(REMHashtagLabel *)v6 recencyDate];
      v28 = recencyDate2;
      if (recencyDate == recencyDate2)
      {
      }

      else
      {
        recencyDate3 = [(REMHashtagLabel *)self recencyDate];
        recencyDate4 = [(REMHashtagLabel *)v6 recencyDate];
        v31 = [recencyDate3 isEqual:recencyDate4];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      uuidForChangeTracking = [(REMHashtagLabel *)self uuidForChangeTracking];
      uuidForChangeTracking2 = [(REMHashtagLabel *)v6 uuidForChangeTracking];
      if (uuidForChangeTracking == uuidForChangeTracking2)
      {
        v13 = 1;
      }

      else
      {
        uuidForChangeTracking3 = [(REMHashtagLabel *)self uuidForChangeTracking];
        uuidForChangeTracking4 = [(REMHashtagLabel *)v6 uuidForChangeTracking];
        v13 = [uuidForChangeTracking3 isEqual:uuidForChangeTracking4];
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
  name = [(REMHashtagLabel *)self name];
  canonicalName = [(REMHashtagLabel *)self canonicalName];
  firstOccurrenceCreationDate = [(REMHashtagLabel *)self firstOccurrenceCreationDate];
  recencyDate = [(REMHashtagLabel *)self recencyDate];
  uuidForChangeTracking = [(REMHashtagLabel *)self uuidForChangeTracking];
  v10 = [v3 stringWithFormat:@"<%@: %p name: %@, canonicalName: %@, firstOccurrenceCreationDate: %@, recencyDate: %@, uuidForChangeTracking: %@>", v4, self, name, canonicalName, firstOccurrenceCreationDate, recencyDate, uuidForChangeTracking];

  return v10;
}

@end