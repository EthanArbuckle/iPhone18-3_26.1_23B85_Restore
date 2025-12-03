@interface CNVCardNameComponents
+ (id)components;
+ (id)componentsWithFirstName:(id)name lastName:(id)lastName middleName:(id)middleName title:(id)title suffix:(id)suffix companyName:(id)companyName isCompany:(BOOL)company;
@end

@implementation CNVCardNameComponents

+ (id)components
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)componentsWithFirstName:(id)name lastName:(id)lastName middleName:(id)middleName title:(id)title suffix:(id)suffix companyName:(id)companyName isCompany:(BOOL)company
{
  companyNameCopy = companyName;
  suffixCopy = suffix;
  titleCopy = title;
  middleNameCopy = middleName;
  lastNameCopy = lastName;
  nameCopy = name;
  v20 = +[(CNVCardNameComponents *)CNVCardMutableNameComponents];
  [v20 setFirstName:nameCopy];

  [v20 setLastName:lastNameCopy];
  [v20 setMiddleName:middleNameCopy];

  [v20 setTitle:titleCopy];
  [v20 setSuffix:suffixCopy];

  [v20 setCompanyName:companyNameCopy];
  [v20 setIsCompany:company];

  return v20;
}

@end