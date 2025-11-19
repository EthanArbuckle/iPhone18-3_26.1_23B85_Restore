@interface WiFiDiagnosticReporter
+ (id)sharedWiFiDiagnosticReporter;
- (BOOL)isWiFiABCSignatureUnblocked:(id)a3;
- (WiFiDiagnosticReporter)init;
- (void)initABCReporter;
- (void)submitWiFiWatchdogReason:(id)a3 subtypeContext:(id)a4;
@end

@implementation WiFiDiagnosticReporter

+ (id)sharedWiFiDiagnosticReporter
{
  if (sharedWiFiDiagnosticReporter_onceToken != -1)
  {
    +[WiFiDiagnosticReporter sharedWiFiDiagnosticReporter];
  }

  v3 = sharedWiFiDiagnosticReporter_sharedWiFiDiagnosticReporter;

  return v3;
}

uint64_t __54__WiFiDiagnosticReporter_sharedWiFiDiagnosticReporter__block_invoke()
{
  v0 = objc_alloc_init(WiFiDiagnosticReporter);
  v1 = sharedWiFiDiagnosticReporter_sharedWiFiDiagnosticReporter;
  sharedWiFiDiagnosticReporter_sharedWiFiDiagnosticReporter = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)submitWiFiWatchdogReason:(id)a3 subtypeContext:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ABCReporter = self->_ABCReporter;
  if (ABCReporter || ([(WiFiDiagnosticReporter *)self initABCReporter], (ABCReporter = self->_ABCReporter) != 0))
  {
    v9 = [(SDRDiagnosticReporter *)ABCReporter signatureWithDomain:@"WiFi" type:@"WiFi Watchdog" subType:v6 subtypeContext:v7 detectedProcess:@"wifid" triggerThresholdValues:0];
    v19 = *MEMORY[0x277D6B138];
    v20[0] = &unk_2848BB088;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[WiFiDiagnosticReporter submitWiFiWatchdogReason:subtypeContext:]";
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: ABC snapshotWithSignature signature: %@", buf, 0x16u);
    }

    v11 = self->_ABCReporter;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __66__WiFiDiagnosticReporter_submitWiFiWatchdogReason_subtypeContext___block_invoke;
    v13[3] = &unk_2789C6998;
    v14 = v6;
    [(SDRDiagnosticReporter *)v11 snapshotWithSignature:v9 delay:0 events:v10 payload:0 actions:v13 reply:60.0];
  }

  else
  {
    [WiFiDiagnosticReporter submitWiFiWatchdogReason:v6 subtypeContext:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __66__WiFiDiagnosticReporter_submitWiFiWatchdogReason_subtypeContext___block_invoke(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v6 = 136315650;
    v7 = "[WiFiDiagnosticReporter submitWiFiWatchdogReason:subtypeContext:]_block_invoke";
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = a2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: reasonString: %@ ABC snapshot response: %@", &v6, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)initABCReporter
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = 136315138;
    v2 = "[WiFiDiagnosticReporter initABCReporter]";
    _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: initABCReporter already exists \n", &v1, 0xCu);
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (WiFiDiagnosticReporter)init
{
  v5.receiver = self;
  v5.super_class = WiFiDiagnosticReporter;
  v2 = [(WiFiDiagnosticReporter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiDiagnosticReporter *)v2 initABCReporter];
  }

  return v3;
}

- (BOOL)isWiFiABCSignatureUnblocked:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v4 persistentDomainForName:@"com.apple.wifi.abc"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0_0();
    v18 = v3;
    v19 = v16;
    v20 = v4;
    v21 = v16;
    v22 = v5;
    _os_log_debug_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "%s: testing for key %@ have %@ and %@", v17, 0x2Au);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_14:
    v6 = 0;
LABEL_15:
    v11 = 1;
    goto LABEL_12;
  }

  if (!v5)
  {
    goto LABEL_14;
  }

LABEL_3:
  v6 = [v5 objectForKeyedSubscript:v3];
  if (!v6)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v6 = v6;
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v7 compare:v6];
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  v10 = v8 == -1;
  v11 = v8 != -1;
  if (v10)
  {
    if (v9)
    {
      OUTLINED_FUNCTION_0_0();
      v18 = v6;
      v12 = MEMORY[0x277D86220];
      v13 = "%s: ABC signature is currently blocked by request until %@";
      goto LABEL_10;
    }
  }

  else if (v9)
  {
    OUTLINED_FUNCTION_0_0();
    v18 = v3;
    v12 = MEMORY[0x277D86220];
    v13 = "%s: ABC signature is unblocked: %@";
LABEL_10:
    _os_log_impl(&dword_2332D7000, v12, OS_LOG_TYPE_DEFAULT, v13, v17, 0x16u);
  }

LABEL_12:
  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)submitWiFiWatchdogReason:(uint64_t)a1 subtypeContext:.cold.1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "[WiFiDiagnosticReporter submitWiFiWatchdogReason:subtypeContext:]";
    v5 = 2112;
    v6 = a1;
    _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: _ABCReporter failing to init, skipping submitting reasonString: %@ \n", &v3, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end