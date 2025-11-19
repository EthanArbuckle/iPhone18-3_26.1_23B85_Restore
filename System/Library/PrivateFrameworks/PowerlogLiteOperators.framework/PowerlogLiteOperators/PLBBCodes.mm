@interface PLBBCodes
- (PLBBCodes)init;
@end

@implementation PLBBCodes

- (PLBBCodes)init
{
  v30.receiver = self;
  v30.super_class = PLBBCodes;
  v2 = [(PLBBCodes *)&v30 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEA60];
    v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v5 = [v3 arrayWithObjects:{v4, 0}];
    allMav_LogCodes = v2->_allMav_LogCodes;
    v2->_allMav_LogCodes = v5;

    v7 = MEMORY[0x277CBEA60];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:45452];
    v9 = [v7 arrayWithObjects:{v8, 0}];
    Mav5_7_Lite_LogCodes = v2->_Mav5_7_Lite_LogCodes;
    v2->_Mav5_7_Lite_LogCodes = v9;

    v11 = MEMORY[0x277CBEA60];
    v12 = [MEMORY[0x277CCABB0] numberWithInt:28978];
    v13 = [MEMORY[0x277CCABB0] numberWithInt:45309];
    v14 = [MEMORY[0x277CCABB0] numberWithInt:45310];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:45311];
    v16 = [v11 arrayWithObjects:{v12, v13, v14, v15, 0}];
    Mav5_7_LogCodes = v2->_Mav5_7_LogCodes;
    v2->_Mav5_7_LogCodes = v16;

    v18 = MEMORY[0x277CBEA60];
    v19 = [MEMORY[0x277CCABB0] numberWithInt:6144];
    v20 = [MEMORY[0x277CCABB0] numberWithInt:16678];
    v21 = [MEMORY[0x277CCABB0] numberWithInt:33];
    v22 = [MEMORY[0x277CCABB0] numberWithInt:34];
    v23 = [MEMORY[0x277CCABB0] numberWithInt:35];
    v24 = [MEMORY[0x277CCABB0] numberWithInt:36];
    v25 = [MEMORY[0x277CCABB0] numberWithInt:37];
    v26 = [v18 arrayWithObjects:{v19, v20, v21, v22, v23, v24, v25, 0}];
    Mav7_LogCodes = v2->_Mav7_LogCodes;
    v2->_Mav7_LogCodes = v26;

    v28 = v2;
  }

  return v2;
}

@end