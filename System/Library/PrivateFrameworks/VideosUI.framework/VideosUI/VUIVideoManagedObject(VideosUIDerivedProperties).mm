@interface VUIVideoManagedObject(VideosUIDerivedProperties)
- (void)additionalFPSRequestParams;
@end

@implementation VUIVideoManagedObject(VideosUIDerivedProperties)

- (void)additionalFPSRequestParams
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1E323F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Unable to deserialize fpsAdditionalServerParams: %@", &v1, 0xCu);
}

@end