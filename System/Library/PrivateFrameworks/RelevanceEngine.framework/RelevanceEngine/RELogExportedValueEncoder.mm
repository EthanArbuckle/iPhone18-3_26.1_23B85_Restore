@interface RELogExportedValueEncoder
+ (id)_dateFormatter;
- (void)writeArrayValuePairToStream:(id)stream valueWriter:(id)writer isLast:(BOOL)last;
- (void)writeDate:(id)date toStream:(id)stream;
- (void)writeDictionaryValuePairToStream:(id)stream keyWriter:(id)writer valueWriter:(id)valueWriter isLast:(BOOL)last;
- (void)writeNumber:(id)number toStream:(id)stream;
- (void)writeObjectStart:(id)start toStream:(id)stream;
@end

@implementation RELogExportedValueEncoder

+ (id)_dateFormatter
{
  if (_dateFormatter_onceToken_80 != -1)
  {
    +[RELogExportedValueEncoder _dateFormatter];
  }

  v3 = _dateFormatter_DateFormatter_79;

  return v3;
}

uint64_t __43__RELogExportedValueEncoder__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = _dateFormatter_DateFormatter_79;
  _dateFormatter_DateFormatter_79 = v0;

  v2 = _dateFormatter_DateFormatter_79;

  return [v2 setFormatOptions:2035];
}

- (void)writeDate:(id)date toStream:(id)stream
{
  streamCopy = stream;
  dateCopy = date;
  _dateFormatter = [objc_opt_class() _dateFormatter];
  v8 = [_dateFormatter stringFromDate:dateCopy];

  [streamCopy re_writeString:v8];
}

- (void)writeNumber:(id)number toStream:(id)stream
{
  streamCopy = stream;
  stringValue = [number stringValue];
  [streamCopy re_writeString:stringValue];
}

- (void)writeObjectStart:(id)start toStream:(id)stream
{
  startCopy = start;
  streamCopy = stream;
  v6 = +[(RESingleton *)REInterfaceCache];
  v7 = [v6 exportedInterfaceClass:objc_opt_class()];

  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), startCopy];
  }

  else
  {
    [startCopy description];
  }
  v8 = ;
  [streamCopy re_writeString:v8];
}

- (void)writeDictionaryValuePairToStream:(id)stream keyWriter:(id)writer valueWriter:(id)valueWriter isLast:(BOOL)last
{
  v8 = *(writer + 2);
  valueWriterCopy = valueWriter;
  streamCopy = stream;
  v8(writer);
  [streamCopy re_writeString:@"="];
  valueWriterCopy[2](valueWriterCopy);

  [streamCopy re_writeString:@" "];
}

- (void)writeArrayValuePairToStream:(id)stream valueWriter:(id)writer isLast:(BOOL)last
{
  v6 = *(writer + 2);
  streamCopy = stream;
  v6(writer);
  [streamCopy re_writeString:@" "];
}

@end