@interface RTCReportingAVCLegacySupport
- (RTCReportingAVCLegacySupport)init;
- (void)dealloc;
- (void)invokeAWDAdaptorForPayload:(id)payload category:(unsigned __int16)category type:(unsigned __int16)type;
@end

@implementation RTCReportingAVCLegacySupport

- (RTCReportingAVCLegacySupport)init
{
  v7.receiver = self;
  v7.super_class = RTCReportingAVCLegacySupport;
  v2 = [(RTCReportingAVCLegacySupport *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    global_queue = dispatch_get_global_queue(9, 0);
    v2->_dispatchQ = dispatch_queue_create_with_target_V2("com.apple.rtcreporting.avclegacysupport", v3, global_queue);
    v2->_logger = os_log_create("com.apple.rtcreporting", "AVCLegacySupport");
    v5 = os_log_create("com.apple.rtcreporting", "AVCLegacySupport");
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __createAWDAdaptorInstance_block_invoke;
    block[3] = &unk_2784F12F0;
    block[4] = v5;
    if (createAWDAdaptorInstance_onceToken != -1)
    {
      dispatch_once(&createAWDAdaptorInstance_onceToken, block);
    }

    v2->_awdAdaptor = objc_alloc_init(createAWDAdaptorInstance_awdAdaptorClass);
  }

  return v2;
}

- (void)dealloc
{
  self->_dispatchQ = 0;

  self->_awdAdaptor = 0;
  v3.receiver = self;
  v3.super_class = RTCReportingAVCLegacySupport;
  [(RTCReportingAVCLegacySupport *)&v3 dealloc];
}

- (void)invokeAWDAdaptorForPayload:(id)payload category:(unsigned __int16)category type:(unsigned __int16)type
{
  v9 = NSSelectorFromString(&cfstr_Sendmessagewit.isa);
  awdAdaptor = self->_awdAdaptor;
  if (objc_opt_respondsToSelector())
  {
    payloadCopy = payload;
    dispatchQ = self->_dispatchQ;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke;
    v13[3] = &unk_2784F1368;
    categoryCopy = category;
    typeCopy = type;
    v13[4] = payload;
    v13[5] = self;
    v13[6] = v9;
    dispatch_async(dispatchQ, v13);
  }
}

void __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = *(a1 + 32);
  v5 = *(a1 + 56);
  v4 = *(a1 + 58);
  v3 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:{objc_msgSend(*(v2 + 24), "methodSignatureForSelector:", *(a1 + 48))}];
  [v3 setSelector:*(a1 + 48)];
  [v3 setTarget:*(*(a1 + 40) + 24)];
  [v3 setArgument:&v5 atIndex:2];
  [v3 setArgument:&v4 atIndex:3];
  [v3 setArgument:&v6 atIndex:4];
  [v3 invoke];
  if (os_log_type_enabled(*(*(a1 + 40) + 16), OS_LOG_TYPE_DEBUG))
  {
    __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke_cold_1(&v5, &v4);
  }
}

void __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"ParametersPayload"];
  if (!v2)
  {
    v2 = *(a1 + 32);
    if (!v2)
    {
      if (os_log_type_enabled(*(*(a1 + 40) + 16), OS_LOG_TYPE_DEBUG))
      {
        __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke_cold_1();
      }

      v2 = MEMORY[0x277CBEC10];
    }
  }

  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v2];
  [v3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", *(a1 + 56)), @"method"}];
  [v3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", *(a1 + 58)), @"respCode"}];
  [v3 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedLongLong:", *(a1 + 48)), @"event"}];
  PLLogRegisteredEvent();
  v4 = *(*(a1 + 40) + 16);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke_cold_2((a1 + 56), (a1 + 48), v4);
  }
}

void __73__RTCReportingAVCLegacySupport_invokeAWDAdaptorForPayload_category_type___block_invoke_cold_1(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_223C26000, v4, OS_LOG_TYPE_DEBUG, "dispatched message %hu/%hu to AWDAdaptor", v6, 0xEu);
  v5 = *MEMORY[0x277D85DE8];
}

void __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __105__RTCReportingAVCLegacySupport_sendPowerLogEventForClient_serviceName_payload_category_type_eventNumber___block_invoke_cold_2(unsigned __int16 *a1, uint64_t *a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *a2;
  v6 = 136315650;
  v7 = "[RTCReportingAVCLegacySupport sendPowerLogEventForClient:serviceName:payload:category:type:eventNumber:]_block_invoke";
  v8 = 1024;
  v9 = v3;
  v10 = 2048;
  v11 = v4;
  _os_log_debug_impl(&dword_223C26000, log, OS_LOG_TYPE_DEBUG, "%s: sendMessage %hu:%llu", &v6, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

@end