@interface ATSSignpostPlistCapture
- (ATSSignpostPlistCapture)initWithLogger:(id)a3;
- (id)describeChunkWithTag:(unsigned int)a3;
- (void)addChunksToFile:(ktrace_file *)a3;
@end

@implementation ATSSignpostPlistCapture

- (ATSSignpostPlistCapture)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATSSignpostPlistCapture;
  v6 = [(ATSSignpostPlistCapture *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (void)addChunksToFile:(ktrace_file *)a3
{
  v4 = +[NSMutableDictionary dictionary];
  v5 = [NSURL fileURLWithPath:@"/AppleInternal/Library/Ariadne/Plists/"];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = _signpostSpecPathsForURL(v5);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = _deserializeSignpostSpecs(v11);
        [v4 setObject:v12 forKeyedSubscript:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v19 = 0;
  v13 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:&v19];
  v14 = v19;
  v15 = v14;
  if (!v13)
  {
    v18 = [v14 localizedDescription];
    v17 = [NSString stringWithFormat:@"Failed to serialize signposts to a plist. Error: %@", v18];

    goto LABEL_12;
  }

  [v13 bytes];
  [v13 length];
  if (!ktrace_file_append_chunk())
  {
    v16 = __error();
    v17 = [NSString stringWithFormat:@"Failed to append signpost plist chunk. Error: %s", strerror(*v16)];
LABEL_12:
    [(KTProviderLogger *)self->_logger failWithReason:v17];
  }
}

- (id)describeChunkWithTag:(unsigned int)a3
{
  if (a3 == 20986)
  {
    return @"KDebug Signpost Plists";
  }

  else
  {
    return 0;
  }
}

@end