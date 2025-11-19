@interface STKSIMToolkitResponseProvider
@end

@implementation STKSIMToolkitResponseProvider

void __47___STKSIMToolkitResponseProvider_sendResponse___block_invoke_23(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 32) valueForKey:*MEMORY[0x277CC40C8]];
  v2 = [*(*(a1 + 32) + 16) sendSIMToolkitResponse:*(*(a1 + 32) + 24) session:v3 response:{objc_msgSend(*(a1 + 32), "_responseFromResponseType:", *(a1 + 40))}];
}

void __62___STKSIMToolkitResponseProvider_sendResponse_withBOOLResult___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 32) valueForKey:*MEMORY[0x277CC40C8]];
  v2 = [*(*(a1 + 32) + 16) sendSIMToolkitBooleanResponse:*(*(a1 + 32) + 24) session:v3 response:objc_msgSend(*(a1 + 32) yesNo:{"_responseFromResponseType:", *(a1 + 40)), *(a1 + 48)}];
}

void __64___STKSIMToolkitResponseProvider_sendResponse_withStringResult___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 32) valueForKey:*MEMORY[0x277CC40C8]];
  v2 = [*(*(a1 + 32) + 16) sendSIMToolkitStringResponse:*(*(a1 + 32) + 24) session:v3 response:objc_msgSend(*(a1 + 32) string:{"_responseFromResponseType:", *(a1 + 48)), *(a1 + 40)}];
}

void __63___STKSIMToolkitResponseProvider_sendSuccessWithSelectedIndex___block_invoke(uint64_t a1)
{
  v4 = [*(*(a1 + 32) + 32) valueForKey:*MEMORY[0x277CC40C8]];
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 16) selectSIMToolkitListItem:*(*(a1 + 32) + 24) session:v4 response:*MEMORY[0x277CC4000] index:v2];
}

@end