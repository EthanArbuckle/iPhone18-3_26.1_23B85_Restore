@interface CSJournalProcessor
- (BOOL)isComplete;
- (BOOL)processNext:(id)a3 completion:(id)a4;
- (BOOL)setupFromSpotlightDaemonJournalWithParentFd:(int)a3 spotlightBasePath:(const char *)a4;
- (BOOL)setupFromTopLevelJournalWithParentFd:(int)a3 journalBasePath:(const char *)a4;
- (BOOL)setupWithParentFd:(int)a3 name:(id)a4;
- (CSJournalProcessor)init;
- (id)description;
- (int)linkFileAtPath:(char *)a3 parentFd:(int)a4 fileName:(const char *)a5;
- (int)retainJournalFd;
- (int)retainProcessedFd;
- (int)retainTocFd;
- (uint64_t)dev;
- (uint64_t)err;
- (uint64_t)eventListener;
- (uint64_t)homePathHash;
- (uint64_t)itemHandler;
- (uint64_t)journalIno;
- (uint64_t)journalNumber;
- (uint64_t)journal_cookie;
- (uint64_t)journal_fd;
- (uint64_t)journal_fd_retain_count;
- (uint64_t)journal_file_size;
- (uint64_t)journal_orig_name;
- (uint64_t)managedJournal;
- (uint64_t)processed_fd;
- (uint64_t)processed_fd_retain_count;
- (uint64_t)processed_name;
- (uint64_t)setErr:(uint64_t)result;
- (uint64_t)setHomePathHash:(uint64_t)result;
- (uint64_t)setJournal_file_size:(uint64_t)result;
- (uint64_t)setManagedJournal:(uint64_t)result;
- (uint64_t)setToc_file_size:(uint64_t)result;
- (uint64_t)setToc_processed:(uint64_t)result;
- (uint64_t)setToc_retry_counter:(uint64_t)result;
- (uint64_t)toc_complete_size;
- (uint64_t)toc_fd;
- (uint64_t)toc_fd_retain_count;
- (uint64_t)toc_file_size;
- (uint64_t)toc_name;
- (uint64_t)toc_processed;
- (uint64_t)toc_retry_counter;
- (void)_processOffsetAtOffset:(int64_t)a3 completion:(id)a4;
- (void)cooldown;
- (void)dealloc;
- (void)deleteFiles;
- (void)markComplete:(int64_t)a3 processingDone:(BOOL)a4;
- (void)releaseJournalFd;
- (void)releaseProcessedFd;
- (void)releaseTocFd;
- (void)retainJournalFd;
- (void)retainJournalUsingFd:(int)a3;
- (void)retainProcessedFd;
- (void)retainTocFd;
- (void)setItemHandler:(void *)a1;
- (void)warmup;
@end

@implementation CSJournalProcessor

- (id)description
{
  complete = self->_complete;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = objc_opt_class();
  eventListener = self->_eventListener;
  if (complete)
  {
    if (eventListener)
    {
      eventListener = eventListener->_delegate;
    }

    v7 = eventListener;
    v8 = [v4 initWithFormat:@"<%@:%p:%u; n: %llu pfd: %d offset: %lld jsz:%lld, tsz: %lld csz: %lld err: %d (%@)>", v5, self, -[CSEventListener eventType](v7, "eventType"), self->_journalNumber, self->_parentFD, self->_toc_processed, self->_journal_file_size, self->_toc_file_size, self->_toc_complete_size, self->_err, self->_key];
  }

  else
  {
    if (eventListener)
    {
      eventListener = eventListener->_delegate;
    }

    v7 = eventListener;
    v9 = [(CSEventListener *)v7 eventType];
    journal_file_size = self->_journal_file_size;
    v8 = [v4 initWithFormat:@"<%@:%p:%u; n: %llu pfd: %d offset: %lld jsz: %lld, tsz: %lld err: %d (%@)>", v5, self, v9, self->_journalNumber, self->_parentFD, self->_toc_processed, journal_file_size, self->_toc_file_size, self->_err, self->_key, v13];
  }

  v11 = v8;

  return v11;
}

- (CSJournalProcessor)init
{
  v3.receiver = self;
  v3.super_class = CSJournalProcessor;
  result = [(CSJournalProcessor *)&v3 init];
  if (result)
  {
    result->_parentFD = -1;
    result->_journal_fd = -1;
    result->_toc_fd = -1;
    result->_processed_fd = -1;
  }

  return result;
}

- (BOOL)setupWithParentFd:(int)a3 name:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a4;
  memset(&v46, 0, sizeof(v46));
  if (fstat(a3, &v46) == -1)
  {
LABEL_41:
    v31 = *__error();
    goto LABEL_42;
  }

  st_dev = v46.st_dev;
  strncpy(__dst, [v6 fileSystemRepresentation], 0xFFuLL);
  v8 = strlen(__dst);
  v9 = 0;
  v10 = &__dst[v8];
  v11 = &__dst[v8 - 1];
  v12 = &__dst[v8];
  do
  {
    v13 = v9;
    if (v11 <= __dst)
    {
      if (v9)
      {
        goto LABEL_12;
      }

      goto LABEL_26;
    }

    v9 = v12 - 1;
    v15 = *v11--;
    v14 = v15;
    --v12;
  }

  while ((v15 - 48) < 0xA);
  if (v14 != 95 || v13 == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  __endptr = 0;
  v17 = strtoll(v13, &__endptr, 0);
  if (!v17)
  {
LABEL_26:
    v31 = -1;
    goto LABEL_42;
  }

  v18 = 0;
  self->_journalNumber = v17;
  v19 = v13 - 2;
  do
  {
    v20 = v18;
    if (v19 <= __dst)
    {
      if (!v18)
      {
        goto LABEL_26;
      }

      goto LABEL_23;
    }

    v18 = v19;
    v22 = *v19--;
    v21 = v22;
  }

  while ((v22 - 48) < 0xA);
  if (v21 != 95 || v20 == 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v24 = strtoll(v20, &__endptr, 0);
  if (!v24)
  {
    goto LABEL_26;
  }

  v66 = 0u;
  memset(v67, 0, sizeof(v67));
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "/.vol/%u/%llu", st_dev, v24);
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  key = self->_key;
  self->_key = v25;

  v27 = 255 - v8;
  snprintf(v10, v27, ".journal");
  v28 = strdup(__dst);
  self->_journal_name = v28;
  v29 = openat(a3, v28, 0);
  if (v29 == -1)
  {
    self->_journal_file_size = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v32 = SKGLogInit();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [CSJournalProcessor setupWithParentFd:? name:?];
      }
    }
  }

  else
  {
    v30 = v29;
    self->_journal_file_size = lseek(v29, 0, 2);
    close(v30);
  }

  *v10 = 0;
  snprintf(v10, v27, ".toc");
  v33 = openat(a3, __dst, 0);
  if (v33 == -1)
  {
    goto LABEL_41;
  }

  v34 = v33;
  self->_toc_file_size = lseek(v33, 0, 2);
  close(v34);
  self->_toc_name = strdup(__dst);
  *v10 = 0;
  snprintf(v10, v27, ".processed");
  v35 = openat(self->_parentFD, __dst, 514, 384);
  if (v35 != -1)
  {
    v36 = v35;
    __buf = 0;
    self->_toc_processed = 0;
    if (pread(v35, &__buf, 8uLL, 0) == 8)
    {
      if (__buf < 0 || __buf > self->_toc_file_size)
      {
        memset(&v43, 0, sizeof(v43));
        v37 = fstat(v36, &v43);
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v38 = SKGLogInit();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218496;
            v48 = __buf;
            v49 = 2048;
            st_size = v43.st_size;
            v51 = 1024;
            v52 = v37;
            _os_log_error_impl(&dword_231B25000, v38, OS_LOG_TYPE_ERROR, "### Invalid processed offset (%lld) read from processed file. DebugInfo : (size = %lld, stat_err = %d)", buf, 0x1Cu);
          }
        }

        self->_toc_processed = 0;
      }

      else
      {
        self->_toc_processed = __buf;
      }
    }

    close(v36);
  }

  v42 = strdup(__dst);
  v31 = 0;
  self->_processed_name = v42;
  *v10 = 0;
