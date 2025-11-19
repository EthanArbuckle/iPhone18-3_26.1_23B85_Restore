@interface VCRecordZoneParser
+ (BOOL)parseZoneID:(id)a3 intoIndex:(int64_t *)a4;
+ (BOOL)shouldIgnoreZoneID:(id)a3;
+ (id)activeRecordZone:(id)a3;
+ (id)sortedVoiceShortcutZoneIDsFromZoneIDs:(id)a3;
@end

@implementation VCRecordZoneParser

+ (id)activeRecordZone:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"VCRecordZoneParser.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"completionBlock"}];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__VCRecordZoneParser_activeRecordZone___block_invoke;
  aBlock[3] = &unk_1E837F140;
  v11 = v5;
  v12 = a1;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  return v7;
}

void __39__VCRecordZoneParser_activeRecordZone___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a3;
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v6 allKeys];
  v8 = [v5 sortedVoiceShortcutZoneIDsFromZoneIDs:v7];
  v9 = [v8 lastObject];

  v10 = [v6 objectForKeyedSubscript:v9];

  v11 = [v20 userInfo];
  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x1E695B798]];

  v13 = *(a1 + 40);
  v14 = [v12 allKeys];
  v15 = [v13 sortedVoiceShortcutZoneIDsFromZoneIDs:v14];
  v16 = [v15 lastObject];

  if (v10)
  {
    v17 = 0;
  }

  else
  {
    v18 = [v12 objectForKeyedSubscript:v16];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v20;
    }

    v17 = v19;
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)sortedVoiceShortcutZoneIDsFromZoneIDs:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v25;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        v23 = 0;
        if ([a1 parseZoneID:v11 intoIndex:&v23])
        {
          v12 = [MEMORY[0x1E696AD98] numberWithInteger:v23];
          [v5 setObject:v11 forKeyedSubscript:v12];
LABEL_9:

          goto LABEL_11;
        }

        if (([a1 shouldIgnoreZoneID:v11] & 1) == 0)
        {
          v12 = getWFPeaceMigrationLogObject();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v13 = [v11 zoneName];
            *buf = 136315394;
            v29 = "+[VCRecordZoneParser sortedVoiceShortcutZoneIDsFromZoneIDs:]";
            v30 = 2112;
            v31 = v13;
            _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_ERROR, "%s Ignoring zone with unexpected name: (%@)", buf, 0x16u);
          }

          goto LABEL_9;
        }

LABEL_11:
        ++v10;
      }

      while (v8 != v10);
      v14 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      v8 = v14;
      if (!v14)
      {
LABEL_16:

        v15 = [v5 allKeys];
        v16 = [v15 sortedArrayUsingSelector:sel_compare_];

        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __60__VCRecordZoneParser_sortedVoiceShortcutZoneIDsFromZoneIDs___block_invoke;
        v21[3] = &unk_1E837F118;
        v22 = v5;
        v17 = v5;
        v18 = [v16 if_compactMap:v21];

        goto LABEL_18;
      }
    }
  }

  v18 = 0;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

+ (BOOL)parseZoneID:(id)a3 intoIndex:(int64_t *)a4
{
  v6 = a3;
  v7 = [v6 zoneName];
  if ([v7 length] && (objc_msgSend(a1, "shouldIgnoreZoneID:", v6) & 1) == 0)
  {
    if ([v7 isEqualToString:@"VoiceShortcuts"])
    {
      *a4 = 0;
      v8 = 1;
    }

    else
    {
      v10 = [v7 componentsSeparatedByString:@"-"];
      if ([v10 count] >= 2)
      {
        v11 = [v10 lastObject];
        if ([v11 length] && (objc_msgSend(MEMORY[0x1E696AB08], "decimalDigitCharacterSet"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "invertedSet"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v11, "rangeOfCharacterFromSet:", v13), v13, v12, v14 == 0x7FFFFFFFFFFFFFFFLL))
        {
          v15 = [v10 lastObject];
          *a4 = [v15 integerValue];

          v8 = 1;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)shouldIgnoreZoneID:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:a1 file:@"VCRecordZoneParser.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"zoneID"}];
  }

  v6 = [v5 zoneName];
  v7 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"_defaultZone", @"metadata_zone", 0}];
  v8 = [v7 containsObject:v6];

  return v8;
}

@end