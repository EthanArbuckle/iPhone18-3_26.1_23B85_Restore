@interface TSTTableDataString
- (BOOL)isEqual:(id)equal;
- (id)initObjectWithString:(id)string;
- (void)dealloc;
@end

@implementation TSTTableDataString

- (id)initObjectWithString:(id)string
{
  v8.receiver = self;
  v8.super_class = TSTTableDataString;
  v4 = [(TSTTableDataString *)&v8 init];
  if (v4)
  {
    if (!string)
    {
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSTTableDataString initObjectWithString:]"];
      [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/tables/TSTTableDataList.mm"), 155, @"created a string table entry with a nil string"}];
    }

    v4->mString = [string copy];
    v4->super.mRefCount = 1;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = *(equal + 2);
  mString = self->mString;

  return [v5 isEqual:mString];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSTTableDataString;
  [(TSTTableDataString *)&v3 dealloc];
}

@end