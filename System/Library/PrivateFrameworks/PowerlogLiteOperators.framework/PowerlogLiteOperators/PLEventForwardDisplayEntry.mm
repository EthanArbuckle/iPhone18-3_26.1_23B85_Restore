@interface PLEventForwardDisplayEntry
+ (void)load;
- (id)initEntryWithRawData:(id)data;
@end

@implementation PLEventForwardDisplayEntry

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLEventForwardDisplayEntry;
  objc_msgSendSuper2(&v2, sel_load);
}

- (id)initEntryWithRawData:(id)data
{
  dataCopy = data;
  v5 = +[PLEventForwardDisplayEntry entryKey];
  v16.receiver = self;
  v16.super_class = PLEventForwardDisplayEntry;
  v6 = [(PLEntry *)&v16 initWithEntryKey:v5 withRawData:dataCopy];

  if (v6 && !+[PLDisplayAgent shouldLogFromDCP])
  {
    v7 = [dataCopy objectForKey:@"brightness"];
    v8 = [v7 objectForKey:@"value"];
    longValue = [v8 longValue];

    v10 = [v7 objectForKey:@"min"];
    longValue2 = [v10 longValue];

    v12 = [v7 objectForKey:@"max"];
    longValue3 = [v12 longValue];

    v14 = [MEMORY[0x277CCABB0] numberWithDouble:(longValue - longValue2) * 100.0 / (longValue3 - longValue2)];
    [(PLEntry *)v6 setObject:v14 forKeyedSubscript:@"Brightness"];
  }

  return v6;
}

@end