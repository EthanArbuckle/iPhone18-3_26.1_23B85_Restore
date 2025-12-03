@interface NSFileManager(ContainerManager)
- (id)wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:()ContainerManager error:;
@end

@implementation NSFileManager(ContainerManager)

- (id)wf_uncachedContainerURLForSecurityApplicationGroupIdentifier:()ContainerManager error:
{
  v5 = a3;
  if (![v5 length])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSFileManager+ContainerManager.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"groupIdentifier.length"}];
  }

  [v5 UTF8String];
  v6 = container_create_or_lookup_path_for_current_user();
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v6 isDirectory:1 relativeToURL:0];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end