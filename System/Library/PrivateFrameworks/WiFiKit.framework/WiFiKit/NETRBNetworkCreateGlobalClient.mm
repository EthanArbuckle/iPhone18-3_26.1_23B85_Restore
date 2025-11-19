@interface NETRBNetworkCreateGlobalClient
@end

@implementation NETRBNetworkCreateGlobalClient

uint64_t ____NETRBNetworkCreateGlobalClient_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_NETRBNetworkClient)
  {
    result = __NETRBClientValidateClient(_NETRBNetworkClient);
    if (!result)
    {
      p_inst_props = &OBJC_PROTOCOL___WFCredentialsProviderContext.inst_props;
      v6 = _NETRBNetworkClientRefCnt + 1;
      goto LABEL_10;
    }

    _NETRBClientDestroy(_NETRBNetworkClient);
    _NETRBNetworkClient = 0;
    _NETRBNetworkClientRefCnt = 0;
  }

  if (__NETRBNetworkGetServiceQueue_predNetworkQueue != -1)
  {
    ____NETRBNetworkCreateGlobalClient_block_invoke_cold_1();
  }

  result = _NETRBClientCreateInternal(__NETRBNetworkGetServiceQueue___networkServiceQueue, &__block_literal_global_269, a3, 0);
  _NETRBNetworkClient = result;
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 6003;
    return NETRBErrorLog();
  }

  p_inst_props = (&OBJC_PROTOCOL___WFCredentialsProviderContext + 56);
  v6 = 1;
LABEL_10:
  *(p_inst_props + 762) = v6;
  return result;
}

@end