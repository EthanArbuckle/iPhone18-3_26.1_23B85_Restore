@interface SAFSEEvent
+ (id)initWithFSEventString:(id)a3;
@end

@implementation SAFSEEvent

+ (id)initWithFSEventString:(id)a3
{
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"/"];
  v5 = v4;
  if (!v4 || [v4 count] <= 8)
  {
    v6 = SALog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10003FD18();
    }

LABEL_5:

    v6 = 0;
    goto LABEL_6;
  }

  v6 = objc_opt_new();
  v8 = [v5 objectAtIndexedSubscript:0];
  [v6 setEventType:v8];

  v9 = [v5 objectAtIndexedSubscript:1];
  -[NSObject setVersion:](v6, "setVersion:", [v9 longLongValue]);

  v10 = [v5 objectAtIndexedSubscript:2];
  -[NSObject setDev:](v6, "setDev:", [v10 longLongValue]);

  v11 = [v5 objectAtIndexedSubscript:3];
  -[NSObject setInode:](v6, "setInode:", [v11 longLongValue]);

  v12 = [v5 objectAtIndexedSubscript:4];
  -[NSObject setOriginID:](v6, "setOriginID:", [v12 longLongValue]);

  v13 = [v5 objectAtIndexedSubscript:5];
  -[NSObject setPurgeableATime:](v6, "setPurgeableATime:", [v13 longLongValue]);

  v14 = [v5 objectAtIndexedSubscript:6];
  v15 = [v14 longLongValue];

  v16 = [v5 objectAtIndexedSubscript:7];
  v17 = [v16 longLongValue];

  v18 = [v5 objectAtIndexedSubscript:8];
  -[NSObject setSize:](v6, "setSize:", [v18 longLongValue]);

  [v6 setUseState:v15];
  [v6 setResidency:HIWORD(v15)];
  v19 = __ROR8__(v17, 9);
  if (v19 < 5 && ((0x17u >> v19) & 1) != 0)
  {
    v20 = dword_10004CD90[v19];
  }

  else if (v17 == 0x8000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 0xFFFFFFFFLL;
  }

  [v6 setUrgency:v20];
  if ([v6 urgency]>= 5)
  {
    v21 = SALog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10003FC10(v6);
    }

    v6 = 0;
  }

  if ([v6 useState]>= 8)
  {
    v22 = SALog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_10003FC94(v6);
    }

    goto LABEL_5;
  }

LABEL_6:

  return v6;
}

@end