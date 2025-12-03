@interface SUSUIUpdateAgreementManager
- (SUSUIUpdateAgreementManager)init;
- (id)_queue_agreementDictForDescriptor:(id)descriptor;
- (int)_queue_agreementDictValueForKey:(id)key forDescriptor:(id)descriptor;
- (int)cellularFeeAgreementStatusForUpdate:(id)update;
- (int)termsAgreementStatusForUpdate:(id)update;
- (void)_queue_setAgreementDictValue:(int)value forKey:(id)key forDescriptor:(id)descriptor;
- (void)setCellularFeeAgreementStatus:(int)status forUpdate:(id)update;
- (void)setTermsAgreementStatus:(int)status forUpdate:(id)update;
@end

@implementation SUSUIUpdateAgreementManager

- (SUSUIUpdateAgreementManager)init
{
  v10 = a2;
  v11 = 0;
  v9.receiver = self;
  v9.super_class = SUSUIUpdateAgreementManager;
  v11 = [(SUSUIUpdateAgreementManager *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    updateAgreementDict = v11->_updateAgreementDict;
    v11->_updateAgreementDict = v2;
    MEMORY[0x277D82BD8](updateAgreementDict);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.softwareupdatesettings.agreementManagerQueue", v8);
    stateQueue = v11->_stateQueue;
    v11->_stateQueue = v4;
    MEMORY[0x277D82BD8](stateQueue);
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)setCellularFeeAgreementStatus:(int)status forUpdate:(id)update
{
  selfCopy = self;
  v15 = a2;
  statusCopy = status;
  location = 0;
  objc_storeStrong(&location, update);
  dispatch_assert_queue_not_V2(selfCopy->_stateQueue);
  queue = selfCopy->_stateQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __71__SUSUIUpdateAgreementManager_setCellularFeeAgreementStatus_forUpdate___block_invoke;
  v9 = &unk_279CC2100;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  v12 = statusCopy;
  v11 = MEMORY[0x277D82BE0](location);
  dispatch_sync(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (void)setTermsAgreementStatus:(int)status forUpdate:(id)update
{
  selfCopy = self;
  v15 = a2;
  statusCopy = status;
  location = 0;
  objc_storeStrong(&location, update);
  dispatch_assert_queue_not_V2(selfCopy->_stateQueue);
  queue = selfCopy->_stateQueue;
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __65__SUSUIUpdateAgreementManager_setTermsAgreementStatus_forUpdate___block_invoke;
  v9 = &unk_279CC2100;
  v10 = MEMORY[0x277D82BE0](selfCopy);
  v12 = statusCopy;
  v11 = MEMORY[0x277D82BE0](location);
  dispatch_sync(queue, &v5);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
}

- (int)cellularFeeAgreementStatusForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  dispatch_assert_queue_not_V2(selfCopy->_stateQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  queue = selfCopy->_stateQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __67__SUSUIUpdateAgreementManager_cellularFeeAgreementStatusForUpdate___block_invoke;
  v10 = &unk_279CC2128;
  v12[1] = &v13;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_sync(queue, &v6);
  v5 = *(v14 + 6);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(location, 0);
  return v5;
}

uint64_t __67__SUSUIUpdateAgreementManager_cellularFeeAgreementStatusForUpdate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_agreementDictValueForKey:kAgreementDictKeyCellularFee forDescriptor:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (int)termsAgreementStatusForUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  dispatch_assert_queue_not_V2(selfCopy->_stateQueue);
  v13 = 0;
  v14 = &v13;
  v15 = 0x20000000;
  v16 = 32;
  v17 = 0;
  queue = selfCopy->_stateQueue;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __61__SUSUIUpdateAgreementManager_termsAgreementStatusForUpdate___block_invoke;
  v10 = &unk_279CC2128;
  v12[1] = &v13;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12[0] = MEMORY[0x277D82BE0](location[0]);
  dispatch_sync(queue, &v6);
  v5 = *(v14 + 6);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  _Block_object_dispose(&v13, 8);
  objc_storeStrong(location, 0);
  return v5;
}

uint64_t __61__SUSUIUpdateAgreementManager_termsAgreementStatusForUpdate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_agreementDictValueForKey:kAgreementDictKeyTerms forDescriptor:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)_queue_agreementDictForDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, descriptor);
  dispatch_assert_queue_V2(selfCopy->_stateQueue);
  if (location[0])
  {
    v7 = [(NSMutableDictionary *)selfCopy->_updateAgreementDict objectForKeyedSubscript:location[0]];
  }

  else
  {
    v7 = 0;
  }

  objc_storeStrong(location, 0);
  v3 = v7;

  return v3;
}

- (void)_queue_setAgreementDictValue:(int)value forKey:(id)key forDescriptor:(id)descriptor
{
  selfCopy = self;
  v14 = a2;
  valueCopy = value;
  location = 0;
  objc_storeStrong(&location, key);
  v11 = 0;
  objc_storeStrong(&v11, descriptor);
  dispatch_assert_queue_V2(selfCopy->_stateQueue);
  if (v11 && location)
  {
    v9 = [(SUSUIUpdateAgreementManager *)selfCopy _queue_agreementDictForDescriptor:v11];
    if (v9)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:valueCopy];
      [v9 setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:valueCopy];
      [v8 setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v5);
      [(NSMutableDictionary *)selfCopy->_updateAgreementDict setObject:v8 forKeyedSubscript:v11];
      objc_storeStrong(&v8, 0);
    }

    objc_storeStrong(&v9, 0);
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&location, 0);
}

- (int)_queue_agreementDictValueForKey:(id)key forDescriptor:(id)descriptor
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v12 = 0;
  objc_storeStrong(&v12, descriptor);
  dispatch_assert_queue_V2(selfCopy->_stateQueue);
  v11 = 0;
  if (v12 && location[0])
  {
    v9 = [(NSMutableDictionary *)selfCopy->_updateAgreementDict objectForKeyedSubscript:v12];
    if (v9)
    {
      v4 = [v9 objectForKeyedSubscript:location[0]];
      v5 = v11;
      v11 = v4;
      MEMORY[0x277D82BD8](v5);
    }

    if (v11)
    {
      integerValue = [v11 integerValue];
    }

    else
    {
      integerValue = 0;
    }

    v15 = integerValue;
    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v15 = 0;
    v10 = 1;
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v15;
}

@end