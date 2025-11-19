@interface NSError(UsefulConstructors)
+ (id)errorWithDomain:()UsefulConstructors code:description:underlying:;
@end

@implementation NSError(UsefulConstructors)

+ (id)errorWithDomain:()UsefulConstructors code:description:underlying:
{
  v9 = MEMORY[0x277CBEB38];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(v9);
  [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCA450]];

  [v13 setObject:v10 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:a4 userInfo:v13];

  return v14;
}

@end