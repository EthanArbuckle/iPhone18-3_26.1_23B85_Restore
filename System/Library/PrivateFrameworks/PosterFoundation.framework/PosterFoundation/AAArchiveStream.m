@interface AAArchiveStream
@end

@implementation AAArchiveStream

AAArchiveStream_impl *__66__PFPosterArchiver_unarchivePathAppleArchiveAtURL_manifest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = v3;
  v5 = a2;
  v6 = AAFileStreamOpenWithPath([v3 fileSystemRepresentation], 0, 0);
  v7 = PFAppleArchiveDecompressStream(v6, v5);

  return v7;
}

AAArchiveStream_impl *__65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AE00] pipe];
  v5 = [v4 fileHandleForWriting];
  v6 = [v4 fileHandleForReading];
  Serial = BSDispatchQueueCreateSerial();
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __65__PFPosterArchiver_unarchivePathAppleArchiveData_manifest_error___block_invoke_2;
  v16 = &unk_1E8189AC8;
  v17 = v5;
  v18 = *(a1 + 32);
  v8 = v5;
  dispatch_async(Serial, &v13);
  v9 = v3;
  v10 = AAFileStreamOpenWithFD([v6 fileDescriptor], 0);
  v11 = PFAppleArchiveDecompressStream(v10, v9);

  [v6 closeFile];
  return v11;
}

@end