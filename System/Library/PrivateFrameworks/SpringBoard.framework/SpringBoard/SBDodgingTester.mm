@interface SBDodgingTester
- (SBDodgingTester)initWithDodgingResolverController:(id)a3;
@end

@implementation SBDodgingTester

- (SBDodgingTester)initWithDodgingResolverController:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SBDodgingTester;
  v5 = [(SBDodgingTester *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x277D43280];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__SBDodgingTester_initWithDodgingResolverController___block_invoke;
    v10[3] = &unk_2783A8C18;
    v11 = v4;
    v7 = [v6 recipeWithTitle:@"Add Dodging Item" action:v10];
    testRecipe = v5->_testRecipe;
    v5->_testRecipe = v7;

    [(PTDomain *)SBAppSwitcherDomain registerTestRecipe:v5->_testRecipe];
  }

  return v5;
}

void __53__SBDodgingTester_initWithDodgingResolverController___block_invoke(uint64_t a1)
{
  v23[10] = *MEMORY[0x277D85DE8];
  v21 = [MEMORY[0x277D75348] greenColor];
  v23[0] = v21;
  v1 = [MEMORY[0x277D75348] orangeColor];
  v23[1] = v1;
  v2 = [MEMORY[0x277D75348] purpleColor];
  v23[2] = v2;
  v3 = [MEMORY[0x277D75348] blueColor];
  v23[3] = v3;
  v4 = [MEMORY[0x277D75348] yellowColor];
  v23[4] = v4;
  v5 = [MEMORY[0x277D75348] systemPinkColor];
  v23[5] = v5;
  v6 = [MEMORY[0x277D75348] brownColor];
  v23[6] = v6;
  v7 = [MEMORY[0x277D75348] magentaColor];
  v23[7] = v7;
  v8 = [MEMORY[0x277D75348] cyanColor];
  v23[8] = v8;
  v9 = [MEMORY[0x277D75348] systemDarkGreenColor];
  v23[9] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:10];

  v11 = arc4random();
  v12 = v11 % [v10 count];
  v13 = MEMORY[0x277CCACA8];
  v14 = [&unk_28336F108 objectAtIndexedSubscript:v12];
  v15 = [MEMORY[0x277CCAD78] UUID];
  v16 = [v15 UUIDString];
  v17 = [v16 substringWithRange:{0, 3}];
  v18 = [v13 stringWithFormat:@"%@-%@", v14, v17];

  v19 = [SBDodgingTesterView alloc];
  v20 = [v10 objectAtIndexedSubscript:v12];
}

@end