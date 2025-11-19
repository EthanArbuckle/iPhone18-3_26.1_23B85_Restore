@interface PLAirplayService
+ (void)load;
- (PLAirplayService)init;
- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5;
- (void)handleAudioAppCallback:(id)a3;
- (void)handleScreenStateCallback:(id)a3;
- (void)initOperatorDependancies;
@end

@implementation PLAirplayService

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLAirplayService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAirplayService)init
{
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLAirplayService;
    self = [(PLOperator *)&v5 init];
    v3 = self;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  if (([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    screenLayoutEntries = self->_screenLayoutEntries;
    self->_screenLayoutEntries = 0;

    self->_airplayMirroringOn = 0;
    v4 = [(PLOperator *)PLScreenStateAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ScreenState"];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__PLAirplayService_initOperatorDependancies__block_invoke;
    v12[3] = &unk_27825A2E8;
    v12[4] = self;
    v5 = [(PLAirplayService *)self buildCallBack:v4 withGroup:1 withHandler:v12];
    [(PLAirplayService *)self setScreenstateCallback:v5];

    entryKeyPLScreenStateAgentScreenState = self->_entryKeyPLScreenStateAgentScreenState;
    self->_entryKeyPLScreenStateAgentScreenState = v4;
    v7 = v4;

    v8 = [(PLOperator *)PLAudioAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"AudioApp"];

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__PLAirplayService_initOperatorDependancies__block_invoke_2;
    v11[3] = &unk_27825A2E8;
    v11[4] = self;
    v9 = [(PLAirplayService *)self buildCallBack:v8 withGroup:0 withHandler:v11];
    [(PLAirplayService *)self setAudioAppCallback:v9];

    v10 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D0AB98]];
    [(PLAirplayService *)self setExcludedAccountingEvents:v10];
  }
}

- (id)buildCallBack:(id)a3 withGroup:(BOOL)a4 withHandler:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (v6)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", v8];
  }

  else
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PLAirplayService_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_27825A338;
  v17 = v9;
  v13 = v9;
  v14 = [v12 initWithOperator:self forEntryKey:v11 withBlock:v16];

  return v14;
}

uint64_t __56__PLAirplayService_buildCallBack_withGroup_withHandler___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

- (void)handleScreenStateCallback:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"group"];
  v5 = [(PLAirplayService *)self entryKeyPLScreenStateAgentScreenState];
  v6 = [v4 objectForKeyedSubscript:v5];

  [(PLAirplayService *)self setScreenLayoutEntries:v6];
  if (-[PLAirplayService airplayMirroringOn](self, "airplayMirroringOn") && v6 && [v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if (v7)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v9 = [(PLAirplayService *)self screenLayoutEntries];
      v10 = [v9 count];

      if (v10)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v11 = [(PLAirplayService *)self screenLayoutEntries];
        v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v23;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v23 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v22 + 1) + 8 * i);
              v17 = [v16 objectForKeyedSubscript:@"bundleID"];

              if (v17)
              {
                v18 = [v16 objectForKeyedSubscript:@"bundleID"];
                [v8 addObject:v18];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v13);
        }

        v19 = [MEMORY[0x277D3F0C0] sharedInstance];
        v20 = [v7 entryDate];
        [v19 createQualificationEventForwardWithQualificationID:3 withChildNodeNames:v8 withStartDate:v20];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioAppCallback:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKey:@"entry"];
  v5 = [v4 objectForKeyedSubscript:@"MirroringState"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"MirroringState"];
    v7 = [v6 BOOLValue];

    if (v7)
    {
      v8 = [(PLAirplayService *)self screenLayoutEntries];
      if (v8)
      {
        v9 = v8;
        v10 = [(PLAirplayService *)self screenLayoutEntries];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [(PLAirplayService *)self screenLayoutEntries];
          v13 = [v12 objectAtIndexedSubscript:0];

          if (v13)
          {
            v14 = [MEMORY[0x277CBEB18] array];
            v15 = [(PLAirplayService *)self screenLayoutEntries];
            v16 = [v15 count];

            if (v16)
            {
              v40 = v13;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v17 = [(PLAirplayService *)self screenLayoutEntries];
              v18 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v42;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v42 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v41 + 1) + 8 * i);
                    v23 = [v22 objectForKeyedSubscript:@"bundleID"];

                    if (v23)
                    {
                      v24 = [v22 objectForKeyedSubscript:@"bundleID"];
                      [v14 addObject:v24];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v41 objects:v45 count:16];
                }

                while (v19);
              }

              v25 = [MEMORY[0x277D3F0C0] sharedInstance];
              v13 = v40;
              v26 = [v40 entryDate];
              [v25 createQualificationEventForwardWithQualificationID:3 withChildNodeNames:v14 withStartDate:v26];
            }
          }
        }
      }

      v27 = [MEMORY[0x277D3F0C0] sharedInstance];
      v28 = [v4 entryDate];
      [v27 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C19200 withStartDate:v28];

      v29 = [MEMORY[0x277D3F0C0] sharedInstance];
      v30 = [v4 entryDate];
      [v29 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v30];

      v31 = self;
      v32 = 1;
    }

    else
    {
      v33 = [MEMORY[0x277D3F0C0] sharedInstance];
      v34 = [v4 entryDate];
      [v33 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C19228 withStartDate:v34];

      v35 = [MEMORY[0x277D3F0C0] sharedInstance];
      v36 = [v4 entryDate];
      [v35 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:v36];

      v37 = [MEMORY[0x277D3F0C0] sharedInstance];
      v38 = [v4 entryDate];
      [v37 createQualificationEventForwardWithQualificationID:3 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:v38];

      v31 = self;
      v32 = 0;
    }

    [(PLAirplayService *)v31 setAirplayMirroringOn:v32];
  }

  v39 = *MEMORY[0x277D85DE8];
}

@end