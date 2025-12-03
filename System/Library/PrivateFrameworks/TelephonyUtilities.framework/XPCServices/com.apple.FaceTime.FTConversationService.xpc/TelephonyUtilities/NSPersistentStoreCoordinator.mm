@interface NSPersistentStoreCoordinator
- (BOOL)destroyPersistentStoreWithDescription:(id)description error:(id *)error;
@end

@implementation NSPersistentStoreCoordinator

- (BOOL)destroyPersistentStoreWithDescription:(id)description error:(id *)error
{
  descriptionCopy = description;
  if (_TUIsInternalInstall())
  {
    errorCopy = error;
    v7 = [descriptionCopy URL];
    lastPathComponent = [v7 lastPathComponent];
    stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];
    v10 = [stringByDeletingPathExtension stringByAppendingString:@"-corrupt"];

    pathExtension = [v7 pathExtension];
    if (pathExtension)
    {
      v12 = [v10 stringByAppendingPathExtension:pathExtension];

      v10 = v12;
    }

    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
    v14 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v10 isDirectory:0];

    options = [descriptionCopy options];
    type = [descriptionCopy type];
    v26 = 0;
    v17 = [(NSPersistentStoreCoordinator *)self replacePersistentStoreAtURL:v14 destinationOptions:options withPersistentStoreFromURL:v7 sourceOptions:options storeType:type error:&v26];
    v18 = v26;

    if ((v17 & 1) == 0)
    {
      v19 = FTCServiceLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10000CBC0(descriptionCopy, v18, v19);
      }
    }

    error = errorCopy;
  }

  v20 = [descriptionCopy URL];
  type2 = [descriptionCopy type];
  options2 = [descriptionCopy options];
  v23 = [(NSPersistentStoreCoordinator *)self destroyPersistentStoreAtURL:v20 withType:type2 options:options2 error:error];

  return v23;
}

@end