@interface REJSONExportedValueEncoder
+ (id)_dateFormatter;
- (void)_writeValueAsJSON:(id)n toStream:(id)stream;
- (void)writeArrayValuePairToStream:(id)stream valueWriter:(id)writer isLast:(BOOL)last;
- (void)writeDate:(id)date toStream:(id)stream;
- (void)writeDictionaryValuePairToStream:(id)stream keyWriter:(id)writer valueWriter:(id)valueWriter isLast:(BOOL)last;
@end

@implementation REJSONExportedValueEncoder

+ (id)_dateFormatter
{
  if (_dateFormatter_onceToken != -1)
  {
    +[REJSONExportedValueEncoder _dateFormatter];
  }

  v3 = _dateFormatter_DateFormatter;

  return v3;
}

uint64_t __44__REJSONExportedValueEncoder__dateFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAA68]);
  v1 = _dateFormatter_DateFormatter;
  _dateFormatter_DateFormatter = v0;

  v2 = _dateFormatter_DateFormatter;

  return [v2 setFormatOptions:1907];
}

- (void)writeDate:(id)date toStream:(id)stream
{
  streamCopy = stream;
  dateCopy = date;
  _dateFormatter = [objc_opt_class() _dateFormatter];
  v8 = [_dateFormatter stringFromDate:dateCopy];

  [streamCopy re_writeString:v8];
}

- (void)_writeValueAsJSON:(id)n toStream:(id)stream
{
  v17 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  v6 = MEMORY[0x277CCAAA0];
  nCopy = n;
  v7 = MEMORY[0x277CBEA60];
  nCopy2 = n;
  v9 = [v7 arrayWithObjects:&nCopy count:1];
  v10 = [v6 dataWithJSONObject:v9 options:0 error:{0, nCopy, v17}];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v11 initWithData:v10 encoding:4];
  v13 = [v12 length];
  if (v13 >= 3)
  {
    v14 = [v12 substringWithRange:{1, v13 - 2}];

    [streamCopy re_writeString:v14];
    v12 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)writeDictionaryValuePairToStream:(id)stream keyWriter:(id)writer valueWriter:(id)valueWriter isLast:(BOOL)last
{
  streamCopy = stream;
  valueWriterCopy = valueWriter;
  writerCopy = writer;
  [streamCopy re_writeString:@""];
  writerCopy[2](writerCopy);

  [streamCopy re_writeString:@""];
  [streamCopy re_writeString:@":"];
  valueWriterCopy[2](valueWriterCopy);

  if (!last)
  {
    [streamCopy re_writeString:{@", "}];
  }
}

- (void)writeArrayValuePairToStream:(id)stream valueWriter:(id)writer isLast:(BOOL)last
{
  streamCopy = stream;
  (*(writer + 2))(writer);
  if (!last)
  {
    [streamCopy re_writeString:{@", "}];
  }
}

@end