@interface PGMemoryOptions
+ (id)stringForReason:(unint64_t)reason;
- (PGMemoryOptions)initWithReason:(unint64_t)reason universalDate:(id)date location:(id)location peopleNames:(id)names;
- (id)description;
- (void)setUniversalDate:(id)date;
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

- (void)setUniversalDate:(id)date
{
  dateCopy = date;
  v7 = dateCopy;
  if (dateCopy)
  {
    date = dateCopy;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  universalDate = self->_universalDate;
  self->_universalDate = date;
}

- (PGMemoryOptions)initWithReason:(unint64_t)reason universalDate:(id)date location:(id)location peopleNames:(id)names
{
  dateCopy = date;
  locationCopy = location;
  namesCopy = names;
  v18.receiver = self;
  v18.super_class = PGMemoryOptions;
  v13 = [(PGMemoryOptions *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_reason = reason;
    if (dateCopy)
    {
      date = dateCopy;
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
    }

    universalDate = v14->_universalDate;
    v14->_universalDate = date;

    objc_storeStrong(&v14->_location, location);
    objc_storeStrong(&v14->_peopleNames, names);
  }

  return v14;
}

+ (id)stringForReason:(unint64_t)reason
{
  if (reason > 7)
  {
    return @"Illegal";
  }

  else
  {
    return off_27887F1A8[reason];
  }
}

@end