@interface AAArchiveStream
@end

@implementation AAArchiveStream

AAArchiveStream_impl *__93__PBFPosterConfigurationStoreArchiver_unarchiveConfigurationStoreArchiveData_manifest_error___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = AAFileStreamOpenWithFD([v2 fileDescriptor], 0);
  v5 = PBFAppleArchiveDecompressStream(v4, v3);

  return v5;
}

@end