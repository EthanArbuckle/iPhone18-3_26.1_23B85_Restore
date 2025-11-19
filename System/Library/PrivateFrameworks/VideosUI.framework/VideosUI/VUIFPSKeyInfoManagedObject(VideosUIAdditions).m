@interface VUIFPSKeyInfoManagedObject(VideosUIAdditions)
@end

@implementation VUIFPSKeyInfoManagedObject(VideosUIAdditions)

- (void)populateFromKeyRequest:()VideosUIAdditions video:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_1E323F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to serialize fpsAdditionalServerParams data: %@", &v1, 0xCu);
}

@end