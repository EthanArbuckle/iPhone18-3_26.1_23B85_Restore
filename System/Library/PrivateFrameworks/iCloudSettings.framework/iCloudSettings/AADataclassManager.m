@interface AADataclassManager
@end

@implementation AADataclassManager

uint64_t __57__AADataclassManager_iCloudSettings___isHiddenDataclass___block_invoke()
{
  v0 = *MEMORY[0x277CB8978];
  _isHiddenDataclass__dataclassesToHide = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CB89B8], *MEMORY[0x277CB8978], *MEMORY[0x277CB8A30], *MEMORY[0x277CB8938], *MEMORY[0x277CB8950], *MEMORY[0x277CB8940], *MEMORY[0x277CB8960], *MEMORY[0x277CB8918], 0}];

  return MEMORY[0x2821F96F8]();
}

@end