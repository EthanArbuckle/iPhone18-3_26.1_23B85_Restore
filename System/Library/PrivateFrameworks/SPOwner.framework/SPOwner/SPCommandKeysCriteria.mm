@interface SPCommandKeysCriteria
+ (id)driftModeledCriteria;
+ (id)matchDateInterval:(id)a3;
+ (id)matchPrimaryIndices:(id)a3;
- (SPCommandKeysCriteria)initWithCoder:(id)a3;
- (SPCommandKeysCriteria)initWithDateInterval:(id)a3 sequence:(id)a4 indices:(id)a5 index:(id)a6 hint:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPCommandKeysCriteria

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(SPCommandKeysCriteria *)self dateInterval];
  [v4 setDateInterval:v5];

  v6 = [(SPCommandKeysCriteria *)self sequence];
  [v4 setSequence:v6];

  v7 = [(SPCommandKeysCriteria *)self indices];
  v8 = [v7 copy];
  [v4 setIndices:v8];

  v9 = [(SPCommandKeysCriteria *)self index];
  [v4 setIndex:v9];

  v10 = [(SPCommandKeysCriteria *)self hint];
  [v4 setHint:v10];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  dateInterval = self->_dateInterval;
  v5 = a3;
  [v5 encodeObject:dateInterval forKey:@"dateInterval"];
  [v5 encodeObject:self->_sequence forKey:@"sequence"];
  [v5 encodeObject:self->_indices forKey:@"indices"];
  [v5 encodeObject:self->_index forKey:@"index"];
  [v5 encodeObject:self->_hint forKey:@"hint"];
}

- (SPCommandKeysCriteria)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateInterval"];
  dateInterval = self->_dateInterval;
  self->_dateInterval = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sequence"];
  sequence = self->_sequence;
  self->_sequence = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"index"];
  index = self->_index;
  self->_index = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hint"];
  hint = self->_hint;
  self->_hint = v11;

  v13 = MEMORY[0x277CBEB98];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v15 = [v13 setWithArray:v14];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"indices"];

  indices = self->_indices;
  self->_indices = v16;

  v18 = *MEMORY[0x277D85DE8];
  return self;
}

- (SPCommandKeysCriteria)initWithDateInterval:(id)a3 sequence:(id)a4 indices:(id)a5 index:(id)a6 hint:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = SPCommandKeysCriteria;
  v17 = [(SPCommandKeysCriteria *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(SPCommandKeysCriteria *)v17 setDateInterval:v12];
    [(SPCommandKeysCriteria *)v18 setSequence:v13];
    [(SPCommandKeysCriteria *)v18 setIndices:v14];
    [(SPCommandKeysCriteria *)v18 setIndex:v15];
    [(SPCommandKeysCriteria *)v18 setHint:v16];
  }

  return v18;
}

+ (id)matchDateInterval:(id)a3
{
  v3 = a3;
  v4 = [[SPCommandKeysCriteria alloc] initWithDateInterval:v3 sequence:0 indices:0 index:0 hint:0];

  return v4;
}

+ (id)matchPrimaryIndices:(id)a3
{
  v3 = a3;
  v4 = [[SPCommandKeysCriteria alloc] initWithDateInterval:0 sequence:&unk_2875F2BB0 indices:v3 index:0 hint:0];

  return v4;
}

+ (id)driftModeledCriteria
{
  v2 = [[SPCommandKeysCriteria alloc] initWithDateInterval:0 sequence:0 indices:0 index:0 hint:0];

  return v2;
}

@end