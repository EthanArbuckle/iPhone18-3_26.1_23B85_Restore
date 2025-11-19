@interface SCLRecurrenceSchedule
+ (void)performBlockWithSharedFormatter:(id)a3;
- (BOOL)isEqual:(id)a3;
- (SCLRecurrenceSchedule)initWithCoder:(id)a3;
- (SCLRecurrenceSchedule)initWithRecurrences:(id)a3;
- (SCLRecurrenceSchedule)initWithTimeIntervals:(id)a3 repeatSchedule:(int64_t)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation SCLRecurrenceSchedule

+ (void)performBlockWithSharedFormatter:(id)a3
{
  v3 = performBlockWithSharedFormatter__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    +[SCLRecurrenceSchedule performBlockWithSharedFormatter:];
  }

  os_unfair_lock_lock(&performBlockWithSharedFormatter____sharedFormatterLock);
  v4[2](v4, performBlockWithSharedFormatter____sharedFormatter);

  os_unfair_lock_unlock(&performBlockWithSharedFormatter____sharedFormatterLock);
}

void __57__SCLRecurrenceSchedule_performBlockWithSharedFormatter___block_invoke()
{
  v0 = objc_alloc_init(SCLScheduleFormatter);
  v1 = performBlockWithSharedFormatter____sharedFormatter;
  performBlockWithSharedFormatter____sharedFormatter = v0;

  performBlockWithSharedFormatter____sharedFormatterLock = 0;
}

- (SCLRecurrenceSchedule)initWithRecurrences:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SCLRecurrenceSchedule;
  v5 = [(SCLRecurrenceSchedule *)&v10 init];
  if (v5)
  {
    v6 = +[SCLScheduleRecurrence dayOfWeekAndStartTimeComparator];
    v7 = [v4 sortedArrayUsingComparator:v6];
    recurrences = v5->_recurrences;
    v5->_recurrences = v7;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(SCLRecurrenceSchedule *)self recurrences];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SCLRecurrenceSchedule *)self recurrences];
      v6 = [(SCLRecurrenceSchedule *)v4 recurrences];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__3;
  v14 = __Block_byref_object_dispose__3;
  v15 = 0;
  v3 = objc_opt_class();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__SCLRecurrenceSchedule_description__block_invoke;
  v9[3] = &unk_279B6C938;
  v9[4] = self;
  v9[5] = &v10;
  [v3 performBlockWithSharedFormatter:v9];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 stringWithFormat:@"<%@ %p %@>", v6, self, v11[5]];;

  _Block_object_dispose(&v10, 8);

  return v7;
}

uint64_t __36__SCLRecurrenceSchedule_description__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 stringFromSchedule:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (SCLRecurrenceSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SCLRecurrenceSchedule;
  v5 = [(SCLRecurrenceSchedule *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"recurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v9;
  }

  return v5;
}

- (SCLRecurrenceSchedule)initWithTimeIntervals:(id)a3 repeatSchedule:(int64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * v11);
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __93__SCLRecurrenceSchedule_SCLRecurrenceScheduleCreation__initWithTimeIntervals_repeatSchedule___block_invoke;
        v17[3] = &unk_279B6C200;
        v18 = v6;
        v19 = v12;
        SCLEnumerateDaysInRepeatSchedule(a4, v17);

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v13 = [(SCLRecurrenceSchedule *)self initWithRecurrences:v6];
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __93__SCLRecurrenceSchedule_SCLRecurrenceScheduleCreation__initWithTimeIntervals_repeatSchedule___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [[SCLScheduleRecurrence alloc] initWithTimeInterval:*(a1 + 40) day:a2];
  [v2 addObject:v3];
}

@end