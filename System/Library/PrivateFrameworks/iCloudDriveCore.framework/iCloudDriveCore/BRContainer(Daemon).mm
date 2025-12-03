@interface BRContainer(Daemon)
- (uint64_t)currentStatus;
- (uint64_t)lastServerUpdate;
- (void)currentStatus;
- (void)lastServerUpdate;
@end

@implementation BRContainer(Daemon)

- (uint64_t)currentStatus
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    [(BRContainer(Daemon) *)v0 currentStatus];
  }

  return 1;
}

- (uint64_t)lastServerUpdate
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    [(BRContainer(Daemon) *)v0 lastServerUpdate];
  }

  return 0;
}

- (void)currentStatus
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: [BRContainer currentStatus] shouldn't be called by the daemon.%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)lastServerUpdate
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_223E7A000, a2, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: [BRContainer lastServerUpdate] shouldn't be called by the daemon.%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end