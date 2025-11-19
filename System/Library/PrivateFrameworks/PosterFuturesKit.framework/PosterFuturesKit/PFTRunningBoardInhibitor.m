@interface PFTRunningBoardInhibitor
@end

@implementation PFTRunningBoardInhibitor

uint64_t __35___PFTRunningBoardInhibitor_os_log__block_invoke()
{
  os_log_pft_once_object_8_3 = os_log_create("com.apple.FutureKit", "running-board-inhibitor");

  return MEMORY[0x2821F96F8]();
}

void __34___PFTRunningBoardInhibitor_start__block_invoke()
{
  v19[2] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v0 = getRBSDomainAttributeClass_softClass;
  v18 = getRBSDomainAttributeClass_softClass;
  if (!getRBSDomainAttributeClass_softClass)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __getRBSDomainAttributeClass_block_invoke;
    v13 = &unk_279A53440;
    v14 = &v15;
    __getRBSDomainAttributeClass_block_invoke(&v10);
    v0 = v16[3];
  }

  v1 = v0;
  _Block_object_dispose(&v15, 8);
  v2 = [v0 attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v3 = getRBSAcquisitionCompletionAttributeClass_softClass;
  v18 = getRBSAcquisitionCompletionAttributeClass_softClass;
  v19[0] = v2;
  if (!getRBSAcquisitionCompletionAttributeClass_softClass)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __getRBSAcquisitionCompletionAttributeClass_block_invoke;
    v13 = &unk_279A53440;
    v14 = &v15;
    __getRBSAcquisitionCompletionAttributeClass_block_invoke(&v10);
    v3 = v16[3];
  }

  v4 = v3;
  _Block_object_dispose(&v15, 8);
  v5 = [v3 attributeWithCompletionPolicy:1];
  v19[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
  v7 = [v6 copy];
  v8 = start_pft_once_object_10;
  start_pft_once_object_10 = v7;

  v9 = *MEMORY[0x277D85DE8];
}

void __47___PFTRunningBoardInhibitor_runningBoardTarget__block_invoke()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v0 = getRBSTargetClass_softClass;
  v8 = getRBSTargetClass_softClass;
  if (!getRBSTargetClass_softClass)
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __getRBSTargetClass_block_invoke;
    v4[3] = &unk_279A53440;
    v4[4] = &v5;
    __getRBSTargetClass_block_invoke(v4);
    v0 = v6[3];
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);
  v2 = [v0 currentProcess];
  v3 = runningBoardTarget_pft_once_object_12;
  runningBoardTarget_pft_once_object_12 = v2;
}

@end