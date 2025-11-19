@interface CNVCardNameComponents
+ (id)components;
+ (id)componentsWithFirstName:(id)a3 lastName:(id)a4 middleName:(id)a5 title:(id)a6 suffix:(id)a7 companyName:(id)a8 isCompany:(BOOL)a9;
@end

@implementation CNVCardNameComponents

+ (id)components
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)componentsWithFirstName:(id)a3 lastName:(id)a4 middleName:(id)a5 title:(id)a6 suffix:(id)a7 companyName:(id)a8 isCompany:(BOOL)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = +[(CNVCardNameComponents *)CNVCardMutableNameComponents];
  [v20 setFirstName:v19];

  [v20 setLastName:v18];
  [v20 setMiddleName:v17];

  [v20 setTitle:v16];
  [v20 setSuffix:v15];

  [v20 setCompanyName:v14];
  [v20 setIsCompany:a9];

  return v20;
}

@end