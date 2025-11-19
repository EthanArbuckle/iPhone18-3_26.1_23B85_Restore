@interface PKPrinterTool
@end

@implementation PKPrinterTool

void __36__PKPrinterTool_Client_sharedClient__block_invoke()
{
  v0 = objc_opt_new();
  v1 = +[PKPrinterTool_Client sharedClient]::sSharedClient;
  +[PKPrinterTool_Client sharedClient]::sSharedClient = v0;
}

void __37__PKPrinterTool_Client_ptConn_locked__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25F5FC000, v2, OS_LOG_TYPE_DEFAULT, "PrinterTool connection %@ invalidated", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 1);
    *(WeakRetained + 1) = 0;
  }
}

void __37__PKPrinterTool_Client_ptConn_locked__block_invoke_4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = _PKLogCategory(PKLogCategoryDefault[0]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_25F5FC000, v2, OS_LOG_TYPE_DEFAULT, "PrinterTool connection %@ interrupted", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained invalidate];
}

void __55__PKPrinterTool_Client_getRecentJobsCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __78__PKPrinterTool_Client_getJobUpdateStatus_includeThumbnail_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __78__PKPrinterTool_Client_getLastUsedPrintersForCurrentNetworkCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __63__PKPrinterTool_Client_getiCloudPrintersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __59__PKPrinterTool_Client_logiCloudPrintersCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __71__PKPrinterTool_Client_browseInfoForPrinter_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __66__PKPrinterTool_Client_endpointResolve_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __51__PKPrinterTool_Client_printerTool_realPathForTmp___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __95__PKPrinterTool_Client_printerTool_getPrinterDescription_assertReachability_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __78__PKPrinterTool_Client_printerTool_queryPrinter_attributes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __78__PKPrinterTool_Client_printerTool_queryPrinter_attributes_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [PKIPP responseFromData:v3];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __71__PKPrinterTool_Client_printerTool_checkAccessState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __78__PKPrinterTool_Client_startStreamingRequest_printSettings_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

void __66__PKPrinterTool_Client_finishRequestWithCancel_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  PKLogXPCError(*(a1 + 40), v3);
  (*(*(a1 + 32) + 16))();
}

@end