LABEL_42:
  v39 = v31 == 0;

  v40 = *MEMORY[0x277D85DE8];
  return v39;
}

- (BOOL)setupFromTopLevelJournalWithParentFd:(int)a3 journalBasePath:(const char *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  if (a3 == -1 || !self->_dev || (journalIno = self->_journalIno) == 0 || (journalNumber = self->_journalNumber) == 0 || (journal_orig_name = self->_journal_orig_name) == 0 || (journal_cookie = self->_journal_cookie) == 0 || !self->_key)
  {
    v17 = -1;
    goto LABEL_15;
  }

  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.journal", journal_orig_name, journal_cookie, journalIno, journalNumber);
  bzero(v24, 0x400uLL);
  bzero(v23, 0x400uLL);
  journalPathWithProtectionClass(a4, self->_indexType, self->_journal_cookie, self->_journal_orig_name, self->_journalNumber, self->_dev, self->_journalIno, v23);
  journalTocPathWithProtectionClass(a4, self->_indexType, self->_journal_cookie, self->_journal_orig_name, self->_journalNumber, self->_dev, v24);
  if ([(CSJournalProcessor *)self linkFileAtPath:v23 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v20 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_23:
    v17 = *__error();
    goto LABEL_15;
  }

  self->_journal_name = strdup(__str);
  v11 = self->_journalIno;
  v10 = self->_journal_orig_name;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.toc", v10, self->_journal_cookie, v11, self->_journalNumber);
  if ([(CSJournalProcessor *)self linkFileAtPath:v24 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v20 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:journalBasePath:];
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  self->_toc_name = strdup(__str);
  v13 = self->_journalIno;
  v12 = self->_journal_orig_name;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.processed", v12, self->_journal_cookie, v13, self->_journalNumber);
  v14 = openat(self->_parentFD, __str, 514, 384);
  if (v14 != -1)
  {
    close(v14);
  }

  v15 = openat(self->_parentFD, self->_journal_name, 0);
  if (v15 == -1)
  {
    self->_journal_file_size = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v21 = SKGLogInit();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:&self->_journal_name journalBasePath:?];
      }
    }
  }

  else
  {
    v16 = v15;
    self->_journal_file_size = lseek(v15, 0, 2);
    close(v16);
  }

  v22 = strdup(__str);
  v17 = 0;
  self->_processed_name = v22;
LABEL_15:
  result = v17 == 0;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)setupFromSpotlightDaemonJournalWithParentFd:(int)a3 spotlightBasePath:(const char *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  if (a3 == -1 || !self->_dev || (journalIno = self->_journalIno) == 0 || (journalNumber = self->_journalNumber) == 0 || (journal_orig_name = self->_journal_orig_name) == 0 || (journal_cookie = self->_journal_cookie) == 0 || !self->_key)
  {
    v17 = -1;
    goto LABEL_15;
  }

  memset(v39, 0, sizeof(v39));
  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  v28 = 0u;
  v27 = 0u;
  v26 = 0u;
  *__str = 0u;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.journal", journal_orig_name, journal_cookie, journalIno, journalNumber);
  bzero(v24, 0x400uLL);
  bzero(v23, 0x400uLL);
  journalPathForSpotlightDaemonWithProtectionClass(a4, self->_indexType, self->_journal_orig_name, self->_journalNumber, v23);
  journalTocPathForSpotlightDaemonWithProtectionClass(a4, self->_indexType, self->_journal_orig_name, self->_journalNumber, v24);
  if ([(CSJournalProcessor *)self linkFileAtPath:v23 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v20 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_23:
    v17 = *__error();
    goto LABEL_15;
  }

  self->_journal_name = strdup(__str);
  v11 = self->_journalIno;
  v10 = self->_journal_orig_name;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.toc", v10, self->_journal_cookie, v11, self->_journalNumber);
  if ([(CSJournalProcessor *)self linkFileAtPath:v24 parentFd:self->_parentFD fileName:__str]== -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v20 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
LABEL_21:
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:journalBasePath:];
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  self->_toc_name = strdup(__str);
  v13 = self->_journalIno;
  v12 = self->_journal_orig_name;
  snprintf(__str, 0xFFuLL, "evt_%s_%s_%llu_%llu.processed", v12, self->_journal_cookie, v13, self->_journalNumber);
  v14 = openat(self->_parentFD, __str, 514, 384);
  if (v14 != -1)
  {
    close(v14);
  }

  v15 = openat(self->_parentFD, self->_journal_name, 0);
  if (v15 == -1)
  {
    self->_journal_file_size = 0;
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v21 = SKGLogInit();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CSJournalProcessor setupFromTopLevelJournalWithParentFd:&self->_journal_name journalBasePath:?];
      }
    }
  }

  else
  {
    v16 = v15;
    self->_journal_file_size = lseek(v15, 0, 2);
    close(v16);
  }

  v22 = strdup(__str);
  v17 = 0;
  self->_processed_name = v22;
LABEL_15:
  result = v17 == 0;
  v19 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)dealloc
{
  toc_name = self->_toc_name;
  if (toc_name)
  {
    free(toc_name);
  }

  journal_name = self->_journal_name;
  if (journal_name)
  {
    free(journal_name);
  }

  journal_orig_name = self->_journal_orig_name;
  if (journal_orig_name)
  {
    free(journal_orig_name);
  }

  journal_cookie = self->_journal_cookie;
  if (journal_cookie)
  {
    free(journal_cookie);
  }

  processed_name = self->_processed_name;
  if (processed_name)
  {
    free(processed_name);
  }

  v8.receiver = self;
  v8.super_class = CSJournalProcessor;
  [(CSJournalProcessor *)&v8 dealloc];
}

- (int)retainTocFd
{
  os_unfair_lock_lock(&self->_lock);
  toc_fd = self->_toc_fd;
  if (toc_fd != -1 || (toc_fd = openat(self->_parentFD, self->_toc_name, 0), self->_toc_fd = toc_fd, toc_fd != -1))
  {
    ++self->_toc_fd_retain_count;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(CSJournalProcessor *)self retainTocFd];
    }
  }

  return toc_fd;
}

- (void)releaseTocFd
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 128);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (int)retainJournalFd
{
  os_unfair_lock_lock(&self->_lock);
  journal_fd = self->_journal_fd;
  if (journal_fd != -1 || (journal_fd = openat(self->_parentFD, self->_journal_name, 0), self->_journal_fd = journal_fd, journal_fd != -1))
  {
    ++self->_journal_fd_retain_count;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(CSJournalProcessor *)self retainJournalFd];
    }
  }

  return journal_fd;
}

