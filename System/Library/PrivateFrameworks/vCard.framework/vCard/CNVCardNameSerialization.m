@interface CNVCardNameSerialization
+ (id)compositeNameForPersonWithComponents:(id)a3;
+ (id)compositeNameWithComponents:(id)a3;
@end

@implementation CNVCardNameSerialization

+ (id)compositeNameWithComponents:(id)a3
{
  v4 = a3;
  if ([v4 isCompany])
  {
    [a1 compositeNameForCompanyWithComponents:v4];
  }

  else
  {
    [a1 compositeNameForPersonWithComponents:v4];
  }
  v5 = ;

  return v5;
}

+ (id)compositeNameForPersonWithComponents:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *MEMORY[0x277CFBD30];
  v6 = [v3 title];
  v7 = (*(v5 + 16))(v5, v6);

  if ((v7 & 1) == 0)
  {
    v8 = [v3 title];
    [v4 addObject:v8];
  }

  v9 = [v3 firstName];
  v10 = (*(v5 + 16))(v5, v9);

  if ((v10 & 1) == 0)
  {
    v11 = [v3 firstName];
    [v4 addObject:v11];
  }

  v12 = [v3 middleName];
  v13 = (*(v5 + 16))(v5, v12);

  if ((v13 & 1) == 0)
  {
    v14 = [v3 middleName];
    [v4 addObject:v14];
  }

  v15 = [v3 lastName];
  v16 = (*(v5 + 16))(v5, v15);

  if ((v16 & 1) == 0)
  {
    v17 = [v3 lastName];
    [v4 addObject:v17];
  }

  v18 = [v3 suffix];
  v19 = (*(v5 + 16))(v5, v18);

  if ((v19 & 1) == 0)
  {
    v20 = [v3 suffix];
    [v4 addObject:v20];
  }

  v21 = [v4 componentsJoinedByString:@" "];

  return v21;
}

@end