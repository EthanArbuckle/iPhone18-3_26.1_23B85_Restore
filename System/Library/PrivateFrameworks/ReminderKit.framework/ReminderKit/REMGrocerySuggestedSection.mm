@interface REMGrocerySuggestedSection
- (BOOL)isEqual:(id)equal;
- (REMGrocerySuggestedSection)initWithCoder:(id)coder;
- (REMGrocerySuggestedSection)initWithLabelIndex:(int64_t)index sectionCanonicalName:(id)name confidenceScore:(float)score;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMGrocerySuggestedSection

- (REMGrocerySuggestedSection)initWithLabelIndex:(int64_t)index sectionCanonicalName:(id)name confidenceScore:(float)score
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = REMGrocerySuggestedSection;
  v10 = [(REMGrocerySuggestedSection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_labelIndex = index;
    objc_storeStrong(&v10->_sectionCanonicalName, name);
    v11->_confidenceScore = score;
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  if (equal != self)
  {
    equalCopy = equal;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, equalCopy);

    labelIndex = [(REMGrocerySuggestedSection *)self labelIndex];
    if (labelIndex == [v6 labelIndex])
    {
      sectionCanonicalName = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
      sectionCanonicalName2 = [v6 sectionCanonicalName];
      v10 = sectionCanonicalName2;
      if (sectionCanonicalName == sectionCanonicalName2)
      {
      }

      else
      {
        sectionCanonicalName3 = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
        sectionCanonicalName4 = [v6 sectionCanonicalName];
        v13 = [sectionCanonicalName3 isEqual:sectionCanonicalName4];

        if (!v13)
        {
          goto LABEL_5;
        }
      }

      [(REMGrocerySuggestedSection *)self confidenceScore];
      v16 = v15;
      [v6 confidenceScore];
      v14 = vabds_f32(v16, v17) <= 0.00000011921;
      goto LABEL_9;
    }

LABEL_5:
    v14 = 0;
LABEL_9:

    return v14;
  }

  return 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  labelIndex = [(REMGrocerySuggestedSection *)self labelIndex];
  sectionCanonicalName = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
  [(REMGrocerySuggestedSection *)self confidenceScore];
  v7 = [v4 initWithLabelIndex:labelIndex sectionCanonicalName:sectionCanonicalName confidenceScore:?];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[REMGrocerySuggestedSection labelIndex](self forKey:{"labelIndex"), @"labelIndex"}];
  sectionCanonicalName = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
  [coderCopy encodeObject:sectionCanonicalName forKey:@"sectionCanonicalName"];

  [(REMGrocerySuggestedSection *)self confidenceScore];
  [coderCopy encodeFloat:@"confidenceScore" forKey:?];
}

- (REMGrocerySuggestedSection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = REMGrocerySuggestedSection;
  v5 = [(REMGrocerySuggestedSection *)&v10 init];
  if (v5)
  {
    v5->_labelIndex = [coderCopy decodeIntForKey:@"labelIndex"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionCanonicalName"];
    sectionCanonicalName = v5->_sectionCanonicalName;
    v5->_sectionCanonicalName = v6;

    [coderCopy decodeFloatForKey:@"confidenceScore"];
    v5->_confidenceScore = v8;
  }

  return v5;
}

@end