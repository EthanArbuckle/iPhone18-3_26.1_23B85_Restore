@interface ATSRequiredProvider
- (BOOL)shouldInitializeWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options error:(id *)error;
- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error;
- (id)describeChunk:(ktrace_chunk *)chunk;
- (void)_appendSyscallMapToFile:(ktrace_file *)file;
- (void)didStopTracingToFile:(ktrace_file *)file;
- (void)emitVnodePathTracepointsIfEnabled;
- (void)postprocessingCompleteWithFile:(ktrace_file *)file;
@end

@implementation ATSRequiredProvider

- (BOOL)shouldInitializeWithLogger:(id)logger machine:(ktrace_machine *)machine options:(id)options error:(id *)error
{
  objc_storeStrong(&self->_logger, logger);
  loggerCopy = logger;
  v9 = [[ATSIORegCapture alloc] initWithLogger:loggerCopy];
  ioRegCapture = self->_ioRegCapture;
  self->_ioRegCapture = v9;

  v11 = [[ATSSignpostPlistCapture alloc] initWithLogger:loggerCopy];
  signpostPlistCapture = self->_signpostPlistCapture;
  self->_signpostPlistCapture = v11;

  v13 = [[ATSSymbolsMapCapture alloc] initWithLogger:loggerCopy];
  symbolsMapCapture = self->_symbolsMapCapture;
  self->_symbolsMapCapture = v13;

  return 1;
}

- (BOOL)shouldStartTracingWithConfiguration:(ktrace_config *)configuration error:(id *)error
{
  v5 = [[ATSGraphicsCapture alloc] initWithLogger:self->_logger config:configuration];
  graphicsCapture = self->_graphicsCapture;
  self->_graphicsCapture = v5;

  self->_shouldEmitVnodePathNameTracepoints = ktrace_config_kdebug_get_debugid_enabled();
  ats_will_start_tracing();
  return 1;
}

- (void)didStopTracingToFile:(ktrace_file *)file
{
  [(ATSGraphicsCapture *)self->_graphicsCapture disableGFXTracingIfNeeded];
  [(ATSSymbolsMapCapture *)self->_symbolsMapCapture addChunksToFile:file];

  [(ATSRequiredProvider *)self _appendSyscallMapToFile:file];
}

- (void)postprocessingCompleteWithFile:(ktrace_file *)file
{
  [(ATSIORegCapture *)self->_ioRegCapture addChunksToFile:?];
  [(ATSSignpostPlistCapture *)self->_signpostPlistCapture addChunksToFile:file];
  if (self->_foundLostEvents)
  {
    [(KTProviderLogger *)self->_logger warnWithMessage:@"Trace has lost events. Trace may not contain full data needed to visualize in tools."];
  }

  _ats_postprocessing_complete_write_processmaps(file);
}

- (id)describeChunk:(ktrace_chunk *)chunk
{
  v4 = ktrace_chunk_tag();
  if ((v4 - 20584) >= 3)
  {
    v6 = v4;
    v7 = [(ATSIORegCapture *)self->_ioRegCapture describeChunkWithTag:v4];
    if (!v7)
    {
      v7 = [(ATSSignpostPlistCapture *)self->_signpostPlistCapture describeChunkWithTag:v6];
    }

    v5 = v7;
  }

  else
  {
    v5 = *(&off_10680 + (v4 - 20584));
  }

  return v5;
}

- (void)_appendSyscallMapToFile:(ktrace_file *)file
{
  v4 = [NSData dataWithContentsOfFile:@"/usr/share/misc/syscalls.json"];
  v6 = v4;
  if (v4)
  {
    v5 = v4;
    [v6 bytes];
    [v6 length];
    ktrace_file_append_chunk();
  }

  else
  {
    [(KTProviderLogger *)self->_logger failWithReason:@"Failed to capture syscall data from '/usr/share/misc/syscalls.json'"];
  }
}

- (void)emitVnodePathTracepointsIfEnabled
{
  if (self->_shouldEmitVnodePathNameTracepoints && sysctlbyname("vfs.generic.trace_paths", 0, 0, 0, 0))
  {
    logger = self->_logger;

    [(KTProviderLogger *)logger warnWithMessage:@"WARNING: Unable to dump full vnode-to-path mappings; some vnodes may be missing paths"];
  }
}

@end