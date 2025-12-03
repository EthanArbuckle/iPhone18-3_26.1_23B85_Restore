@interface RPCompanionLinkClient(TVRemoteCore)
- (void)tvrc_setAllowedTVs;
@end

@implementation RPCompanionLinkClient(TVRemoteCore)

- (void)tvrc_setAllowedTVs
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = "[RPCompanionLinkClient(TVRemoteCore) tvrc_setAllowedTVs]";
  v5 = 2112;
  selfCopy = self;
  _os_log_debug_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_DEBUG, "%s setting allowedTVs to %@", &v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end