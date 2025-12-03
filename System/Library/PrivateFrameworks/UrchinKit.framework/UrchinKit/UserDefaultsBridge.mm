@interface UserDefaultsBridge
+ (id)createWithSuiteName:(id)name container:(id)container;
@end

@implementation UserDefaultsBridge

+ (id)createWithSuiteName:(id)name container:(id)container
{
  v5 = MEMORY[0x277CBEBD0];
  containerCopy = container;
  nameCopy = name;
  v8 = [[v5 alloc] _initWithSuiteName:nameCopy container:containerCopy];

  return v8;
}

@end