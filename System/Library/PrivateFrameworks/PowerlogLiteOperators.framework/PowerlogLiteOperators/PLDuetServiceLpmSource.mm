@interface PLDuetServiceLpmSource
+ (id)entryEventForwardDefinitionLpmSourceInformation;
- (PLDuetServiceLpmSource)init;
- (PLService)duetService;
- (void)initOperatorDependanciesLpmSource:(id)source;
@end

@implementation PLDuetServiceLpmSource

- (PLDuetServiceLpmSource)init
{
  if ([MEMORY[0x277D3F208] isHomePod])
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = PLDuetServiceLpmSource;
    self = [(PLDuetServiceLpmSource *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)entryEventForwardDefinitionLpmSourceInformation
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v13 = *MEMORY[0x277D3F568];
  v14 = &unk_282C1C1B8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v16[0] = v2;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Source";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v11[1] = @"LpmEnabled";
  v12[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)initOperatorDependanciesLpmSource:(id)source
{
  sourceCopy = source;
  if (sourceCopy && ([MEMORY[0x277D3F258] isPowerlogHelperd] & 1) == 0 && (objc_msgSend(MEMORY[0x277D3F258], "isPerfPowerMetricd") & 1) == 0)
  {
    [(PLDuetServiceLpmSource *)self setDuetService:sourceCopy];
    v5 = objc_alloc(MEMORY[0x277D3F270]);
    duetService = [(PLDuetServiceLpmSource *)self duetService];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__PLDuetServiceLpmSource_initOperatorDependanciesLpmSource___block_invoke;
    v12[3] = &unk_27825A1D8;
    v12[4] = self;
    v7 = [v5 initWithOperator:duetService withRegistration:&unk_282C17CE8 withBlock:v12];
    [(PLDuetServiceLpmSource *)self setLpmEnabledXPCListener:v7];

    v8 = objc_alloc(MEMORY[0x277D3F270]);
    duetService2 = [(PLDuetServiceLpmSource *)self duetService];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __60__PLDuetServiceLpmSource_initOperatorDependanciesLpmSource___block_invoke_2;
    v11[3] = &unk_27825A1D8;
    v11[4] = self;
    v10 = [v8 initWithOperator:duetService2 withRegistration:&unk_282C17D10 withBlock:v11];
    [(PLDuetServiceLpmSource *)self setLpmDisabledXPCListener:v10];
  }
}

- (PLService)duetService
{
  WeakRetained = objc_loadWeakRetained(&self->_duetService);

  return WeakRetained;
}

@end