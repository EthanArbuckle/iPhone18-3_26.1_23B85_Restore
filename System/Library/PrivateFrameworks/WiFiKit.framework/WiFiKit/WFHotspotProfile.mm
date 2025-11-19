@interface WFHotspotProfile
- (WFHotspotProfile)initWithProfile:(id)a3 anqpResponse:(id)a4;
@end

@implementation WFHotspotProfile

- (WFHotspotProfile)initWithProfile:(id)a3 anqpResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    [WFHotspotProfile initWithProfile:? anqpResponse:?];
LABEL_9:

    v12 = 0;
    goto LABEL_5;
  }

  if (!v7)
  {
    [WFHotspotProfile initWithProfile:? anqpResponse:?];
    goto LABEL_9;
  }

  v9 = *MEMORY[0x277CBECE8];
  [v6 scanAttributes];
  v10 = WiFiNetworkCreate();
  if (!v10)
  {
    [WFHotspotProfile initWithProfile:v6 anqpResponse:&v14];
    goto LABEL_9;
  }

  v11 = v10;
  WiFiNetworkMerge();
  v12 = [(WFNetworkProfile *)self initWithNetworkRef:v11];
  CFRelease(v11);
LABEL_5:

  return v12;
}

- (void)initWithProfile:(uint64_t)a1 anqpResponse:(NSObject *)a2 .cold.1(uint64_t a1, NSObject **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v4 && os_log_type_enabled(v4, v5))
  {
    v7 = 136315394;
    v8 = "[WFHotspotProfile initWithProfile:anqpResponse:]";
    v9 = 2112;
    v10 = a1;
    _os_log_impl(&dword_273ECD000, v4, v5, "%s: failed to create network from profile %@", &v7, 0x16u);
  }

  *a2 = v4;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithProfile:(NSObject *)a1 anqpResponse:.cold.2(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: nil anqp response", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

- (void)initWithProfile:(NSObject *)a1 anqpResponse:.cold.3(NSObject **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = WFLogForCategory(0);
  v3 = OSLogForWFLogLevel(1uLL);
  if (WFCurrentLogLevel() && v2 && os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_4_1(&dword_273ECD000, v4, v5, "%s: nil profile", v6, v7, v8, v9, 2u);
  }

  *a1 = v2;
  v10 = *MEMORY[0x277D85DE8];
}

@end