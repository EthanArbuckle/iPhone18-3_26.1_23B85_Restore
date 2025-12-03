@interface PRUISPosterSnapshotFilesystemCache(IncomingCallAdditions)
+ (void)incomingCallSnapshotCache;
@end

@implementation PRUISPosterSnapshotFilesystemCache(IncomingCallAdditions)

+ (void)incomingCallSnapshotCache
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  selfCopy = self;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1CAE63000, log, OS_LOG_TYPE_ERROR, "Unable to create cache directory at URL %@: %@", &v3, 0x16u);
}

@end