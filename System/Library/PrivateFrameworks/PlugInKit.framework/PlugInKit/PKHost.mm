@interface PKHost
+ (id)defaultHost;
- (NSDictionary)hostInfoPlist;
- (PKHost)init;
- (PKHost)initWithDaemon:(id)daemon externalProviders:(id)providers;
- (id)activatePlugIn:(id)in;
- (id)activePlugInForIdentifier:(id)identifier;
- (id)continuouslyDiscoverPlugInsForAttributes:(id)attributes flags:(unint64_t)flags found:(id)found;
- (id)findPlugInByUUID:(id)d withError:(id *)error;
- (id)rewriteDiscoveryAttributes:(id)attributes flags:(unint64_t)flags;
- (void)deactivatePlugIn:(id)in;
- (void)discoverPlugInsForAttributes:(id)attributes flags:(unint64_t)flags found:(id)found;
- (void)findPlugInByPathURL:(id)l reply:(id)reply;
- (void)setElection:(int64_t)election forPlugIn:(id)in;
- (void)setExtensionState:(id)state forPlugIn:(id)in;
@end

@implementation PKHost

+ (id)defaultHost
{
  if (qword_1ED6EF070 != -1)
  {
    sub_1C68931BC();
  }

  v3 = qword_1ED6EF068;

  return v3;
}

- (PKHost)init
{
  v3 = [[PKDaemonClient alloc] initWithServiceName:0];
  v4 = objc_opt_new();
  v5 = [(PKHost *)self initWithDaemon:v3 externalProviders:v4];

  return v5;
}

- (PKHost)initWithDaemon:(id)daemon externalProviders:(id)providers
{
  daemonCopy = daemon;
  providersCopy = providers;
  v15.receiver = self;
  v15.super_class = PKHost;
  v8 = [(PKHost *)&v15 init];
  if (v8)
  {
    v9 = +[PKCapabilities frameworkQueueAttr];
    v10 = dispatch_queue_create("host", v9);
    [(PKHost *)v8 setHostQueue:v10];

    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:100];
    [(PKHost *)v8 setActivePlugIns:v11];

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(PKHost *)v8 setActiveOneShots:dictionary];

    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    [(PKHost *)v8 setDiscoveryMap:strongToWeakObjectsMapTable];

    [(PKHost *)v8 setDaemon:daemonCopy];
    objc_storeStrong(&v8->_external, providers);
  }

  return v8;
}

