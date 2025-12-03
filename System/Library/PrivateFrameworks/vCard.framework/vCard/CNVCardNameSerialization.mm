@interface CNVCardNameSerialization
+ (id)compositeNameForPersonWithComponents:(id)components;
+ (id)compositeNameWithComponents:(id)components;
@end

@implementation CNVCardNameSerialization

+ (id)compositeNameWithComponents:(id)components
{
  componentsCopy = components;
  if ([componentsCopy isCompany])
  {
    [self compositeNameForCompanyWithComponents:componentsCopy];
  }

  else
  {
    [self compositeNameForPersonWithComponents:componentsCopy];
  }
  v5 = ;

  return v5;
}

+ (id)compositeNameForPersonWithComponents:(id)components
{
  componentsCopy = components;
  array = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277CFBD30];
  title = [componentsCopy title];
  v7 = (*(v5 + 16))(v5, title);

  if ((v7 & 1) == 0)
  {
    title2 = [componentsCopy title];
    [array addObject:title2];
  }

  firstName = [componentsCopy firstName];
  v10 = (*(v5 + 16))(v5, firstName);

  if ((v10 & 1) == 0)
  {
    firstName2 = [componentsCopy firstName];
    [array addObject:firstName2];
  }

  middleName = [componentsCopy middleName];
  v13 = (*(v5 + 16))(v5, middleName);

  if ((v13 & 1) == 0)
  {
    middleName2 = [componentsCopy middleName];
    [array addObject:middleName2];
  }

  lastName = [componentsCopy lastName];
  v16 = (*(v5 + 16))(v5, lastName);

  if ((v16 & 1) == 0)
  {
    lastName2 = [componentsCopy lastName];
    [array addObject:lastName2];
  }

  suffix = [componentsCopy suffix];
  v19 = (*(v5 + 16))(v5, suffix);

  if ((v19 & 1) == 0)
  {
    suffix2 = [componentsCopy suffix];
    [array addObject:suffix2];
  }

  v21 = [array componentsJoinedByString:@" "];

  return v21;
}

@end