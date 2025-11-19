@interface REMGrocerySuggestedSection
- (BOOL)isEqual:(id)a3;
- (REMGrocerySuggestedSection)initWithCoder:(id)a3;
- (REMGrocerySuggestedSection)initWithLabelIndex:(int64_t)a3 sectionCanonicalName:(id)a4 confidenceScore:(float)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMGrocerySuggestedSection

- (REMGrocerySuggestedSection)initWithLabelIndex:(int64_t)a3 sectionCanonicalName:(id)a4 confidenceScore:(float)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = REMGrocerySuggestedSection;
  v10 = [(REMGrocerySuggestedSection *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_labelIndex = a3;
    objc_storeStrong(&v10->_sectionCanonicalName, a4);
    v11->_confidenceScore = a5;
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 != self)
  {
    v4 = a3;
    v5 = objc_opt_class();
    v6 = REMDynamicCast(v5, v4);

    v7 = [(REMGrocerySuggestedSection *)self labelIndex];
    if (v7 == [v6 labelIndex])
    {
      v8 = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
      v9 = [v6 sectionCanonicalName];
      v10 = v9;
      if (v8 == v9)
      {
      }

      else
      {
        v11 = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
        v12 = [v6 sectionCanonicalName];
        v13 = [v11 isEqual:v12];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMGrocerySuggestedSection *)self labelIndex];
  v6 = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
  [(REMGrocerySuggestedSection *)self confidenceScore];
  v7 = [v4 initWithLabelIndex:v5 sectionCanonicalName:v6 confidenceScore:?];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:-[REMGrocerySuggestedSection labelIndex](self forKey:{"labelIndex"), @"labelIndex"}];
  v4 = [(REMGrocerySuggestedSection *)self sectionCanonicalName];
  [v5 encodeObject:v4 forKey:@"sectionCanonicalName"];

  [(REMGrocerySuggestedSection *)self confidenceScore];
  [v5 encodeFloat:@"confidenceScore" forKey:?];
}

- (REMGrocerySuggestedSection)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = REMGrocerySuggestedSection;
  v5 = [(REMGrocerySuggestedSection *)&v10 init];
  if (v5)
  {
    v5->_labelIndex = [v4 decodeIntForKey:@"labelIndex"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sectionCanonicalName"];
    sectionCanonicalName = v5->_sectionCanonicalName;
    v5->_sectionCanonicalName = v6;

    [v4 decodeFloatForKey:@"confidenceScore"];
    v5->_confidenceScore = v8;
  }

  return v5;
}

@end