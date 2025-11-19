@interface BRCPQLInjectionChildrenEnumerationSortOrder
+ (id)_createInjectionSortOrder:(unsigned __int8)a3;
@end

@implementation BRCPQLInjectionChildrenEnumerationSortOrder

+ (id)_createInjectionSortOrder:(unsigned __int8)a3
{
  if (a3 == 1)
  {
    v3 = " ORDER BY version_mtime DESC";
    v4 = 28;
  }

  else if (a3)
  {
    v3 = "";
    v4 = 0;
  }

  else
  {
    v3 = " ORDER BY item_filename";
    v4 = 23;
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:v3 length:v4];

  return v5;
}

@end