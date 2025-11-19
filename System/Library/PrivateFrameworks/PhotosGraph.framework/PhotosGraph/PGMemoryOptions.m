@interface PGMemoryOptions
+ (id)stringForReason:(unint64_t)a3;
- (PGMemoryOptions)initWithReason:(unint64_t)a3 universalDate:(id)a4 location:(id)a5 peopleNames:(id)a6;
- (id)description;
- (void)setUniversalDate:(id)a3;
@end

@implementation PGMemoryOptions

- (id)description
{
  v3 = [PGMemoryOptions stringForReason:self->_reason];
  v4 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_universalDate dateStyle:2 timeStyle:0];
  [(CLLocation *)self->_location coordinate];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%.5f, %.5f)", v5, v6];
  v8 = [(NSArray *)self->_peopleNames componentsJoinedByString:@", "];
  v9 = [MEMORY[0x277CCA968] localizedStringFromDate:self->_lastMemoryCreationUniversalDate dateStyle:2 timeStyle:0];
  v10 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = PGMemoryOptions;
  v11 = [(PGMemoryOptions *)&v14 description];
  v12 = [v10 stringWithFormat:@"%@\n\treason: %@\n\tdate: %@\n\tlocation %@\n\tpeopleNames: %@\n\texistingMemories: %d\n\tblockedMemories: %d\n\tlastMemoryCreationUniversalDate: %@", v11, v3, v4, v7, v8, -[NSArray count](self->_existingMemories, "count"), -[NSArray count](self->_blockedMemories, "count"), v9];;

  return v12;
}

- (void)setUniversalDate:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] date];
  }

  universalDate = self->_universalDate;
  self->_universalDate = v5;
}

- (PGMemoryOptions)initWithReason:(unint64_t)a3 universalDate:(id)a4 location:(id)a5 peopleNames:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = PGMemoryOptions;
  v13 = [(PGMemoryOptions *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_reason = a3;
    if (v10)
    {
      v15 = v10;
    }

    else
    {
      v15 = [MEMORY[0x277CBEAA8] date];
    }

    universalDate = v14->_universalDate;
    v14->_universalDate = v15;

    objc_storeStrong(&v14->_location, a5);
    objc_storeStrong(&v14->_peopleNames, a6);
  }

  return v14;
}

+ (id)stringForReason:(unint64_t)a3
{
  if (a3 > 7)
  {
    return @"Illegal";
  }

  else
  {
    return off_27887F1A8[a3];
  }
}

@end