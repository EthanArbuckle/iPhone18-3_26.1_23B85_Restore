@interface NSJSONSerialization(NSString)
+ (id)JSONStringFromNSDictionary:()NSString error:;
@end

@implementation NSJSONSerialization(NSString)

+ (id)JSONStringFromNSDictionary:()NSString error:
{
  v22[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v5])
  {
    v18 = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:0 error:&v18];
    v7 = v18;
    if (v7)
    {
      v19[0] = *MEMORY[0x277CCA450];
      v8 = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [v8 localizedStringForKey:@"NSJSONSerialization failed" value:&stru_287F632C0 table:0];
      v19[1] = *MEMORY[0x277CCA7E8];
      v20[0] = v9;
      v20[1] = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.tracking-avoidance.NSJSONSerializationNSString" code:0 userInfo:v10];
      }

      v11 = [MEMORY[0x277CCACA8] string];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }
  }

  else
  {
    v21[0] = *MEMORY[0x277CCA450];
    v12 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [v12 localizedStringForKey:@"Invalid dictionary for JSON serialization" value:&stru_287F632C0 table:0];
    v22[0] = v13;
    v21[1] = *MEMORY[0x277CCA498];
    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Refer to NSJSONSerialization spec for valid dictionaries" value:&stru_287F632C0 table:0];
    v22[1] = v15;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.tracking-avoidance.NSJSONSerializationNSString" code:0 userInfo:v7];
    }

    v11 = [MEMORY[0x277CCACA8] string];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

@end