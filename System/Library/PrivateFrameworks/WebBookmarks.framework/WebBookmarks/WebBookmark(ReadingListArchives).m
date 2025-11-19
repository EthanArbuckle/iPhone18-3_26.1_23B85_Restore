@interface WebBookmark(ReadingListArchives)
@end

@implementation WebBookmark(ReadingListArchives)

- (void)_sizeForFileOrDirectory:()ReadingListArchives withAttributes:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_272C20000, a2, OS_LOG_TYPE_ERROR, "Error calculating directory size getting directory subpaths for offline reading list item at path: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_removeDirectoryAtPath:()ReadingListArchives .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_272C20000, log, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@: %{public}@", buf, 0x16u);
}

@end