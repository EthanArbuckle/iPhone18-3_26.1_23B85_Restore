@interface SUSHistoryEvent
- (SUSHistoryEvent)initWithCoder:(id)coder;
- (SUSHistoryEvent)initWithOperation:(int64_t)operation historyType:(int64_t)type extraInfo:(id)info;
- (id)description;
- (id)toAnalytics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUSHistoryEvent

- (SUSHistoryEvent)initWithOperation:(int64_t)operation historyType:(int64_t)type extraInfo:(id)info
{
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = SUSHistoryEvent;
  v10 = [(SUSHistoryEvent *)&v17 init];
  if (v10)
  {
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v10->_timestamp;
    v10->_timestamp = date;

    v10->_historyType = type;
    v10->_operation = operation;
    objc_storeStrong(&v10->_extraInfo, info);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.softwareupdateserivces.SUSHistoryEvent", v13);
    historyProtectionQueue = v10->_historyProtectionQueue;
    v10->_historyProtectionQueue = v14;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  timestamp = [(SUSHistoryEvent *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];

  [coderCopy encodeInteger:-[SUSHistoryEvent historyType](self forKey:{"historyType"), @"historyType"}];
  [coderCopy encodeInteger:-[SUSHistoryEvent operation](self forKey:{"operation"), @"operation"}];
  extraInfo = [(SUSHistoryEvent *)self extraInfo];
  [coderCopy encodeObject:extraInfo forKey:@"extraInfo"];
}

- (SUSHistoryEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
  v6 = [coderCopy decodeIntegerForKey:@"historyType"];
  v7 = [coderCopy decodeIntegerForKey:@"operation"];
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v8 setWithObjects:{v9, v10, v11, objc_opt_class(), 0}];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"extraInfo"];

  v18.receiver = self;
  v18.super_class = SUSHistoryEvent;
  v14 = [(SUSHistoryEvent *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_timestamp, v5);
    v15->_historyType = v6;
    v15->_operation = v7;
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v15->_extraInfo, v16);
  }

  return v15;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  timestamp = [(SUSHistoryEvent *)self timestamp];
  [v3 appendFormat:@"timestamp = %@\n", timestamp];

  v5 = [SUSHistoryTracker nameForHistoryType:[(SUSHistoryEvent *)self historyType]];
  [v3 appendFormat:@"type = %@\n", v5];

  v6 = +[SUSHistoryTracker historyOperationName];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUSHistoryEvent operation](self, "operation")}];
  v8 = [v6 objectForKeyedSubscript:v7];
  [v3 appendFormat:@"operation = %@\n", v8];

  v9 = MEMORY[0x277CCAAA0];
  extraInfo = [(SUSHistoryEvent *)self extraInfo];
  v23 = 0;
  v11 = [v9 dataWithJSONObject:extraInfo options:1 error:&v23];
  v12 = v23;

  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v11 encoding:4];
  if (!v20)
  {
    v22 = v12;
    SULogError(@"%s Error converting dictionary to string: %@", v13, v14, v15, v16, v17, v18, v19, "[SUSHistoryEvent description]");
  }

  [v3 appendFormat:@"extra info = %@\n", v20, v22];

  return v3;
}

- (id)toAnalytics
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = [[SUAnalyticsEvent alloc] initWithEventName:@"com.apple.SUSHistory"];
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  timestamp = [(SUSHistoryEvent *)self timestamp];
  v49 = v4;
  v6 = [v4 stringFromDate:timestamp];

  v48 = v6;
  [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"timestamp" stringValue:v6];
  v7 = [SUSHistoryTracker nameForHistoryType:[(SUSHistoryEvent *)self historyType]];
  [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"historyType" stringValue:v7];

  v8 = +[SUSHistoryTracker historyOperationName];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUSHistoryEvent operation](self, "operation")}];
  v10 = [v8 objectForKeyedSubscript:v9];
  [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"operation" stringValue:v10];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  extraInfo = [(SUSHistoryEvent *)self extraInfo];
  v12 = [extraInfo countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v51;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(extraInfo);
        }

        v16 = *(*(&v50 + 1) + 8 * i);
        extraInfo2 = [(SUSHistoryEvent *)self extraInfo];
        v18 = [extraInfo2 objectForKeyedSubscript:v16];

        if ([v16 isEqualToString:@"descriptor"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v19 = v18;
          humanReadableUpdateName = [v19 humanReadableUpdateName];

          if (humanReadableUpdateName)
          {
            humanReadableUpdateName2 = [v19 humanReadableUpdateName];
            [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"displayName" stringValue:humanReadableUpdateName2];
          }

          productBuildVersion = [v19 productBuildVersion];

          if (productBuildVersion)
          {
            productBuildVersion2 = [v19 productBuildVersion];
            [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"targetBuild" stringValue:productBuildVersion2];

            productBuildVersion3 = [v19 productBuildVersion];
            [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"preferredBuild" stringValue:productBuildVersion3];
          }

          productVersion = [v19 productVersion];

          if (productVersion)
          {
            productVersion2 = [v19 productVersion];
            [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"targetVersion" stringValue:productVersion2];

            productVersion3 = [v19 productVersion];
            [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"preferredVersion" stringValue:productVersion3];
          }

          productVersionExtra = [v19 productVersionExtra];

          if (productVersionExtra)
          {
            productVersionExtra2 = [v19 productVersionExtra];
            [(SUAnalyticsEvent *)v3 setEventPayloadEntry:@"productVersionExtra" stringValue:productVersionExtra2];
          }

          -[SUAnalyticsEvent setEventPayloadEntry:BOOLValue:](v3, "setEventPayloadEntry:BOOLValue:", @"isSplat", [v19 isSplatOnly]);
          -[SUAnalyticsEvent setEventPayloadEntry:BOOLValue:](v3, "setEventPayloadEntry:BOOLValue:", @"isSplombo", [v19 isSplombo]);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SUAnalyticsEvent *)v3 setEventPayloadEntry:v16 stringValue:v18];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objCType = [v18 objCType];
              if (*objCType == 66 && !objCType[1])
              {
                -[SUAnalyticsEvent setEventPayloadEntry:BOOLValue:](v3, "setEventPayloadEntry:BOOLValue:", v16, [v18 BOOLValue]);
              }

              else
              {
                [(SUAnalyticsEvent *)v3 setEventPayloadEntry:v16 numberValue:v18];
              }
            }

            else if (([v16 isEqualToString:@"descriptor"] & 1) == 0)
            {
              objc_opt_class();
              SULogError(@"Unexpected class type sent to analytics for key %@: %@", v31, v32, v33, v34, v35, v36, v37, v16);
            }
          }
        }
      }

      v13 = [extraInfo countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v13);
  }

  v47 = [(SUAnalyticsEvent *)v3 description];
  SULogInfo(@"%s history analytics event: %@", v38, v39, v40, v41, v42, v43, v44, "[SUSHistoryEvent toAnalytics]");

  v45 = *MEMORY[0x277D85DE8];

  return v3;
}

@end