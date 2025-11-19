@interface NanoPhoneVoicemailTranscript(NanoPhone)
@end

@implementation NanoPhoneVoicemailTranscript(NanoPhone)

- (void)initWithTranscriptMessage:()NanoPhone voicemailNumber:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[NanoPhoneVoicemailTranscript(NanoPhone) initWithTranscriptMessage:voicemailNumber:]";
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26D269000, a2, OS_LOG_TYPE_ERROR, "%s: %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end