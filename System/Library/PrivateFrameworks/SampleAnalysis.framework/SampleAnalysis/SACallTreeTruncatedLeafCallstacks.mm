@interface SACallTreeTruncatedLeafCallstacks
+ (id)callTreeFrameWithFrame:(id)frame startSampleIndex:(unint64_t)index sampleCount:(unint64_t)count isLeafFrame:(BOOL)leafFrame;
+ (id)callTreeFrameWithFrame:(uint64_t)frame startSampleIndex:(uint64_t)index sampleCount:(uint64_t)count otherCallTreeDescription:;
- (SACallTreeTruncatedLeafCallstacks)initWithFrame:(id)frame startSampleIndex:(unint64_t)index sampleCount:(unint64_t)count otherCallTreeDescription:(id)description;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SACallTreeTruncatedLeafCallstacks

+ (id)callTreeFrameWithFrame:(id)frame startSampleIndex:(unint64_t)index sampleCount:(unint64_t)count isLeafFrame:(BOOL)leafFrame
{
  v7 = *__error();
  v8 = _sa_logt();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [frame debugDescription];
    *buf = 136315138;
    uTF8String = [v9 UTF8String];
    _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "SACallTreeTruncatedLeafCallstacks using wrong creator for %s", buf, 0xCu);
  }

  *__error() = v7;
  v10 = [frame debugDescription];
  uTF8String2 = [v10 UTF8String];
  _SASetCrashLogMessage(368, "SACallTreeTruncatedLeafCallstacks using wrong creator for %s", v12, v13, v14, v15, v16, v17, uTF8String2);

  result = _os_crash();
  __break(1u);
  return result;
}

- (SACallTreeTruncatedLeafCallstacks)initWithFrame:(id)frame startSampleIndex:(unint64_t)index sampleCount:(unint64_t)count otherCallTreeDescription:(id)description
{
  v10.receiver = self;
  v10.super_class = SACallTreeTruncatedLeafCallstacks;
  v7 = [(SACallTreeFrame *)&v10 initWithFrame:frame startSampleIndex:index sampleCount:count isLeafFrame:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_otherCallTreeDescription, description);
  }

  return v8;
}

+ (id)callTreeFrameWithFrame:(uint64_t)frame startSampleIndex:(uint64_t)index sampleCount:(uint64_t)count otherCallTreeDescription:
{
  v5 = [objc_alloc(objc_opt_self()) initWithFrame:a2 startSampleIndex:frame sampleCount:index otherCallTreeDescription:count];

  return v5;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  SAJSONWriteDictionaryFirstEntry(stream, @"otherCallTree", self->_otherCallTreeDescription);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SACallTreeNode sampleCount](self, "sampleCount")}];
  SAJSONWriteDictionaryEntry(stream, @"count", v5);
}

@end