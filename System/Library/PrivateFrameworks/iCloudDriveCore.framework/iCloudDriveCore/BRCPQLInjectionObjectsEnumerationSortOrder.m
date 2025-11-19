@interface BRCPQLInjectionObjectsEnumerationSortOrder
+ (id)_createInjectionSortOrder:(unint64_t)a3;
- (BRCPQLInjectionObjectsEnumerationSortOrder)initWithSortOrder:(unint64_t)a3;
@end

@implementation BRCPQLInjectionObjectsEnumerationSortOrder

- (BRCPQLInjectionObjectsEnumerationSortOrder)initWithSortOrder:(unint64_t)a3
{
  v4 = [objc_opt_class() _createInjectionSortOrder:a3];
  v7.receiver = self;
  v7.super_class = BRCPQLInjectionObjectsEnumerationSortOrder;
  v5 = [(BRCPQLInjectionBase *)&v7 initWithActualInjection:v4];

  return v5;
}

+ (id)_createInjectionSortOrder:(unint64_t)a3
{
  switch(a3)
  {
    case 3uLL:
      v3 = " ORDER BY item DESC";
      v4 = 19;
      break;
    case 2uLL:
      v3 = " ORDER BY item ASC";
      v4 = 18;
      break;
    case 1uLL:
      v3 = " ORDER BY rowid";
      v4 = 15;
      break;
    default:
      v3 = "";
      v4 = 0;
      break;
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:v3 length:v4];

  return v5;
}

@end