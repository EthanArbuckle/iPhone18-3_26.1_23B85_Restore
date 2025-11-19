@interface UserDefaultsBridge
+ (id)createWithSuiteName:(id)a3 container:(id)a4;
@end

@implementation UserDefaultsBridge

+ (id)createWithSuiteName:(id)a3 container:(id)a4
{
  v5 = MEMORY[0x277CBEBD0];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] _initWithSuiteName:v7 container:v6];

  return v8;
}

@end