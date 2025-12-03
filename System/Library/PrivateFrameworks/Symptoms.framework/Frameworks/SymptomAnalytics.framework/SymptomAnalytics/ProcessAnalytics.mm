@interface ProcessAnalytics
- (ProcessAnalytics)init;
- (id)processesFromDate:(id)date untilDate:(id)untilDate;
- (id)processesWithName:(id)name nameKind:(id)kind;
- (id)processesWithNameInSet:(id)set nameKind:(id)kind;
@end

@implementation ProcessAnalytics

- (ProcessAnalytics)init
{
  v3 = +[AnalyticsWorkspace defaultWorkspace];
  v4 = +[Process entityName];
  v7.receiver = self;
  v7.super_class = ProcessAnalytics;
  v5 = [(ObjectAnalytics *)&v7 initWithWorkspace:v3 entityName:v4 withCache:1];

  return v5;
}

- (id)processesWithName:(id)name nameKind:(id)kind
{
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", kind, name];
  v6 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:name sortDesc:0];

  return v6;
}

- (id)processesWithNameInSet:(id)set nameKind:(id)kind
{
  if (set)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", kind, set];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v5 sortDesc:0];

  return v6;
}

- (id)processesFromDate:(id)date untilDate:(id)untilDate
{
  untilDate = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@ AND %K < %@", @"firstTimeStamp", date, @"timeStamp", untilDate];
  v6 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:untilDate sortDesc:0];

  return v6;
}

@end