- (void)releaseJournalFd
{
  OUTLINED_FUNCTION_31(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retainJournalUsingFd:(int)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (a3 < 0 || self->_journal_fd != -1)
  {
    [CSJournalProcessor retainJournalUsingFd:];
  }

  v5 = self->_journal_fd_retain_count + 1;
  self->_journal_fd = a3;
  self->_journal_fd_retain_count = v5;
  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v6 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(CSJournalProcessor *)self retainJournalFd];
    }
  }
}

- (int)retainProcessedFd
{
  os_unfair_lock_lock(&self->_lock);
  processed_fd = self->_processed_fd;
  if (processed_fd != -1 || (processed_fd = openat(self->_parentFD, self->_processed_name, 514, 384), self->_processed_fd = processed_fd, processed_fd != -1))
  {
    ++self->_processed_fd_retain_count;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [(CSJournalProcessor *)self retainProcessedFd];
    }
  }

  return processed_fd;
}

- (void)releaseProcessedFd
{
  OUTLINED_FUNCTION_31(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isComplete
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_err || self->_complete && self->_toc_processed >= self->_toc_complete_size;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)markComplete:(int64_t)a3 processingDone:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!a3)
  {
    v7 = [(CSJournalProcessor *)self retainTocFd];
    if (v7 == -1)
    {
      v5 = 0;
    }

    else
    {
      v8 = lseek(v7, 0, 2);
      v5 = v8 & ~(v8 >> 63);
      [(CSJournalProcessor *)self releaseTocFd];
    }
  }

  os_unfair_lock_lock(&self->_lock);
  self->_toc_complete_size = v5;
  self->_complete = 1;
  self->_processingDone = v4;
  os_unfair_lock_unlock(&self->_lock);
  if (v4 && SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v9 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CSJournalProcessor markComplete:v9 processingDone:?];
    }
  }
}

- (void)warmup
{
  v4 = *a1;
  v5 = *a2;
  *buf = 67109376;
  *(buf + 1) = v4;
  *(buf + 4) = 1024;
  *(buf + 10) = v5;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### error %d getting fullpath of parentfd %d", buf, 0xEu);
}

void __28__CSJournalProcessor_warmup__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 < 0 || v5)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v7 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        v10 = 138412802;
        v11 = v6;
        v12 = 1024;
        v13 = a2;
        v14 = 2112;
        v15 = v9;
        _os_log_error_impl(&dword_231B25000, v7, OS_LOG_TYPE_ERROR, "### error %@ getting fd (%d) for journal file (%@) from searchd", &v10, 0x1Cu);
      }
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }

  dispatch_group_leave(*(a1 + 40));

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cooldown
{
  if (self->_warmedup)
  {
    self->_warmedup = 0;
    [(CSJournalProcessor *)self releaseTocFd];
    [(CSJournalProcessor *)self releaseJournalFd];

    [(CSJournalProcessor *)self releaseProcessedFd];
  }
}

uint64_t __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_300(uint64_t a1)
{
  v2 = +[CSEventListenerTasksManager sharedInstance];
  LODWORD(a1) = [v2 taskAllowedForName:*(a1 + 32) eventType:*(a1 + 40) indexType:*(a1 + 44)];

  return a1 ^ 1;
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = +[CSEventListenerTasksManager sharedInstance];
  [v6 endTaskForIndexType:*(a1 + 80) delegate:*(a1 + 64)];

  dispatch_group_leave(*(a1 + 32));
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306_cold_1((a1 + 64), a1);
    }
  }

  if (v5 || (+[CSEventListenerTasksManager sharedInstance](CSEventListenerTasksManager, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 taskAllowedForName:*(a1 + 48) eventType:*(a1 + 84) indexType:*(a1 + 80)], v8, (v9 & 1) == 0))
  {
    v19 = *(a1 + 72) - 32;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v20 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(a1 + 64);
        v22 = *(a1 + 40);
        v27 = 138413058;
        v28 = v21;
        v29 = 2048;
        v30 = v19;
        v31 = 2112;
        v32 = v22;
        v33 = 2112;
        v34 = v5;
        _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_INFO, "### Not processed journal entry %@ at offset = %llu for %@ because of err = %@ or task cancelled", &v27, 0x2Au);
      }
    }

    v23 = *(a1 + 48);
    v25 = *(a1 + 80);
    v24 = *(a1 + 84);
    v18 = *(*(a1 + 56) + 16);
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v10 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 64);
        v12 = *(a1 + 72);
        v13 = *(a1 + 40);
        v27 = 138412802;
        v28 = v11;
        v29 = 2048;
        v30 = v12;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### Processed journal entry %@ at offset %llu for %@", &v27, 0x20u);
      }
    }

    v14 = *(a1 + 48);
    v16 = *(a1 + 80);
    v15 = *(a1 + 84);
    v17 = *(a1 + 72);
    v18 = *(*(a1 + 56) + 16);
  }

  v18();

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_308(uint64_t a1)
{
  v2 = +[CSEventListenerTasksManager sharedInstance];
  LODWORD(a1) = [v2 taskAllowedForName:*(a1 + 32) eventType:*(a1 + 40) indexType:*(a1 + 44)];

  return a1 ^ 1;
}

- (BOOL)processNext:(id)a3 completion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_active)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v8 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = self;
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_INFO, "### ignored journal - already active - %@", buf, 0xCu);
      }
    }

LABEL_28:
    v16 = 1;
    goto LABEL_29;
  }

  v9 = [(CSJournalProcessor *)self retainTocFd];
  if (v9 == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v15 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = self;
        _os_log_impl(&dword_231B25000, v15, OS_LOG_TYPE_INFO, "### ignored journal - failed retainTocFd - %@", buf, 0xCu);
      }
    }
  }

  else
  {
    toc_processed = self->_toc_processed;
    toc_file_size = self->_toc_file_size;
    if (toc_file_size <= toc_processed)
    {
      v12 = lseek(v9, 0, 2);
      toc_file_size = v12;
      if (v12 >= 1)
      {
        self->_toc_file_size = v12;
        if (v12 < toc_processed)
        {
          self->_toc_processed = v12;
          toc_processed = v12;
        }
      }
    }

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v13 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v27 = toc_processed;
        v28 = 2048;
        v29 = toc_file_size;
        v30 = 2112;
        v31 = self;
        _os_log_debug_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEBUG, "### processing at: %lld file size: %lld - %@", buf, 0x20u);
      }
    }

    if (toc_processed != toc_file_size)
    {
      self->_active = 1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __45__CSJournalProcessor_processNext_completion___block_invoke;
      aBlock[3] = &unk_27893CEB8;
      aBlock[4] = self;
      v25 = toc_processed;
      v24 = v7;
      v17 = _Block_copy(aBlock);
      v18 = +[CSEventListenerTasksManager sharedInstance];
      v19 = [v18 turboMode];

      if (v19)
      {
        v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v17);

        v17 = v20;
      }

      dispatch_async(v6, v17);

      goto LABEL_28;
    }

    [(CSJournalProcessor *)self releaseTocFd];
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v14 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134218498;
        v27 = toc_file_size;
        v28 = 2048;
        v29 = toc_file_size;
        v30 = 2112;
        v31 = self;
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_INFO, "### ignored journal at: %lld file size: %lld - startOffset == fileSize - %@. We're probably at the end of the file.", buf, 0x20u);
      }
    }
  }

  v16 = 0;
