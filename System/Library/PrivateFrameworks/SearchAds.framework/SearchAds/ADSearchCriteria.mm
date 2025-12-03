@interface ADSearchCriteria
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ADSearchCriteria

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ADSearchCriteria);
  v9 = objc_msgSend_languageLocale(self, v5, v6, v7, v8);
  objc_msgSend_setLanguageLocale_(v4, v10, v9, v11, v12);

  v17 = objc_msgSend_searchTerm(self, v13, v14, v15, v16);
  objc_msgSend_setSearchTerm_(v4, v18, v17, v19, v20);

  return v4;
}

@end