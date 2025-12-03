@interface RESignposts
+ (id)convertMetadataNSDictionaryToNSString:(id)string;
+ (void)traceEvent:(unint64_t)event;
+ (void)traceEvent:(unint64_t)event withMetadata:(id)metadata;
@end

@implementation RESignposts

+ (void)traceEvent:(unint64_t)event
{
  if ([self _isSignpostEventTypeEnabled:?])
  {
    kdebug_trace();
    switch(event)
    {
      case 3uLL:
        v4 = RELogForDomain(0);
        if (os_signpost_enabled(v4))
        {
          v7 = 0;
          v5 = "RESignpostEventRankingManagerRankingScore";
          v6 = &v7;
          goto LABEL_11;
        }

        break;
      case 2uLL:
        v4 = RELogForDomain(0);
        if (os_signpost_enabled(v4))
        {
          v8 = 0;
          v5 = "RESignpostEventLiveCoordinatorRemoveElement";
          v6 = &v8;
LABEL_11:
          _os_signpost_emit_with_name_impl(&dword_22859F000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v5, "", v6, 2u);
        }

        break;
      case 1uLL:
        v4 = RELogForDomain(0);
        if (!os_signpost_enabled(v4))
        {
          break;
        }

        v9 = 0;
        v5 = "RESignpostEventLiveCoordinatorAddElement";
        v6 = &v9;
        goto LABEL_11;
      default:
        return;
    }
  }
}

+ (void)traceEvent:(unint64_t)event withMetadata:(id)metadata
{
  v12 = *MEMORY[0x277D85DE8];
  if (metadata)
  {
    metadataCopy = metadata;
    kdebug_trace();
    v6 = [RESignposts convertMetadataNSDictionaryToNSString:metadataCopy];

    switch(event)
    {
      case 3uLL:
        v7 = RELogForDomain(0);
        if (os_signpost_enabled(v7))
        {
          v10 = 138543362;
          v11 = v6;
          v8 = "RESignpostEventRankingManagerRankingScore";
          goto LABEL_11;
        }

        break;
      case 2uLL:
        v7 = RELogForDomain(0);
        if (os_signpost_enabled(v7))
        {
          v10 = 138543362;
          v11 = v6;
          v8 = "RESignpostEventLiveCoordinatorRemoveElement";
          goto LABEL_11;
        }

        break;
      case 1uLL:
        v7 = RELogForDomain(0);
        if (os_signpost_enabled(v7))
        {
          v10 = 138543362;
          v11 = v6;
          v8 = "RESignpostEventLiveCoordinatorAddElement";
LABEL_11:
          _os_signpost_emit_with_name_impl(&dword_22859F000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v8, "%{public}@", &v10, 0xCu);
        }

        break;
      default:
LABEL_13:

        goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
}

+ (id)convertMetadataNSDictionaryToNSString:(id)string
{
  v3 = [MEMORY[0x277CCAAA0] dataWithJSONObject:string options:2 error:0];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];

  return v4;
}

@end