LABEL_29:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

void __45__CSJournalProcessor_processNext_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__CSJournalProcessor_processNext_completion___block_invoke_2;
  v3[3] = &unk_27893D070;
  v5 = v2;
  v3[4] = v1;
  v4 = *(a1 + 40);
  [v1 _processOffsetAtOffset:v2 completion:v3];
}

void __45__CSJournalProcessor_processNext_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v24 = a6;
  if (a5 || *(a1 + 48) == a6)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v10 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 48);
        v23 = *(a1 + 32);
        *buf = 67109890;
        *v26 = a5;
        *&v26[4] = 2048;
        *&v26[6] = v22;
        *&v26[14] = 2048;
        *&v26[16] = a6;
        *&v26[24] = 2112;
        *&v26[26] = v23;
        _os_log_error_impl(&dword_231B25000, v10, OS_LOG_TYPE_ERROR, "### processed error: %d %lld to %lld - %@", buf, 0x26u);
      }
    }

    v11 = *(a1 + 32);
    if (a5 == 22)
    {
      if (v11)
      {
        *(v11 + 60) = 22;
        v12 = *(a1 + 32);
      }

      else
      {
        v12 = 0;
      }

      [v12 markComplete:*(a1 + 48) processingDone:1];
    }

    else
    {
      if (v11)
      {
        ++*(v11 + 168);
      }

      if (SKGLogGetCurrentLoggingLevel() >= 5)
      {
        v13 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = *(a1 + 32);
          if (v14)
          {
            v14 = *(v14 + 168);
          }

          v15 = *(a1 + 48);
          *buf = 134218496;
          *v26 = a6;
          *&v26[8] = 2048;
          *&v26[10] = v14;
          *&v26[18] = 2048;
          *&v26[20] = v15;
          _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_INFO, "### Will retry the offset %llu, processing count so far = %llu, startOffset = %llu", buf, 0x20u);
        }
      }
    }
  }

  else
  {
    __45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_1(a1, (a1 + 48), a6);
  }

  v17 = a1 + 32;
  v16 = *(a1 + 32);
  if (!v16)
  {
    if (*(a1 + 48) >= a6)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  v18 = *(v16 + 168);
  if (*(a1 + 48) < a6 || v18 > 1)
  {
    if (v18 < 2)
    {
      goto LABEL_30;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v20 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v26 = a6;
        _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_INFO, "### skip offset %llu because JournalProcessor have retried enough to process its journal entry", buf, 0xCu);
      }
    }

    a6 += 32;
    v24 = a6;
    if (*v17)
    {
      *(*v17 + 168) = 0;
      v16 = *v17;
      if (*v17)
      {
LABEL_30:
        *(v16 + 152) = a6;
        v21 = *v17;
LABEL_31:
        __45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_2(&v24, (a1 + 32), v21);
        goto LABEL_22;
      }
    }

LABEL_34:
    v21 = 0;
    goto LABEL_31;
  }

LABEL_22:
  [*(a1 + 32) releaseTocFd];
  [*(a1 + 32) setActive:0];
  (*(*(a1 + 40) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (void)deleteFiles
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = unlinkat(self->_parentFD, self->_journal_name, 2048);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v4 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      if (v3 == -1)
      {
        v3 = *__error();
      }

      journal_name = self->_journal_name;
      v13 = 67109634;
      v14 = v3;
      v15 = 2112;
      v16 = self;
      v17 = 2080;
      v18 = journal_name;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_INFO, "### unlink (%d) %@ - %s ", &v13, 0x1Cu);
    }
  }

  v6 = unlinkat(self->_parentFD, self->_toc_name, 2048);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      if (v6 == -1)
      {
        v6 = *__error();
      }

      toc_name = self->_toc_name;
      v13 = 67109634;
      v14 = v6;
      v15 = 2112;
      v16 = self;
      v17 = 2080;
      v18 = toc_name;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_INFO, "### unlink (%d) %@ - %s ", &v13, 0x1Cu);
    }
  }

  v9 = unlinkat(self->_parentFD, self->_processed_name, 2048);
  if (SKGLogGetCurrentLoggingLevel() >= 5)
  {
    v10 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      if (v9 == -1)
      {
        v9 = *__error();
      }

      processed_name = self->_processed_name;
      v13 = 67109634;
      v14 = v9;
      v15 = 2112;
      v16 = self;
      v17 = 2080;
      v18 = processed_name;
      _os_log_impl(&dword_231B25000, v10, OS_LOG_TYPE_INFO, "### unlink (%d) %@ - %s ", &v13, 0x1Cu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (int)linkFileAtPath:(char *)a3 parentFd:(int)a4 fileName:(const char *)a5
{
  v30 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_21;
  }

  result = -1;
  if (a5 && a4 != -1 && *a3 && *a5)
  {
    memset(&v22, 0, sizeof(v22));
    if (stat(a3, &v22) == -1)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v13 = SKGLogUpdaterInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CSJournalProcessor linkFileAtPath:parentFd:fileName:];
        }

        goto LABEL_20;
      }
    }

    else
    {
      st_dev = v22.st_dev;
      st_ino = v22.st_ino;
      bzero(__s, 0x400uLL);
      if (fcntl(a4, 50, __s) == -1 || (v12 = strlen(__s)) == 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v13 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [CSJournalProcessor linkFileAtPath:parentFd:fileName:];
          }

          goto LABEL_20;
        }
      }

      else
      {
        snprintf(&__s[v12], 1024 - v12, "/%s", a5);
        if (stat(__s, &v22) == -1)
        {
          v15 = link(a3, __s);
          CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
          if (v15 == -1)
          {
            if (CurrentLoggingLevel < 2)
            {
              goto LABEL_21;
            }

            v13 = SKGLogUpdaterInit();
            if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_20;
            }

            v21 = *__error();
            *buf = 138413058;
            v24 = self;
            v25 = 1024;
            *v26 = v21;
            *&v26[4] = 2080;
            *&v26[6] = a3;
            v27 = 2080;
            *v28 = __s;
            v18 = "### %@ error %d creating hardlink %s to %s";
            v19 = v13;
            v20 = 38;
            goto LABEL_37;
          }

          if (CurrentLoggingLevel >= 5)
          {
            v17 = SKGLogUpdaterInit();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v24 = a3;
              v25 = 2080;
              *v26 = __s;
              _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_INFO, "### created hardlink %s to %s", buf, 0x16u);
            }
          }
        }

        if (stat(__s, &v22) == -1)
        {
          if (SKGLogGetCurrentLoggingLevel() < 2)
          {
            goto LABEL_21;
          }

          v13 = SKGLogUpdaterInit();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            [CSJournalProcessor linkFileAtPath:parentFd:fileName:];
          }

          goto LABEL_20;
        }

        if (v22.st_dev == st_dev && v22.st_ino == st_ino)
        {
          result = 0;
          goto LABEL_22;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v13 = SKGLogUpdaterInit();
          if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
LABEL_20:

            goto LABEL_21;
          }

          *buf = 138413314;
          v24 = self;
          v25 = 1024;
          *v26 = st_dev;
          *&v26[4] = 2048;
          *&v26[6] = st_ino;
          v27 = 1024;
          *v28 = v22.st_dev;
          *&v28[4] = 2048;
          *&v28[6] = v22.st_ino;
          v18 = "### %@ error %d:%lld != %d:%lld";
          v19 = v13;
          v20 = 44;
