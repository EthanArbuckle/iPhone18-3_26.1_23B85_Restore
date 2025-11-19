@interface SFPasswordManagerURL
+ (id)passwordManagerURLForFamilySharingGroupSetup;
+ (id)passwordManagerURLForSharingGroupWithGroupID:(id)a3;
@end

@implementation SFPasswordManagerURL

+ (id)passwordManagerURLForSharingGroupWithGroupID:(id)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D49A98];
  v10 = *MEMORY[0x277D49C98];
  v11[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 passwordManagerURLWithDictionary:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)passwordManagerURLForFamilySharingGroupSetup
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D49A98];
  v7 = *MEMORY[0x277D49C88];
  v8[0] = *MEMORY[0x277D49CA8];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v4 = [v2 passwordManagerURLWithDictionary:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end