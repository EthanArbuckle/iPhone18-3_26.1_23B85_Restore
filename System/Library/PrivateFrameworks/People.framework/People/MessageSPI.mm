@interface MessageSPI
+ (BOOL)canSendIMessage:(id)a3;
@end

@implementation MessageSPI

+ (BOOL)canSendIMessage:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v4 = getIMSPIiMessageServiceSymbolLoc_ptr;
  v16 = getIMSPIiMessageServiceSymbolLoc_ptr;
  if (!getIMSPIiMessageServiceSymbolLoc_ptr)
  {
    v5 = IMCoreLibrary();
    v14[3] = dlsym(v5, "IMSPIiMessageService");
    getIMSPIiMessageServiceSymbolLoc_ptr = v14[3];
    v4 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v4)
  {
    +[MessageSPI canSendIMessage:];
  }

  v6 = *v4;
  v7 = v3;
  v8 = v6;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v9 = getIMSPIHasActiveAliasForSendingOnServiceSymbolLoc_ptr;
  v16 = getIMSPIHasActiveAliasForSendingOnServiceSymbolLoc_ptr;
  if (!getIMSPIHasActiveAliasForSendingOnServiceSymbolLoc_ptr)
  {
    v10 = IMCoreLibrary();
    v14[3] = dlsym(v10, "IMSPIHasActiveAliasForSendingOnService");
    getIMSPIHasActiveAliasForSendingOnServiceSymbolLoc_ptr = v14[3];
    v9 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v9)
  {
    +[MessageSPI canSendIMessage:];
  }

  v11 = v9(v7, v8);

  return v11;
}

+ (void)canSendIMessage:.cold.1()
{
  dlerror();
  abort_report_np();
  JUMPOUT(0x22F0CFD2CLL);
}

@end