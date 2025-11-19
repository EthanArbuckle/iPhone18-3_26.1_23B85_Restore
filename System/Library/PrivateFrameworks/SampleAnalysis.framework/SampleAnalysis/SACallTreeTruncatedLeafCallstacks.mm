@interface SACallTreeTruncatedLeafCallstacks
+ (id)callTreeFrameWithFrame:(id)a3 startSampleIndex:(unint64_t)a4 sampleCount:(unint64_t)a5 isLeafFrame:(BOOL)a6;
+ (id)callTreeFrameWithFrame:(uint64_t)a3 startSampleIndex:(uint64_t)a4 sampleCount:(uint64_t)a5 otherCallTreeDescription:;
- (SACallTreeTruncatedLeafCallstacks)initWithFrame:(id)a3 startSampleIndex:(unint64_t)a4 sampleCount:(unint64_t)a5 otherCallTreeDescription:(id)a6;
- (void)writeJSONDictionaryEntriesToStream:(id)a3;
@end

@implementation SACallTreeTruncatedLeafCallstacks

+ (id)callTreeFrameWithFrame:(id)a3 startSampleIndex:(unint64_t)a4 sampleCount:(unint64_t)a5 isLeafFrame:(BOOL)a6
{
  v7 = *__error();
  v8 = _sa_logt();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = [a3 debugDescription];
    *buf = 136315138;
    v20 = [v9 UTF8String];
    _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "SACallTreeTruncatedLeafCallstacks using wrong creator for %s", buf, 0xCu);
  }

  *__error() = v7;
  v10 = [a3 debugDescription];
  v11 = [v10 UTF8String];
  _SASetCrashLogMessage(368, "SACallTreeTruncatedLeafCallstacks using wrong creator for %s", v12, v13, v14, v15, v16, v17, v11);

  result = _os_crash();
  __break(1u);
  return result;
}

- (SACallTreeTruncatedLeafCallstacks)initWithFrame:(id)a3 startSampleIndex:(unint64_t)a4 sampleCount:(unint64_t)a5 otherCallTreeDescription:(id)a6
{
  v10.receiver = self;
  v10.super_class = SACallTreeTruncatedLeafCallstacks;
  v7 = [(SACallTreeFrame *)&v10 initWithFrame:a3 startSampleIndex:a4 sampleCount:a5 isLeafFrame:1];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_otherCallTreeDescription, a6);
  }

  return v8;
}

+ (id)callTreeFrameWithFrame:(uint64_t)a3 startSampleIndex:(uint64_t)a4 sampleCount:(uint64_t)a5 otherCallTreeDescription:
{
  v5 = [objc_alloc(objc_opt_self()) initWithFrame:a2 startSampleIndex:a3 sampleCount:a4 otherCallTreeDescription:a5];

  return v5;
}

- (void)writeJSONDictionaryEntriesToStream:(id)a3
{
  SAJSONWriteDictionaryFirstEntry(a3, @"otherCallTree", self->_otherCallTreeDescription);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SACallTreeNode sampleCount](self, "sampleCount")}];
  SAJSONWriteDictionaryEntry(a3, @"count", v5);
}

@end