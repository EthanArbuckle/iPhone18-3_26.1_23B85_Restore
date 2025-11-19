@interface VVVerifier
- (BOOL)valueForCheckpointKey:(id)a3 exists:(BOOL *)a4;
- (VVVerifier)initWithAccountDir:(id)a3;
- (id)_checkpointDictionary;
- (id)_checkpointDictionaryFilePath;
- (id)configurationDictionary;
- (id)humanReadableConfigurationDictionary:(id *)a3;
- (id)keyDescriptions;
- (id)readableError;
- (void)_checkpointDictionaryChanged;
- (void)_mapFromSourceDictionary:(id)a3 destinationDictionary:(id)a4 inKey:(id)a5 outDescription:(id)a6;
- (void)_saveCheckpointDictionary;
@end

@implementation VVVerifier

- (VVVerifier)initWithAccountDir:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VVVerifier;
  v5 = [(VVVerifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(VVVerifier *)v5 setAccountDir:v4];
  }

  return v6;
}

- (id)_checkpointDictionaryFilePath
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006721C;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  if (qword_10010D978 != -1)
  {
    dispatch_once(&qword_10010D978, block);
  }

  return qword_10010D970;
}

- (id)_checkpointDictionary
{
  checkpointDictionary = self->_checkpointDictionary;
  if (!checkpointDictionary)
  {
    v4 = [(VVVerifier *)self _checkpointDictionaryFilePath];
    v5 = +[NSFileManager defaultManager];
    if ([v5 fileExistsAtPath:v4])
    {
      v6 = [[NSMutableDictionary alloc] initWithContentsOfFile:v4];
    }

    else
    {
      v6 = objc_alloc_init(NSMutableDictionary);
    }

    v7 = self->_checkpointDictionary;
    self->_checkpointDictionary = v6;

    checkpointDictionary = self->_checkpointDictionary;
  }

  return checkpointDictionary;
}

- (void)_saveCheckpointDictionary
{
  if (self->_checkpointDictionary)
  {
    v3 = [(VVVerifier *)self _checkpointDictionaryFilePath];
    checkpointDictionary = self->_checkpointDictionary;
    v13 = 0;
    v5 = [(NSMutableDictionary *)checkpointDictionary writeToFile:v3 options:268435457 error:&v13];
    v6 = v13;
    if ((v5 & 1) == 0)
    {
      v7 = vm_vmd_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10009D970();
      }
    }

    v8 = [NSURL fileURLWithPath:v3];
    v12 = 0;
    v9 = [v8 setResourceValue:&__kCFBooleanTrue forKey:NSURLIsExcludedFromBackupKey error:&v12];
    v10 = v12;
    if ((v9 & 1) == 0)
    {
      v11 = vm_vmd_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10009D9D8();
      }
    }

    notify_post([@"com.apple.visualvoicemail.VVVerifierChanged" UTF8String]);
  }
}

- (BOOL)valueForCheckpointKey:(id)a3 exists:(BOOL *)a4
{
  v6 = a3;
  v7 = [(VVVerifier *)self _checkpointDictionary];
  v8 = [v7 valueForKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4)
    {
      *a4 = 1;
    }

    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
    if (a4)
    {
      *a4 = 0;
    }
  }

  return v9;
}

- (id)keyDescriptions
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067858;
  block[3] = &unk_1000EE5B8;
  block[4] = self;
  if (qword_10010D980 != -1)
  {
    dispatch_once(&qword_10010D980, block);
  }

  return self->_keyDescriptions;
}

- (id)readableError
{
  [(VVVerifier *)self keyDescriptions];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 objectForKey:@"KeyName"];
        v12 = 0;
        if (![(VVVerifier *)self valueForCheckpointKey:v9 exists:&v12])
        {
          if (v12 == 1)
          {
            v10 = [v8 valueForKey:@"LatestFailure"];
          }

          else
          {
            v10 = 0;
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (void)_checkpointDictionaryChanged
{
  checkpointDictionary = self->_checkpointDictionary;
  self->_checkpointDictionary = 0;

  v3 = [@"com.apple.visualvoicemail.VVVerifierChanged" UTF8String];

  notify_post(v3);
}

- (id)configurationDictionary
{
  v2 = [(VVVerifier *)self accountDir];
  v3 = [v2 URLByAppendingPathComponent:@"com.apple.voicemail.imap.parameters.plist"];

  v4 = [[NSDictionary alloc] initWithContentsOfURL:v3];

  return v4;
}

- (void)_mapFromSourceDictionary:(id)a3 destinationDictionary:(id)a4 inKey:(id)a5 outDescription:(id)a6
{
  v16 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = [v16 allKeys];
  v13 = [v12 containsObject:v10];

  if (v13)
  {
    v14 = [v16 objectForKey:v10];
    v15 = [NSString stringWithFormat:@"%@", v14];
    [v9 setObject:v15 forKey:v11];
  }

  else
  {
    [v9 setObject:&stru_1000F0098 forKey:v11];
  }
}

- (id)humanReadableConfigurationDictionary:(id *)a3
{
  v5 = [(VVVerifier *)self configurationDictionary];
  if (v5)
  {
    v6 = [NSMutableDictionary dictionaryWithCapacity:6];
    v7 = [v5 objectForKey:@"AccountSettings"];
    [(VVVerifier *)self _mapFromSourceDictionary:v7 destinationDictionary:v6 inKey:@"name" outDescription:@"Name"];
    [(VVVerifier *)self _mapFromSourceDictionary:v7 destinationDictionary:v6 inKey:@"port" outDescription:@"Port"];
    [(VVVerifier *)self _mapFromSourceDictionary:v7 destinationDictionary:v6 inKey:@"server" outDescription:@"Server"];
    [(VVVerifier *)self _mapFromSourceDictionary:v5 destinationDictionary:v6 inKey:@"AccountState" outDescription:@"State"];
    [(VVVerifier *)self _mapFromSourceDictionary:v5 destinationDictionary:v6 inKey:@"BeaconCount" outDescription:@"Beacons"];
    [(VVVerifier *)self _mapFromSourceDictionary:v5 destinationDictionary:v6 inKey:@"GreetingType" outDescription:@"Greeting"];
    if (a3)
    {
      *a3 = [NSArray arrayWithObjects:@"Name", @"Port", @"Server", @"State", @"Beacons", @"Greeting", 0];
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      *a3 = 0;
    }
  }

  return v6;
}

@end