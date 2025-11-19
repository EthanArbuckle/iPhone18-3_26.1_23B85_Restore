@interface IMAPServiceStore
- (BOOL)shouldRetryEmptyBodyDownloadForMessage:(id)a3;
- (unsigned)connectionBodyDataReadChunkSize:(id)a3;
- (void)_handleFlagsDidChange:(id)a3;
- (void)doCompact;
- (void)messageFlagsDidChange:(id)a3 flags:(id)a4;
@end

@implementation IMAPServiceStore

- (unsigned)connectionBodyDataReadChunkSize:(id)a3
{
  v3 = [(IMAPServiceStore *)self account];
  v4 = [v3 readBufferSize];

  return v4;
}

- (void)doCompact
{
  v5.receiver = self;
  v5.super_class = IMAPServiceStore;
  [(IMAPServiceStore *)&v5 doCompact];
  v3 = *&self->MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library];
  v4 = [(IMAPServiceStore *)self URLString];
  [v3 compactMailbox:v4];
}

- (BOOL)shouldRetryEmptyBodyDownloadForMessage:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*&self->MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library] copyStoreRecordForMessage:v4];
    v6 = +[MFActivityMonitor currentTracebleMonitor];
    v7 = [v6 primaryTarget];

    if (v5 != v7 || (v9 = +[IMAPServiceActivityController remainingBodyRetries]) == 0)
    {
      v8 = 0;
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    [IMAPServiceActivityController setRemainingBodyRetries:v9 - 1];
    v8 = 1;
    if (v5)
    {
LABEL_8:
      CFRelease(v5);
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (void)messageFlagsDidChange:(id)a3 flags:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1000026FC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IMAPServiceStore *)self mailboxUid];
    v10 = 136315906;
    v11 = [v9 mambaID];
    v12 = 2080;
    v13 = " ";
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s======== messageFlagsDidChange: %@, flags: %@", &v10, 0x2Au);
  }
}

- (void)_handleFlagsDidChange:(id)a3
{
  v4 = a3;
  v5 = sub_1000026FC();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IMAPServiceStore *)self mailboxUid];
    v7 = 136315650;
    v8 = [v6 mambaID];
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s======== IMAPServiceStore _handleFlagsDidChange: %@", &v7, 0x20u);
  }
}

@end