- (id)findPlugInByUUID:(id)d withError:(id *)error
{
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1C68936B4;
  v20 = sub_1C689455C;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1C68936B4;
  v14 = sub_1C689455C;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1C68A1100;
  v9[3] = &unk_1E827F6E8;
  v9[4] = &v10;
  v9[5] = &v16;
  [(PKHost *)self _findPlugInByUUID:dCopy synchronously:1 reply:v9];
  if (error)
  {
    *error = v11[5];
  }

  v7 = v17[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v7;
}

- (void)findPlugInByPathURL:(id)l reply:(id)reply
{
  replyCopy = reply;
  lCopy = l;
  daemon = [(PKHost *)self daemon];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C68A1244;
  v10[3] = &unk_1E827F6C0;
  v10[4] = self;
  v11 = replyCopy;
  v9 = replyCopy;
  [daemon findPlugInByPathURL:lCopy reply:v10];
}

- (void)discoverPlugInsForAttributes:(id)attributes flags:(unint64_t)flags found:(id)found
{
  attributesCopy = attributes;
  foundCopy = found;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = _os_activity_create(&dword_1C6892000, "discovery", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68A1780;
  block[3] = &unk_1E827F760;
  v16 = attributesCopy;
  selfCopy = self;
  v19 = foundCopy;
  flagsCopy = flags;
  v18 = uUID;
  v12 = foundCopy;
  v13 = uUID;
  v14 = attributesCopy;
  os_activity_apply(v11, block);
}

- (id)rewriteDiscoveryAttributes:(id)attributes flags:(unint64_t)flags
{
  v33 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = [attributesCopy objectForKeyedSubscript:@"NSExtensionPointName"];

  if (v5)
  {
    v6 = attributesCopy;
    goto LABEL_23;
  }

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(attributesCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = attributesCopy;
  v7 = attributesCopy;
  v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v8)
  {
    v9 = *v29;
    v10 = @"com.apple.version";
    v11 = @"NSExtensionIdentifier";
    do
    {
      v12 = 0;
      if (v8 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v8;
      }

      v27 = v13;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v18 = *(*(&v28 + 1) + 8 * v12);
        if ([(__CFString *)v18 isEqualToString:@"com.apple.identifier"])
        {
          v14 = [v7 objectForKeyedSubscript:v18];
          v15 = v6;
          v16 = v14;
          v17 = v11;
LABEL_11:
          [v15 setObject:v16 forKeyedSubscript:v17];
          goto LABEL_12;
        }

        if ([(__CFString *)v18 isEqualToString:v10])
        {
          v14 = [v7 objectForKeyedSubscript:v18];
          v15 = v6;
          v16 = v14;
          v17 = @"NSExtensionVersion";
          goto LABEL_11;
        }

        v19 = v9;
        v20 = v11;
        v21 = v10;
        v22 = [(__CFString *)v18 isEqualToString:@"com.apple.protocol"];
        v14 = [v7 objectForKeyedSubscript:v18];
        if (v22)
        {
          v23 = @"NSExtensionPointName";
        }

        else
        {
          v23 = v18;
        }

        [v6 setObject:v14 forKeyedSubscript:v23];
        v10 = v21;
        v11 = v20;
        v9 = v19;
        v13 = v27;
LABEL_12:

        ++v12;
      }

      while (v13 != v12);
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v8);
  }

  attributesCopy = v26;
LABEL_23:

  v24 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)continuouslyDiscoverPlugInsForAttributes:(id)attributes flags:(unint64_t)flags found:(id)found
{
  foundCopy = found;
  attributesCopy = attributes;
  v10 = [[PKDiscoveryDriver alloc] initWithAttributes:attributesCopy flags:flags host:self report:foundCopy];

  [(PKDiscoveryDriver *)v10 performWithPreviousResults:0 forceNotify:1];

  return v10;
}

- (void)setElection:(int64_t)election forPlugIn:(id)in
{
  v15[1] = *MEMORY[0x1E69E9840];
  inCopy = in;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:election];
  [v7 setObject:v8 forKeyedSubscript:@"election"];

  bootInstance = [inCopy bootInstance];
  [v7 setObject:bootInstance forKeyedSubscript:@"bootuuid"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(inCopy, "annotationTimestamp")}];
  [v7 setObject:v10 forKeyedSubscript:@"timestamp"];

  daemon = [(PKHost *)self daemon];
  uuid = [inCopy uuid];

  v15[0] = uuid;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  [daemon setPluginAnnotations:v13 annotations:v7 reply:&unk_1F4639228];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setExtensionState:(id)state forPlugIn:(id)in
{
  v16[1] = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (stateCopy)
  {
    v7 = stateCopy;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F8];
  }

  inCopy = in;
  v9 = objc_opt_new();
  [v9 setObject:v7 forKeyedSubscript:@"extension"];
  bootInstance = [inCopy bootInstance];
  [v9 setObject:bootInstance forKeyedSubscript:@"bootuuid"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(inCopy, "annotationTimestamp")}];
  [v9 setObject:v11 forKeyedSubscript:@"timestamp"];

  daemon = [(PKHost *)self daemon];
  uuid = [inCopy uuid];

  v16[0] = uuid;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  [daemon setPluginAnnotations:v14 annotations:v9 reply:&unk_1F4639248];

  v15 = *MEMORY[0x1E69E9840];
}

- (id)activePlugInForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"activePlugInForIdentifier: nil not allowed"];
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1C68936B4;
  v16 = sub_1C689455C;
  v17 = 0;
  hostQueue = [(PKHost *)self hostQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68A30E8;
  block[3] = &unk_1E827F698;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(hostQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)activatePlugIn:(id)in
{
  inCopy = in;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_1C68936B4;
  v18 = sub_1C689455C;
  v19 = 0;
  hostQueue = [(PKHost *)self hostQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C68A32CC;
  v10[3] = &unk_1E827F7F8;
  v10[4] = self;
  v11 = inCopy;
  v12 = &v14;
  v13 = a2;
  v7 = inCopy;
  dispatch_sync(hostQueue, v10);

  v8 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (void)deactivatePlugIn:(id)in
{
  inCopy = in;
  hostQueue = [(PKHost *)self hostQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68A36F4;
  block[3] = &unk_1E827F820;
  v9 = inCopy;
  selfCopy = self;
  v11 = a2;
  v7 = inCopy;
  dispatch_sync(hostQueue, block);
}

- (NSDictionary)hostInfoPlist
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68A3A5C;
  block[3] = &unk_1E827F1C8;
  block[4] = self;
  if (qword_1EC1D1D40 != -1)
  {
    selfCopy = self;
    dispatch_once(&qword_1EC1D1D40, block);
    self = selfCopy;
  }

  return self->_hostInfoPlist;
}

@end