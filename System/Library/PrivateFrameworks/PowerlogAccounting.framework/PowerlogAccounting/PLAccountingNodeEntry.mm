@interface PLAccountingNodeEntry
+ (id)entryKey;
+ (void)load;
- (BOOL)isEqual:(id)equal;
- (PLAccountingNodeEntry)initWithName:(id)name;
- (PLAccountingNodeEntry)initWithRootNodeID:(id)d;
- (id)initEntryWithRawData:(id)data;
@end

@implementation PLAccountingNodeEntry

+ (id)entryKey
{
  if (entryKey_onceToken != -1)
  {
    +[PLAccountingNodeEntry entryKey];
  }

  v3 = entryKey_entryKey;

  return v3;
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAccountingNodeEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

uint64_t __33__PLAccountingNodeEntry_entryKey__block_invoke()
{
  entryKey_entryKey = [MEMORY[0x277D3F128] entryKeyForType:*MEMORY[0x277D3F5E0] andName:*MEMORY[0x277D3F3D0]];

  return MEMORY[0x2821F96F8]();
}

- (PLAccountingNodeEntry)initWithName:(id)name
{
  nameCopy = name;
  if (nameCopy)
  {
    entryKey = [objc_opt_class() entryKey];
    v9.receiver = self;
    v9.super_class = PLAccountingNodeEntry;
    v6 = [(PLEntry *)&v9 initWithEntryKey:entryKey];

    if (v6)
    {
      [(PLEntry *)v6 setObject:nameCopy forKeyedSubscript:*MEMORY[0x277D3F3E0]];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PLAccountingNodeEntry)initWithRootNodeID:(id)d
{
  intValue = [d intValue];
  v5 = intValue;
  if (intValue == 1)
  {
    v6 = @"__GLOBAL__";
  }

  else if (intValue - 1 > 0x3D)
  {
    if (intValue != 10000)
    {
      selfCopy = 0;
      goto LABEL_8;
    }

    v6 = @"RootNodeMaxCount";
  }

  else
  {
    v6 = [&unk_2870F87E0 objectAtIndexedSubscript:intValue];
  }

  v7 = [(PLAccountingNodeEntry *)self initWithName:v6];
  [(PLEntry *)v7 setEntryID:v5];
  self = v7;

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (id)initEntryWithRawData:(id)data
{
  dataCopy = data;
  entryKey = [objc_opt_class() entryKey];
  v8.receiver = self;
  v8.super_class = PLAccountingNodeEntry;
  v6 = [(PLEntry *)&v8 initWithEntryKey:entryKey withRawData:dataCopy];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([MEMORY[0x277D3F180] debugEnabled])
  {
    v5 = objc_opt_class();
    block = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = __33__PLAccountingNodeEntry_isEqual___block_invoke;
    v21 = &__block_descriptor_40_e5_v8__0lu32l8;
    v22 = v5;
    if (isEqual__defaultOnce != -1)
    {
      dispatch_once(&isEqual__defaultOnce, &block);
    }

    if (isEqual__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x277CCACA8];
      entryID = [equalCopy entryID];
      entryID2 = [(PLEntry *)self entryID];
      v9 = [v6 stringWithFormat:@"self=%@, other=%@, result=%i", self, equalCopy, entryID == entryID2, block, v19, v20, v21, v22];
      v10 = MEMORY[0x277D3F178];
      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/PowerlogAccounting/Entries/PLAccountingNodeEntry.m"];
      lastPathComponent = [v11 lastPathComponent];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLAccountingNodeEntry isEqual:]"];
      [v10 logMessage:v9 fromFile:lastPathComponent fromFunction:v13 fromLineNumber:77];

      v14 = PLLogCommon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PLAccountingDistributionEventEntry initWithDistributionID:v9 withChildNodeIDToWeight:v14 withRange:?];
      }
    }
  }

  entryID3 = [equalCopy entryID];
  v16 = entryID3 == [(PLEntry *)self entryID];

  return v16;
}

uint64_t __33__PLAccountingNodeEntry_isEqual___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  isEqual__classDebugEnabled = result;
  return result;
}

@end