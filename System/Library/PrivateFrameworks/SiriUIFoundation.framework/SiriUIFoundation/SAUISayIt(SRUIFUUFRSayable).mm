@interface SAUISayIt(SRUIFUUFRSayable)
- (id)sruif__uufrSaid;
@end

@implementation SAUISayIt(SRUIFUUFRSayable)

- (id)sruif__uufrSaid
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277D5AC48]);
  aceId = [self aceId];
  [v2 setAceViewID:aceId];

  encodedClassName = [self encodedClassName];
  [v2 setAceViewClass:encodedClassName];

  dialogIdentifier = [self dialogIdentifier];
  [v2 setDialogIdentifier:dialogIdentifier];

  v9[0] = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end