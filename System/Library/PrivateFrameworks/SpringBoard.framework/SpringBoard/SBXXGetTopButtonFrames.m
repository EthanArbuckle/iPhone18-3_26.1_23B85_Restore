@interface SBXXGetTopButtonFrames
@end

@implementation SBXXGetTopButtonFrames

double ___SBXXGetTopButtonFrames_block_invoke(uint64_t a1)
{
  v2 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = v2;
  v9 = v11;
  v10 = v2;
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [SBCoverSheetPresentationManager getLeadingTopButtonFrame:&v11 trailingTopButtonFrame:&v9 forScreen:v3];

  v4 = *(a1 + 40);
  **(a1 + 32) = v11;
  *v4 = *(&v11 + 1);
  v5 = *(a1 + 56);
  **(a1 + 48) = v12;
  *v5 = *(&v12 + 1);
  v6 = *(a1 + 72);
  **(a1 + 64) = v9;
  *v6 = *(&v9 + 1);
  v7 = *(a1 + 88);
  **(a1 + 80) = v10;
  result = *(&v10 + 1);
  *v7 = *(&v10 + 1);
  return result;
}

@end