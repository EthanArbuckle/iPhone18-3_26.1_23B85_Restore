@interface SRResearchDaysViewController
- (SRResearchDaysViewController)init;
- (id)dateForRow:(int64_t)a3;
- (id)datesFrom:(double)a3 to:(double)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation SRResearchDaysViewController

- (SRResearchDaysViewController)init
{
  v3.receiver = self;
  v3.super_class = SRResearchDaysViewController;
  return [(SRResearchDaysViewController *)&v3 initWithStyle:2];
}

- (void)viewDidLoad
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = SRResearchDaysViewController;
  [(SRResearchDaysViewController *)&v18 viewDidLoad];
  -[SRResearchDaysViewController setDeletedDays:](self, "setDeletedDays:", [MEMORY[0x277CBEB58] set]);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(SRResearchDaysViewController *)self tombstones];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if (![v8 reason])
        {
          v9 = [(SRResearchDaysViewController *)self deletedDays];
          [v8 startTime];
          v11 = v10;
          [v8 endTime];
          [(NSMutableSet *)v9 addObjectsFromArray:[(SRResearchDaysViewController *)self datesFrom:v11 to:v12]];
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(SRResearchDaysViewController *)self setTombstones:0];
  [(SRResearchDaysViewController *)self setDeletedDays:0];
  v3.receiver = self;
  v3.super_class = SRResearchDaysViewController;
  [(SRResearchDaysViewController *)&v3 dealloc];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = [-[SRResearchDaysViewController tableView](self tableView];
  if (!v6)
  {
    v6 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:1 reuseIdentifier:@"SRDataDayRowReuseIdentifier"];
    [v6 setSelectionStyle:0];
  }

  v7 = -[SRResearchDaysViewController dateForRow:](self, "dateForRow:", [a4 row]);
  [objc_msgSend(v6 "textLabel")];
  if ([(NSMutableSet *)[(SRResearchDaysViewController *)self deletedDays] containsObject:v7])
  {
    v8 = 3;
  }

  else
  {
    v8 = 4;
  }

  [objc_msgSend(v6 "detailTextLabel")];
  return v6;
}

- (id)dateForRow:(int64_t)a3
{
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = MEMORY[0x277CBEAA8];
  [(SRResearchDaysViewController *)self end];
  v7 = [v5 startOfDayForDate:{objc_msgSend(v6, "dateWithSRAbsoluteTime:")}];
  v8 = objc_opt_new();
  [v8 setDay:-a3];

  return [v5 dateByAddingComponents:v8 toDate:v7 options:0];
}

- (id)datesFrom:(double)a3 to:(double)a4
{
  v6 = [MEMORY[0x277CBEB18] array];
  if (a3 <= a4)
  {
    v8 = [MEMORY[0x277CBEA80] currentCalendar];
    v9 = [v8 startOfDayForDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithSRAbsoluteTime:", a3)}];
    v10 = [v8 startOfDayForDate:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithSRAbsoluteTime:", a4)}];
    v11 = objc_opt_new();
    [v11 setDay:-1];
    for (i = v10; [i compare:v9] != -1; v10 = i)
    {
      [v6 addObject:v10];
      i = [v8 dateByAddingComponents:v11 toDate:v10 options:0];
    }
  }

  return v6;
}

@end