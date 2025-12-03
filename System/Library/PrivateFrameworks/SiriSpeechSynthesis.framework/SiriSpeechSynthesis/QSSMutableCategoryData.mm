@interface QSSMutableCategoryData
- (QSSMutableCategoryData)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCategory_data:(id)category_data;
- (void)setCategory_name:(id)category_name;
@end

@implementation QSSMutableCategoryData

- (void)setCategory_data:(id)category_data
{
  v4 = [category_data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCategory_name:(id)category_name
{
  v4 = [category_name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableCategoryData)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableCategoryData;
  v2 = [(QSSMutableCategoryData *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end