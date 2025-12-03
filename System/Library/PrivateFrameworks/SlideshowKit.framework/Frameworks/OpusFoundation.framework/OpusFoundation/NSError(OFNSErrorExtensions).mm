@interface NSError(OFNSErrorExtensions)
+ (uint64_t)errorWithDescription:()OFNSErrorExtensions;
+ (uint64_t)errorWithDomain:()OFNSErrorExtensions code:localizedDescription:;
+ (uint64_t)errorWithDomain:()OFNSErrorExtensions code:localizedDescription:userInfo:;
@end

@implementation NSError(OFNSErrorExtensions)

+ (uint64_t)errorWithDomain:()OFNSErrorExtensions code:localizedDescription:userInfo:
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary;
  if (a6)
  {
    [dictionary addEntriesFromDictionary:a6];
  }

  [v11 setObject:a5 forKey:*MEMORY[0x277CCA450]];
  v12 = MEMORY[0x277CCA9B8];

  return [v12 errorWithDomain:a3 code:a4 userInfo:a6];
}

+ (uint64_t)errorWithDomain:()OFNSErrorExtensions code:localizedDescription:
{
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:a5 forKey:*MEMORY[0x277CCA450]];
  v8 = MEMORY[0x277CCA9B8];

  return [v8 errorWithDomain:a3 code:a4 userInfo:v7];
}

+ (uint64_t)errorWithDescription:()OFNSErrorExtensions
{
  v4 = objc_opt_class();

  return [v4 errorWithDomain:@"OFErrorDomain" code:-1 localizedDescription:a3];
}

@end