LABEL_37:
          _os_log_error_impl(&dword_231B25000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
          goto LABEL_20;
        }
      }
    }

LABEL_21:
    result = -1;
  }

LABEL_22:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)setManagedJournal:(uint64_t)result
{
  if (result)
  {
    *(result + 13) = a2;
  }

  return result;
}

- (uint64_t)setHomePathHash:(uint64_t)result
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

- (void)setItemHandler:(void *)a1
{
  if (a1)
  {
    objc_setProperty_nonatomic_copy(a1, newValue, newValue, 184);
  }
}

- (uint64_t)journal_file_size
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

- (uint64_t)journalNumber
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (uint64_t)journal_cookie
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)toc_processed
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

- (uint64_t)toc_complete_size
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

- (uint64_t)setJournal_file_size:(uint64_t)result
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

- (void)_processOffsetAtOffset:(int64_t)a3 completion:(id)a4
{
  v170 = *MEMORY[0x277D85DE8];
  v6 = a4;
  eventListener = self->_eventListener;
  if (eventListener)
  {
    eventListener = eventListener->_delegate;
  }

  v123 = eventListener;
  v8 = [(CSEventListener *)eventListener taskName];
  v9 = [(CSEventListener *)v123 eventType];
  v10 = self->_eventListener;
  if (v10)
  {
    LODWORD(v10) = (LOBYTE(v10->_eventFlags) >> 5) & 1;
  }

  v122 = v10;
  indexType = self->_indexType;
  v11 = [(CSJournalProcessor *)self retainTocFd];
  if (v11 == -1)
  {
    OUTLINED_FUNCTION_4_0();
    v17 = v16;
    v18(v6);
    v19 = v6;
    v20 = v17;
    goto LABEL_16;
  }

  v125 = v9;
  v127 = v8;
  v12 = [(CSJournalProcessor *)self retainJournalFd];
  if (v12 == -1)
  {
    [(CSJournalProcessor *)self releaseTocFd];
    OUTLINED_FUNCTION_4_0();
    v21 = OUTLINED_FUNCTION_14();
    v22(v21);
    goto LABEL_15;
  }

  bzero(&v164, 0x90uLL);
  v121 = v11;
  if (fstat(v11, &v164))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v13 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v13))
      {
        OUTLINED_FUNCTION_1_4(1.5047e-36);
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(v82, v83, v84, v85, v86, 0x12u);
      }
    }

LABEL_12:
    [(CSJournalProcessor *)self releaseTocFd];
    [(CSJournalProcessor *)self releaseJournalFd];
    OUTLINED_FUNCTION_4_0();
    v14 = OUTLINED_FUNCTION_14();
    v15(v14);
    goto LABEL_15;
  }

  v24 = (v164.st_size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
  v25 = mmap(0, v24, 1, 1, v11, 0);
  if (v25 == -1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v74 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v74))
      {
        OUTLINED_FUNCTION_1_4(1.5047e-36);
        OUTLINED_FUNCTION_8();
        _os_log_error_impl(v88, v89, v90, v91, v92, 0x12u);
      }
    }

    goto LABEL_12;
  }

  v26 = self->_eventListener;
  if (v26)
  {
    excludedBundleHashes = v26->_excludedBundleHashes;
    v26 = v26->_includedBundleHashes;
    v28 = excludedBundleHashes;
  }

  else
  {
    v28 = 0;
  }

  *&v119 = v26;
  *(&v119 + 1) = v28;
  makeThreadId();
  v118 = v12;
  v29 = v24;
  v30 = v25;
  while (2)
  {
    v31 = a3;
    v124 = v6;
    if (!v6)
    {
      v25 = 0;
      v77 = 0;
      v78 = v30;
      goto LABEL_97;
    }

    v32 = v30;
    v33 = v29;
    while (1)
    {
      if (v31 < 0)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v75 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_21(v75))
          {
            v169.st_dev = 134218242;
            *&v169.st_mode = v31;
            WORD2(v169.st_ino) = 2112;
            *(&v169.st_ino + 6) = self;
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v96, v97, v98, v99, v100, 0x16u);
          }

LABEL_94:
        }

LABEL_95:
        v77 = 0;
        v78 = v32;
        goto LABEL_96;
      }

      v34 = v31 + 32;
      if (v31 + 32 <= v164.st_size)
      {
        st_size = v164.st_size;
        goto LABEL_31;
      }

      if (fstat(v121, &v164))
      {
        if (SKGLogGetCurrentLoggingLevel() >= 2)
        {
          v79 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_21(v79))
          {
            OUTLINED_FUNCTION_1_4(1.5047e-36);
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v106, v107, v108, v109, v110, 0x12u);
          }

          goto LABEL_94;
        }

        goto LABEL_95;
      }

      if (v164.st_size < v34)
      {
        if (SKGLogGetCurrentLoggingLevel() >= 7)
        {
          v80 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_34(v80))
          {
            v169.st_dev = 138412546;
            *&v169.st_mode = self;
            WORD2(v169.st_ino) = 2048;
            *(&v169.st_ino + 6) = v31;
            OUTLINED_FUNCTION_26(&dword_231B25000, v25, v81, "### end of file %@ - %lld", &v169);
          }

          goto LABEL_94;
        }

        goto LABEL_95;
      }

      st_size = v164.st_size;
      if (((v164.st_size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0]) > v33)
      {
        munmap(v32, v33);
        v33 = (v164.st_size + *MEMORY[0x277D85FA0] - 1) & -*MEMORY[0x277D85FA0];
        v36 = mmap(0, v33, 1, 1, v121, 0);
        if (v36 == -1)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 2)
          {
            v87 = SKGLogUpdaterInit();
            if (OUTLINED_FUNCTION_21(v87))
            {
              OUTLINED_FUNCTION_1_4(1.5047e-36);
              OUTLINED_FUNCTION_8();
              _os_log_error_impl(v111, v112, v113, v114, v115, 0x12u);
            }
          }

          v77 = 0;
          v25 = v124;
          goto LABEL_98;
        }

        v32 = v36;
        st_size = v164.st_size;
      }

