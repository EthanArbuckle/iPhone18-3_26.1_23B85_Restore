@interface NSJSONSerialization(RTExtensions)
+ (id)JSONStringFromNSDictionary:()RTExtensions error:;
@end

@implementation NSJSONSerialization(RTExtensions)

+ (id)JSONStringFromNSDictionary:()RTExtensions error:
{
  v21[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([MEMORY[0x277CCAAA0] isValidJSONObject:v5])
  {
    v17 = 0;
    v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v5 options:8 error:&v17];
    v7 = v17;
    if (v7)
    {
      v18[0] = *MEMORY[0x277CCA450];
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v9 = [mainBundle localizedStringForKey:@"NSJSONSerialization failed" value:&stru_284528390 table:0];
      v18[1] = *MEMORY[0x277CCA7E8];
      v19[0] = v9;
      v19[1] = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.routined.NSJSONSerializationRTExtensions" code:0 userInfo:v10];
      }

      string = [MEMORY[0x277CCACA8] string];
    }

    else
    {
      string = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v6 encoding:4];
    }
  }

  else
  {
    v20[0] = *MEMORY[0x277CCA450];
    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle2 localizedStringForKey:@"Invalid dictionary for JSON serialization" value:&stru_284528390 table:0];
    v21[0] = v13;
    v20[1] = *MEMORY[0x277CCA498];
    mainBundle3 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [mainBundle3 localizedStringForKey:@"Refer to NSJSONSerialization spec for valid dictionaries" value:&stru_284528390 table:0];
    v21[1] = v15;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.routined.NSJSONSerializationRTExtensions" code:0 userInfo:v7];
    }

    string = [MEMORY[0x277CCACA8] string];
  }

  return string;
}

@end