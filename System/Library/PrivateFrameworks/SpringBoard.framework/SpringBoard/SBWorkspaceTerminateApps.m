@interface SBWorkspaceTerminateApps
@end

@implementation SBWorkspaceTerminateApps

uint64_t ___SBWorkspaceTerminateApps_block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void ___SBWorkspaceTerminateApps_block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___SBWorkspaceTerminateApps_block_invoke_3;
  block[3] = &unk_2783A8C18;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

@end