LABEL_31:
      v163 = 0;
      v120 = v32;
      v162[0] = v32;
      v162[1] = st_size;
      v117 = v33;
      v162[2] = 0;
      v160 = 1;
      v161 = v162;
      atomic_fetch_add_explicit(MEMORY[0x277D294F0], 1u, memory_order_relaxed);
      *v167 = 0;
      *v165 = 0;
      v159 = 0;
      v37 = *(MEMORY[0x277D29500] + 16);
      *&v169.st_dev = *MEMORY[0x277D29500];
      *&v169.st_uid = v37;
      v38 = *(MEMORY[0x277D29500] + 48);
      v169.st_atimespec = *(MEMORY[0x277D29500] + 32);
      v169.st_mtimespec = v38;
      v39 = setThreadIdAndInfo();
      *v165 = HIDWORD(v39);
      *v167 = v39;
      v159 = __PAIR64__(v40, v41);
      v42 = *(MEMORY[0x277D29508] + 72 * v39 + 8) + 320 * HIDWORD(v39);
      *(v42 + 216) = 0;
      v43 = *(v42 + 312);
      v44 = *(v42 + 224);
      if (v44)
      {
        v44(*(v42 + 288));
      }

      v169.st_dev = *v167;
      v158 = *v165;
      v157 = v159;
      if (_setjmp(v42))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231B25000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Caught mach exception", buf, 2u);
        }

        *(v42 + 312) = v43;
        CIOnThreadCleanUpReset();
        OUTLINED_FUNCTION_30();
        dropThreadId();
        OUTLINED_FUNCTION_30();
        CICleanUpReset();
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = 0;
      }

      else
      {
        v50 = *&v120[v31];
        v51 = *&v120[v31 + 8];
        v52 = *&v120[v31 + 16];
        v54 = *&v120[v31 + 24];
        v53 = *&v120[v31 + 28];
        v163 = 1;
        v55 = *(MEMORY[0x277D29508] + 72 * OUTLINED_FUNCTION_30() + 8) + 320 * v158;
        *(v55 + 312) = v43;
        v56 = *(v55 + 232);
        if (v56)
        {
          v56(*(v55 + 288));
        }

        OUTLINED_FUNCTION_30();
        dropThreadId();
        v49 = v50;
        v57 = v51;
        v45 = v52;
        v47 = v54;
        v46 = v53;
        v48 = v57;
      }

      v25 = v163;
      CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
      if ((v25 & 1) == 0)
      {
        if (CurrentLoggingLevel >= 2)
        {
          v76 = SKGLogUpdaterInit();
          if (OUTLINED_FUNCTION_21(v76))
          {
            OUTLINED_FUNCTION_1_4(1.5047e-36);
            OUTLINED_FUNCTION_8();
            _os_log_error_impl(v101, v102, v103, v104, v105, 0x12u);
          }
        }

        v77 = 0;
        goto LABEL_86;
      }

      if (CurrentLoggingLevel >= 7)
      {
        v59 = SKGLogUpdaterInit();
        if (OUTLINED_FUNCTION_34(v59))
        {
          v169.st_dev = 134219008;
          *&v169.st_mode = v49;
          WORD2(v169.st_ino) = 2048;
          *(&v169.st_ino + 6) = v31 + 32;
          HIWORD(v169.st_gid) = 2048;
          *&v169.st_rdev = v48;
          LOWORD(v169.st_atimespec.tv_sec) = 2048;
          *(&v169.st_atimespec.tv_sec + 2) = v45;
          WORD1(v169.st_atimespec.tv_nsec) = 1024;
          HIDWORD(v169.st_atimespec.tv_nsec) = v46;
          _os_log_debug_impl(&dword_231B25000, v25, OS_LOG_TYPE_DEBUG, "### read toc sn: %llu toc_offset: 0x%llx, offset: 0x%llx size: %llu flags: %u)", &v169, 0x30u);
        }
      }

      v60 = v122;
      if ((v46 & 4) != 0)
      {
        v60 = 0;
      }

      if (v60)
      {
        goto LABEL_54;
      }

      if (v119 == 0)
      {
        goto LABEL_57;
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v47];
      if ((!v119 || [v119 containsObject:v25]) && (!*(&v119 + 1) || !objc_msgSend(*(&v119 + 1), "containsObject:", v25)))
      {
        break;
      }

LABEL_54:
      v32 = v120;
      v31 += 32;
      v33 = v117;
      if (!v124)
      {
        v25 = 0;
        v77 = 0;
        v31 = v34;
        v78 = v120;
        goto LABEL_97;
      }
    }

LABEL_57:
    bzero(&v169, 0x90uLL);
    if (fstat(v118, &v169) == -1)
    {
      v77 = *__error();
      if (SKGLogGetCurrentLoggingLevel() < 2)
      {
LABEL_86:
        v78 = v120;
LABEL_96:
        v25 = v124;
        goto LABEL_97;
      }

      v93 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v93))
      {
        *v167 = 67109378;
        *&v167[4] = v77;
        *&v167[8] = 2112;
        *&v167[10] = self;
        _os_log_error_impl(&dword_231B25000, &v169, OS_LOG_TYPE_ERROR, "### journal stat err %d - %@", v167, 0x12u);
      }

      v94 = v77;
LABEL_115:

      v77 = v94;
      goto LABEL_86;
    }

    if (v169.st_size < (v48 + v45))
    {
      if (SKGLogGetCurrentLoggingLevel() < 2)
      {
        v77 = 22;
        goto LABEL_86;
      }

      v95 = SKGLogUpdaterInit();
      if (OUTLINED_FUNCTION_21(v95))
      {
        *v167 = 134218498;
        *&v167[4] = v169.st_size;
        *&v167[12] = 2048;
        *&v167[14] = v48 + v45;
        *&v167[22] = 2112;
        v168 = self;
        _os_log_error_impl(&dword_231B25000, &v169, OS_LOG_TYPE_ERROR, "### journal journal size %lld expected %llu - %@", v167, 0x20u);
      }

      v94 = 22;
      goto LABEL_115;
    }

    *v167 = 0;
    *&v167[8] = v167;
    *&v167[16] = 0x2020000000;
    LOBYTE(v168) = 0;
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke;
    v142[3] = &unk_27893CFF8;
    v147 = v48;
    v148 = v45;
    v149 = v47;
    v150 = v46;
    v153 = v118;
    v154 = indexType;
    v146 = v49;
    v142[4] = self;
    v151 = v123;
    v61 = v127;
    v155 = v125;
    v143 = v61;
    v152 = v31 + 32;
    v116 = v124;
    v144 = v116;
    v145 = v167;
    v128[0] = MEMORY[0x277D85DD0];
    v128[1] = 3221225472;
    v128[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_304;
    v128[3] = &unk_27893D048;
    v133 = v48;
    v134 = v45;
    v135 = v47;
    v136 = v46;
    v139 = v118;
    v140 = indexType;
    v132 = v49;
    v128[4] = self;
    v137 = v123;
    v62 = v61;
    v141 = v125;
    v129 = v62;
    v138 = v31 + 32;
    v63 = v116;
    v130 = v63;
    v131 = v167;
    [SKGJournalReader processJournalRecordWithFd:v118 atOffset:v48 withSize:v45 addBlock:v142 delBlock:v128];
    v64 = v63;
    if (*(*&v167[8] + 24))
    {
      v25 = 0;
      v65 = v64;
      v66 = 0;
      goto LABEL_61;
    }

    v69 = +[CSEventListenerTasksManager sharedInstance];
    v70 = [v69 taskAllowedForName:v62 eventType:v125 indexType:indexType];

    if (v70)
    {
      v68 = 0;
      goto LABEL_68;
    }

    if (SKGLogGetCurrentLoggingLevel() < 5)
    {
      v68 = 1;
LABEL_68:
      v25 = v64;
    }

    else
    {
      v65 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
      {
        v71 = [(CSEventListener *)v123 taskName];
        v72 = [v71 UTF8String];
        *v165 = 136315138;
        v166 = v72;
        _os_log_impl(&dword_231B25000, v65, OS_LOG_TYPE_INFO, "### Not processing next journal entry for %s because task is cancelled", v165, 0xCu);
      }

      v66 = 1;
      v25 = v64;
LABEL_61:
      v67 = v66;

      v68 = v67;
    }

    v73 = v68;

    _Block_object_dispose(v167, 8);
    v29 = v117;
    a3 = v34;
    v30 = v120;
    v6 = v25;
    if ((v73 & 1) == 0)
    {
      continue;
    }

    break;
  }

  v77 = 0;
  v31 = v34;
  v78 = v120;
