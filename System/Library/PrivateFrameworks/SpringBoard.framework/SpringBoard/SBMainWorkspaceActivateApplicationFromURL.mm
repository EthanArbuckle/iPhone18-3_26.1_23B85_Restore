@interface SBMainWorkspaceActivateApplicationFromURL
@end

@implementation SBMainWorkspaceActivateApplicationFromURL

void ___SBMainWorkspaceActivateApplicationFromURL_block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v2 _LSFailedToOpenURL:*(a1 + 32) withBundle:0];
}

@end