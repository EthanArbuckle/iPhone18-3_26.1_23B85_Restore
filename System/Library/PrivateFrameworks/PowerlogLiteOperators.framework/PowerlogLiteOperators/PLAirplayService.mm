@interface PLAirplayService
+ (void)load;
- (PLAirplayService)init;
- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler;
- (void)handleAudioAppCallback:(id)callback;
- (void)handleScreenStateCallback:(id)callback;
- (void)initOperatorDependancies;
@end

@implementation PLAirplayService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAirplayService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAirplayService)init
{
  if ([MEMORY[0x277D3F208] isHomePod] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPowerlogHelperd") & 1) != 0 || (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd"))
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLAirplayService;
    self = [(PLOperator *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
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

- (id)buildCallBack:(id)back withGroup:(BOOL)group withHandler:(id)handler
{
  groupCopy = group;
  backCopy = back;
  handlerCopy = handler;
  if (groupCopy)
  {
    backCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"GroupID_%@", backCopy];
  }

  else
  {
    backCopy = backCopy;
  }

  v11 = backCopy;
  v12 = objc_alloc(MEMORY[0x277D3F1A8]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__PLAirplayService_buildCallBack_withGroup_withHandler___block_invoke;
  v16[3] = &unk_27825A338;
  v17 = handlerCopy;
  v13 = handlerCopy;
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

- (void)handleScreenStateCallback:(id)callback
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = [callback objectForKey:@"group"];
  entryKeyPLScreenStateAgentScreenState = [(PLAirplayService *)self entryKeyPLScreenStateAgentScreenState];
  v6 = [v4 objectForKeyedSubscript:entryKeyPLScreenStateAgentScreenState];

  [(PLAirplayService *)self setScreenLayoutEntries:v6];
  if (-[PLAirplayService airplayMirroringOn](self, "airplayMirroringOn") && v6 && [v6 count])
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    if (v7)
    {
      array = [MEMORY[0x277CBEB18] array];
      screenLayoutEntries = [(PLAirplayService *)self screenLayoutEntries];
      v10 = [screenLayoutEntries count];

      if (v10)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        screenLayoutEntries2 = [(PLAirplayService *)self screenLayoutEntries];
        v12 = [screenLayoutEntries2 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
                objc_enumerationMutation(screenLayoutEntries2);
              }

              v16 = *(*(&v22 + 1) + 8 * i);
              v17 = [v16 objectForKeyedSubscript:@"bundleID"];

              if (v17)
              {
                v18 = [v16 objectForKeyedSubscript:@"bundleID"];
                [array addObject:v18];
              }
            }

            v13 = [screenLayoutEntries2 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v13);
        }

        mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
        entryDate = [v7 entryDate];
        [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:3 withChildNodeNames:array withStartDate:entryDate];
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)handleAudioAppCallback:(id)callback
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = [callback objectForKey:@"entry"];
  v5 = [v4 objectForKeyedSubscript:@"MirroringState"];

  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"MirroringState"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      screenLayoutEntries = [(PLAirplayService *)self screenLayoutEntries];
      if (screenLayoutEntries)
      {
        v9 = screenLayoutEntries;
        screenLayoutEntries2 = [(PLAirplayService *)self screenLayoutEntries];
        v11 = [screenLayoutEntries2 count];

        if (v11)
        {
          screenLayoutEntries3 = [(PLAirplayService *)self screenLayoutEntries];
          v13 = [screenLayoutEntries3 objectAtIndexedSubscript:0];

          if (v13)
          {
            array = [MEMORY[0x277CBEB18] array];
            screenLayoutEntries4 = [(PLAirplayService *)self screenLayoutEntries];
            v16 = [screenLayoutEntries4 count];

            if (v16)
            {
              v40 = v13;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              screenLayoutEntries5 = [(PLAirplayService *)self screenLayoutEntries];
              v18 = [screenLayoutEntries5 countByEnumeratingWithState:&v41 objects:v45 count:16];
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
                      objc_enumerationMutation(screenLayoutEntries5);
                    }

                    v22 = *(*(&v41 + 1) + 8 * i);
                    v23 = [v22 objectForKeyedSubscript:@"bundleID"];

                    if (v23)
                    {
                      v24 = [v22 objectForKeyedSubscript:@"bundleID"];
                      [array addObject:v24];
                    }
                  }

                  v19 = [screenLayoutEntries5 countByEnumeratingWithState:&v41 objects:v45 count:16];
                }

                while (v19);
              }

              mEMORY[0x277D3F0C0] = [MEMORY[0x277D3F0C0] sharedInstance];
              v13 = v40;
              entryDate = [v40 entryDate];
              [mEMORY[0x277D3F0C0] createQualificationEventForwardWithQualificationID:3 withChildNodeNames:array withStartDate:entryDate];
            }
          }
        }
      }

      mEMORY[0x277D3F0C0]2 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate2 = [v4 entryDate];
      [mEMORY[0x277D3F0C0]2 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C19200 withStartDate:entryDate2];

      mEMORY[0x277D3F0C0]3 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate3 = [v4 entryDate];
      [mEMORY[0x277D3F0C0]3 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:entryDate3];

      selfCopy2 = self;
      v32 = 1;
    }

    else
    {
      mEMORY[0x277D3F0C0]4 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate4 = [v4 entryDate];
      [mEMORY[0x277D3F0C0]4 createDistributionEventForwardWithDistributionID:3 withChildNodeNameToWeight:&unk_282C19228 withStartDate:entryDate4];

      mEMORY[0x277D3F0C0]5 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate5 = [v4 entryDate];
      [mEMORY[0x277D3F0C0]5 createDistributionEventForwardWithDistributionID:36 withChildNodeNameToWeight:MEMORY[0x277CBEC10] withStartDate:entryDate5];

      mEMORY[0x277D3F0C0]6 = [MEMORY[0x277D3F0C0] sharedInstance];
      entryDate6 = [v4 entryDate];
      [mEMORY[0x277D3F0C0]6 createQualificationEventForwardWithQualificationID:3 withChildNodeNames:MEMORY[0x277CBEBF8] withStartDate:entryDate6];

      selfCopy2 = self;
      v32 = 0;
    }

    [(PLAirplayService *)selfCopy2 setAirplayMirroringOn:v32];
  }

  v39 = *MEMORY[0x277D85DE8];
}

@end