LABEL_97:
  munmap(v78, v164.st_size);
LABEL_98:
  [(CSJournalProcessor *)self releaseJournalFd];
  [(CSJournalProcessor *)self releaseTocFd];
  if (v25)
  {
    (*(v25 + 16))(v25, v127, v125, indexType, v77, v31);
    v6 = v25;
  }

  else
  {
    v6 = 0;
  }

LABEL_15:
  v19 = v6;
  v20 = v127;
LABEL_16:

  v23 = *MEMORY[0x277D85DE8];
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke(uint64_t a1, unint64_t a2, const char *a3, __int128 *a4, __int128 *a5, NSObject *a6)
{
  v60 = *MEMORY[0x277D85DE8];
  v12 = objc_alloc_init(CSEventListenerDonation);
  if (v12)
  {
    OUTLINED_FUNCTION_15();
    v12->_serialNumber = a2;
    v12->_bundleHash = *(a1 + 88);
    v12->_bundle = a3;
    v13 = *a4;
    v12->_itemsObj.reference = *(a4 + 2);
    *&v12->_itemsObj.containerBytes = v13;
    v14 = *a5;
    v12->_contentDictObj.reference = *(a5 + 2);
    *&v12->_contentDictObj.containerBytes = v14;
    v15 = *&a6->isa;
    v12->_htmlDictObj.reference = a6[2].isa;
    *&v12->_htmlDictObj.containerBytes = v15;
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = *(v16 + 112);
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = 0;
  if (v12)
  {
LABEL_5:
    v12->_journalCookie = v17;
    v16 = *(a1 + 32);
  }

LABEL_6:
  if (v16)
  {
    v18 = *(v16 + 13);
    if (!v12)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v18 = 0;
  if (v12)
  {
LABEL_8:
    v12->_isManaged = v18 & 1;
    v16 = *(a1 + 32);
  }

LABEL_9:
  if (v16)
  {
    LODWORD(v16) = *(v16 + 64);
  }

  if (v12)
  {
    v12->_homePathHash = v16;
  }

  v19 = dispatch_group_create();
  dispatch_group_enter(v19);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v20 = SKGLogUpdaterInit();
    if (OUTLINED_FUNCTION_34(v20))
    {
      if (v12)
      {
        bundle = v12->_bundle;
      }

      OUTLINED_FUNCTION_32(*(a1 + 96));
      v57 = v12;
      v58 = 2080;
      v59 = v39;
      _os_log_debug_impl(&dword_231B25000, a6, OS_LOG_TYPE_DEBUG, "**** enter %@ for %@ / %s", buf, 0x20u);
    }
  }

  v21 = +[CSEventListenerTasksManager sharedInstance];
  v22 = [v21 turboMode];

  v23 = +[CSEventListenerTasksManager sharedInstance];
  OUTLINED_FUNCTION_29();
  [v24 startTaskForIndexType:? delegate:?];

  v25 = *(a1 + 96);
  OUTLINED_FUNCTION_9();
  v46 = 3221225472;
  v47 = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_297;
  v48 = &unk_27893CFA8;
  v49 = *(a1 + 32);
  v26 = v12;
  v55 = *(a1 + 116);
  v27 = *(a1 + 96);
  v50 = v26;
  v54 = v27;
  v28 = v19;
  v51 = v28;
  v29 = *(a1 + 40);
  v53 = OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_10();
  v41[1] = 3221225472;
  v41[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_300;
  v41[3] = &unk_27893CFD0;
  v42 = *(a1 + 40);
  v30 = *(a1 + 116);
  v43 = *(a1 + 120);
  v44 = v30;
  if ([v25 handleDonation:v26 turboEnabled:v22 completionHandler:v45 cancelBlock:v41])
  {
    OUTLINED_FUNCTION_33();
    dispatch_group_wait(v28, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (v12)
    {
      indexType = v26->_indexType;
      journalCookie = v26->_journalCookie;
      serialNumber = v26->_serialNumber;
    }

    else
    {
      journalCookie = 0;
      indexType = 0;
      serialNumber = 0;
    }

    [*(a1 + 32) writeUpdaterProgressToStoreWithIndexType:indexType UUID:journalCookie serialNumber:serialNumber error:0];
    v34 = +[CSEventListenerTasksManager sharedInstance];
    OUTLINED_FUNCTION_29();
    [v35 endTaskForIndexType:? delegate:?];

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v36 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_32(*(a1 + 96));
        v57 = v26;
        OUTLINED_FUNCTION_26(&dword_231B25000, v36, v40, "exit %@ for %@", buf);
      }
    }

    dispatch_group_leave(v28);
  }

  v37 = *MEMORY[0x277D85DE8];
}

- (uint64_t)managedJournal
{
  if (a1)
  {
    return OUTLINED_FUNCTION_11(*(a1 + 13));
  }

  else
  {
    return OUTLINED_FUNCTION_11(0);
  }
}

- (uint64_t)homePathHash
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_297(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 64);
    v9 = *(v6 + 48);
  }

  else
  {
    v8 = 0;
    v7 = 0;
    v9 = 0;
  }

  [*(a1 + 32) writeUpdaterProgressToStoreWithIndexType:v7 UUID:v8 serialNumber:v9 error:v5];
  v10 = +[CSEventListenerTasksManager sharedInstance];
  [v10 endTaskForIndexType:*(a1 + 88) delegate:*(a1 + 72)];

  dispatch_group_leave(*(a1 + 48));
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v11 = SKGLogUpdaterInit();
    if (OUTLINED_FUNCTION_34(v11))
    {
      v34 = *(a1 + 72);
      v35 = *(a1 + 40);
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_26(&dword_231B25000, v10, v36, "exit async %@ for %@", v37);
    }
  }

  if (v5 || (+[CSEventListenerTasksManager sharedInstance](CSEventListenerTasksManager, "sharedInstance"), v12 = objc_claimAutoreleasedReturnValue(), v13 = [v12 taskAllowedForName:*(a1 + 56) eventType:*(a1 + 92) indexType:*(a1 + 88)], v12, (v13 & 1) == 0))
  {
    v25 = *(a1 + 80) - 32;
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v26 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = *(a1 + 72);
        v28 = *(a1 + 40);
        OUTLINED_FUNCTION_13();
        v38 = v25;
        v39 = 2112;
        v40 = v29;
        v41 = 2112;
        v42 = v5;
        _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_INFO, "### Not processed journal entry %@ at offset = %llu for %@ because of err = %@ or task cancelled", v37, 0x2Au);
      }
    }

    v30 = *(a1 + 56);
    v32 = *(a1 + 88);
    v31 = *(a1 + 92);
    v24 = *(*(a1 + 64) + 16);
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 5)
    {
      v14 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 72);
        v16 = *(a1 + 80);
        v17 = *(a1 + 40);
        OUTLINED_FUNCTION_13();
        v38 = v18;
        v39 = 2112;
        v40 = v19;
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_INFO, "### Processed journal entry %@ at offset %llu for %@", v37, 0x20u);
      }
    }

    v20 = *(a1 + 56);
    v22 = *(a1 + 88);
    v21 = *(a1 + 92);
    v23 = *(a1 + 80);
    v24 = *(*(a1 + 64) + 16);
  }

  v24();

  v33 = *MEMORY[0x277D85DE8];
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_304(uint64_t a1, unint64_t a2, const char *a3, __int128 *a4, BOOL a5)
{
  v47 = *MEMORY[0x277D85DE8];
  v10 = objc_alloc_init(CSEventListenerDeletion);
  if (v10)
  {
    OUTLINED_FUNCTION_15();
    v10->_serialNumber = a2;
    v10->_bundleHash = *(a1 + 88);
    v10->_bundle = a3;
    v11 = *a4;
    v10->_itemsObj.reference = *(a4 + 2);
    *&v10->_itemsObj.containerBytes = v11;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = *(v12 + 112);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = 0;
  if (v10)
  {
LABEL_5:
    v10->_journalCookie = v13;
    v10->_isDict = a5;
    v12 = *(a1 + 32);
  }

LABEL_6:
  if (v12)
  {
    v14 = *(v12 + 13);
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = 0;
  if (v10)
  {
LABEL_8:
    v10->_isManaged = v14 & 1;
    v12 = *(a1 + 32);
  }

LABEL_9:
  if (v12)
  {
    LODWORD(v12) = *(v12 + 64);
  }

  if (v10)
  {
    v10->_homePathHash = v12;
  }

  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v16 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (v10)
      {
        bundle = v10->_bundle;
      }

      OUTLINED_FUNCTION_24(*(a1 + 96), 5.7781e-34);
      v45 = 2080;
      v46 = v31;
      _os_log_debug_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEBUG, "**** enter %@ for %@ / %s", buf, 0x20u);
    }
  }

  v17 = +[CSEventListenerTasksManager sharedInstance];
  v18 = [v17 turboMode];

  v19 = +[CSEventListenerTasksManager sharedInstance];
  OUTLINED_FUNCTION_29();
  [v20 startTaskForIndexType:? delegate:?];

  v21 = *(a1 + 96);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306;
  v37[3] = &unk_27893D020;
  v43 = *(a1 + 116);
  v42 = v21;
  v22 = v15;
  v38 = v22;
  v23 = v10;
  v39 = v23;
  v24 = *(a1 + 40);
  v41 = OUTLINED_FUNCTION_20();
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_308;
  v33[3] = &unk_27893CFD0;
  v34 = *(a1 + 40);
  v25 = *(a1 + 116);
  v35 = *(a1 + 120);
  v36 = v25;
  if ([v21 handleDeletion:v23 turboEnabled:v18 completionHandler:v37 cancelBlock:v33])
  {
    OUTLINED_FUNCTION_33();
    dispatch_group_wait(v22, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v26 = +[CSEventListenerTasksManager sharedInstance];
    OUTLINED_FUNCTION_29();
    [v27 endTaskForIndexType:? delegate:?];

    if (SKGLogGetCurrentLoggingLevel() >= 7)
    {
      v28 = SKGLogUpdaterInit();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_24(*(a1 + 96), 5.778e-34);
        OUTLINED_FUNCTION_26(&dword_231B25000, v28, v32, "exit %@ for %@", buf);
      }
    }

    dispatch_group_leave(v22);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setErr:(uint64_t)result
{
  if (result)
  {
    *(result + 60) = a2;
  }

  return result;
}

- (uint64_t)toc_retry_counter
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

- (uint64_t)setToc_retry_counter:(uint64_t)result
{
  if (result)
  {
    *(result + 168) = a2;
  }

  return result;
}

- (uint64_t)setToc_processed:(uint64_t)result
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

- (uint64_t)journalIno
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

- (uint64_t)dev
{
  if (result)
  {
    return *(result + 28);
  }

  return result;
}

- (uint64_t)journal_orig_name
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)journal_fd
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (uint64_t)journal_fd_retain_count
{
  if (result)
  {
    return *(result + 36);
  }

  return result;
}

