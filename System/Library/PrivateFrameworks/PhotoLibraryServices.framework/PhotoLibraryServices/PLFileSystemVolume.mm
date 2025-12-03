@interface PLFileSystemVolume
+ (id)keyPathsForValuesAffectingValueForKey:(id)key;
+ (id)predictedURLForVolumeName:(id)name;
+ (id)volumeForObjectUUID:(id)d context:(id)context;
+ (id)volumeForURL:(id)l context:(id)context;
+ (id)volumeForVolumeUUID:(id)d context:(id)context;
- (BOOL)isOffline;
- (NSURL)url;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (id)predictedURL;
- (void)_registerWithVolumeManager;
- (void)_unregisterWithVolumeManager;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)didTurnIntoFault;
- (void)setUrl:(id)url;
- (void)willTurnIntoFault;
@end

@implementation PLFileSystemVolume

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLFileSystemVolumeJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];

  return v5;
}

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadID
{
  uuid = [(PLFileSystemVolume *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v3;
}

+ (id)predictedURLForVolumeName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Volumes" isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:nameCopy isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)volumeForObjectUUID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v7 = +[PLFileSystemVolume fetchRequest];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", dCopy];

  [v7 setPredicate:dCopy];
  v9 = [contextCopy executeFetchRequest:v7 error:0];

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)predictedURL
{
  v3 = [(PLFileSystemVolume *)self url];
  if (!v3)
  {
    name = [(PLFileSystemVolume *)self name];
    if ([name length])
    {
      v5 = objc_opt_class();
      name2 = [(PLFileSystemVolume *)self name];
      v3 = [v5 predictedURLForVolumeName:name2];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)_unregisterWithVolumeManager
{
  v3 = +[PLFileSystemVolumeManager sharedFileSystemVolumeManager];
  [v3 unregisterPLFileSystemVolume:self];
}

- (void)_registerWithVolumeManager
{
  v3 = +[PLFileSystemVolumeManager sharedFileSystemVolumeManager];
  [v3 registerPLFileSystemVolume:self];
}

- (void)didTurnIntoFault
{
  url = self->_url;
  self->_url = 0;

  v4.receiver = self;
  v4.super_class = PLFileSystemVolume;
  [(PLFileSystemVolume *)&v4 didTurnIntoFault];
}

- (void)willTurnIntoFault
{
  [(PLFileSystemVolume *)self _unregisterWithVolumeManager];
  v3.receiver = self;
  v3.super_class = PLFileSystemVolume;
  [(PLFileSystemVolume *)&v3 willTurnIntoFault];
}

- (void)awakeFromFetch
{
  v3.receiver = self;
  v3.super_class = PLFileSystemVolume;
  [(PLFileSystemVolume *)&v3 awakeFromFetch];
  [(PLFileSystemVolume *)self _registerWithVolumeManager];
}

- (void)awakeFromInsert
{
  v4.receiver = self;
  v4.super_class = PLFileSystemVolume;
  [(PLFileSystemVolume *)&v4 awakeFromInsert];
  uUIDString = [MEMORY[0x1E69BF320] UUIDString];
  [(PLFileSystemVolume *)self setUuid:uUIDString];
}

- (BOOL)isOffline
{
  if (self->_url)
  {
    return 0;
  }

  if (![(PLFileSystemVolume *)self faultingState])
  {
    return 1;
  }

  uuid = [(PLFileSystemVolume *)self uuid];

  if (!uuid)
  {
    return 1;
  }

  if ([(PLFileSystemVolume *)self faultingState])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLFileSystemVolume.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"self.faultingState == 0"}];
  }

  return self->_url == 0;
}

- (NSURL)url
{
  v2 = [(NSURL *)self->_url copy];

  return v2;
}

- (void)setUrl:(id)url
{
  if (self->_url != url)
  {
    v4 = [url copy];
    url = self->_url;
    self->_url = v4;
  }
}

+ (id)volumeForVolumeUUID:(id)d context:(id)context
{
  contextCopy = context;
  dCopy = d;
  v7 = +[PLFileSystemVolume fetchRequest];
  dCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"volumeUuidString", dCopy];

  [v7 setPredicate:dCopy];
  v9 = [contextCopy executeFetchRequest:v7 error:0];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)volumeForURL:(id)l context:(id)context
{
  contextCopy = context;
  lCopy = l;
  v7 = +[PLFileSystemVolumeManager sharedFileSystemVolumeManager];
  v8 = [v7 volumeForURL:lCopy context:contextCopy];

  return v8;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)key
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___PLFileSystemVolume;
  keyCopy = key;
  v4 = objc_msgSendSuper2(&v9, sel_keyPathsForValuesAffectingValueForKey_, keyCopy);
  v5 = [keyCopy isEqualToString:{@"isOffline", v9.receiver, v9.super_class}];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"url"];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  return v4;
}

@end