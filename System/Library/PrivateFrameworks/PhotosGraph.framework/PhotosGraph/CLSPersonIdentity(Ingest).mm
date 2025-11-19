@interface CLSPersonIdentity(Ingest)
- (id)locationsByAddressTypes;
@end

@implementation CLSPersonIdentity(Ingest)

- (id)locationsByAddressTypes
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__CLSPersonIdentity_Ingest__locationsByAddressTypes__block_invoke;
  v11[3] = &unk_278884D88;
  v12 = v2;
  v3 = v2;
  [a1 enumerateAddressesOfType:0 asCLLocationsWithBlock:v11];
  v4 = [MEMORY[0x277CBEB18] array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__CLSPersonIdentity_Ingest__locationsByAddressTypes__block_invoke_2;
  v9[3] = &unk_278884D88;
  v10 = v4;
  v5 = v4;
  [a1 enumerateAddressesOfType:1 asCLLocationsWithBlock:v9];
  v13[0] = &unk_284482A48;
  v13[1] = &unk_284482A60;
  v14[0] = v3;
  v14[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end