- (uint64_t)toc_name
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)toc_fd
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)toc_fd_retain_count
{
  if (result)
  {
    return *(result + 44);
  }

  return result;
}

- (uint64_t)processed_name
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)processed_fd
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)processed_fd_retain_count
{
  if (result)
  {
    return *(result + 52);
  }

  return result;
}

- (uint64_t)err
{
  if (result)
  {
    return *(result + 60);
  }

  return result;
}

- (uint64_t)toc_file_size
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

- (uint64_t)setToc_file_size:(uint64_t)result
{
  if (result)
  {
    *(result + 160) = a2;
  }

  return result;
}

- (uint64_t)eventListener
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (uint64_t)itemHandler
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (void)setupWithParentFd:(uint64_t *)a1 name:.cold.1(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = *__error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setupFromTopLevelJournalWithParentFd:(unsigned int *)a1 journalBasePath:(uint64_t *)a2 .cold.1(unsigned int *a1, uint64_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = *__error();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x18u);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setupFromTopLevelJournalWithParentFd:journalBasePath:.cold.2()
{
  OUTLINED_FUNCTION_7();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retainTocFd
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 128);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)retainJournalFd
{
  OUTLINED_FUNCTION_31(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retainProcessedFd
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 136);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)markComplete:(uint64_t)a1 processingDone:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_231B25000, a2, OS_LOG_TYPE_DEBUG, "### complete - %@ ", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __56__CSJournalProcessor__processOffsetAtOffset_completion___block_invoke_306_cold_1(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

void __45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (v6)
  {
    *(v6 + 168) = 0;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v7 = SKGLogUpdaterInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *a2;
      v10 = *(a1 + 32);
      OUTLINED_FUNCTION_13();
      v13 = a3;
      v14 = 2112;
      v15 = v11;
      _os_log_debug_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEBUG, "### processed %lld to %lld - %@", v12, 0x20u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

uint64_t __45__CSJournalProcessor_processNext_completion___block_invoke_2_cold_2(uint64_t *a1, id *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  result = [a3 retainProcessedFd];
  if (result)
  {
    v6 = *a1;
    if (*a1 < 0)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 2)
      {
        v7 = SKGLogUpdaterInit();
        if (OUTLINED_FUNCTION_28(v7))
        {
          v11 = *a2;
          v12 = 134218242;
          v13 = v6;
          v14 = 2112;
          v15 = v11;
          OUTLINED_FUNCTION_19(&dword_231B25000, v8, v9, "Invalid tocResultOffset %lld, %@", &v12);
        }
      }
    }

    else
    {
      pwrite(result, a1, 8uLL, 0);
    }

    result = [*a2 releaseProcessedFd];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)linkFileAtPath:parentFd:fileName:.cold.1()
{
  OUTLINED_FUNCTION_7();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)linkFileAtPath:parentFd:fileName:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xEu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)linkFileAtPath:parentFd:fileName:.cold.3()
{
  OUTLINED_FUNCTION_7();
  v7 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
  v6 = *MEMORY[0x277D85DE8];
}

@end