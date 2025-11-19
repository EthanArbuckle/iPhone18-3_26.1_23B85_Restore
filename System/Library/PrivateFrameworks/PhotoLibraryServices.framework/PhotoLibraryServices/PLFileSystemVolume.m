@interface PLFileSystemVolume
+ (id)keyPathsForValuesAffectingValueForKey:(id)a3;
+ (id)predictedURLForVolumeName:(id)a3;
+ (id)volumeForObjectUUID:(id)a3 context:(id)a4;
+ (id)volumeForURL:(id)a3 context:(id)a4;
+ (id)volumeForVolumeUUID:(id)a3 context:(id)a4;
- (BOOL)isOffline;
- (NSURL)url;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
- (id)predictedURL;
- (void)_registerWithVolumeManager;
- (void)_unregisterWithVolumeManager;
- (void)awakeFromFetch;
- (void)awakeFromInsert;
- (void)didTurnIntoFault;
- (void)setUrl:(id)a3;
- (void)willTurnIntoFault;
@end

@implementation PLFileSystemVolume

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectJournalEntryPayload *)[PLFileSystemVolumeJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];

  return v5;
}

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadID
{
  v2 = [(PLFileSystemVolume *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v2];

  return v3;
}

+ (id)predictedURLForVolumeName:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/Volumes" isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:v3 isDirectory:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)volumeForObjectUUID:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLFileSystemVolume fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"uuid", v6];

  [v7 setPredicate:v8];
  v9 = [v5 executeFetchRequest:v7 error:0];

  v10 = [v9 firstObject];

  return v10;
}

- (id)predictedURL
{
  v3 = [(PLFileSystemVolume *)self url];
  if (!v3)
  {
    v4 = [(PLFileSystemVolume *)self name];
    if ([v4 length])
    {
      v5 = objc_opt_class();
      v6 = [(PLFileSystemVolume *)self name];
      v3 = [v5 predictedURLForVolumeName:v6];
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
  v3 = [MEMORY[0x1E69BF320] UUIDString];
  [(PLFileSystemVolume *)self setUuid:v3];
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

  v5 = [(PLFileSystemVolume *)self uuid];

  if (!v5)
  {
    return 1;
  }

  if ([(PLFileSystemVolume *)self faultingState])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLFileSystemVolume.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"self.faultingState == 0"}];
  }

  return self->_url == 0;
}

- (NSURL)url
{
  v2 = [(NSURL *)self->_url copy];

  return v2;
}

- (void)setUrl:(id)a3
{
  if (self->_url != a3)
  {
    v4 = [a3 copy];
    url = self->_url;
    self->_url = v4;
  }
}

+ (id)volumeForVolumeUUID:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLFileSystemVolume fetchRequest];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"volumeUuidString", v6];

  [v7 setPredicate:v8];
  v9 = [v5 executeFetchRequest:v7 error:0];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)volumeForURL:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[PLFileSystemVolumeManager sharedFileSystemVolumeManager];
  v8 = [v7 volumeForURL:v6 context:v5];

  return v8;
}

+ (id)keyPathsForValuesAffectingValueForKey:(id)a3
{
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___PLFileSystemVolume;
  v3 = a3;
  v4 = objc_msgSendSuper2(&v9, sel_keyPathsForValuesAffectingValueForKey_, v3);
  v5 = [v3 isEqualToString:{@"isOffline", v9.receiver, v9.super_class}];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:@"url"];
    v7 = [v4 setByAddingObjectsFromSet:v6];

    v4 = v7;
  }

  return v4;
}

@end