@interface ProcessAnalytics
- (ProcessAnalytics)init;
- (id)processesFromDate:(id)a3 untilDate:(id)a4;
- (id)processesWithName:(id)a3 nameKind:(id)a4;
- (id)processesWithNameInSet:(id)a3 nameKind:(id)a4;
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

- (id)processesWithName:(id)a3 nameKind:(id)a4
{
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", a4, a3];
  v6 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v5 sortDesc:0];

  return v6;
}

- (id)processesWithNameInSet:(id)a3 nameKind:(id)a4
{
  if (a3)
  {
    v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K IN %@", a4, a3];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v5 sortDesc:0];

  return v6;
}

- (id)processesFromDate:(id)a3 untilDate:(id)a4
{
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@ AND %K < %@", @"firstTimeStamp", a3, @"timeStamp", a4];
  v6 = [(ObjectAnalytics *)self fetchEntitiesFreeForm:v5 sortDesc:0];

  return v6;
}

@end