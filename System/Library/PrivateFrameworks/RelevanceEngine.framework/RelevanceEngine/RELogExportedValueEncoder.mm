@interface RELogExportedValueEncoder
+ (id)_dateFormatter;
- (void)writeArrayValuePairToStream:(id)a3 valueWriter:(id)a4 isLast:(BOOL)a5;
- (void)writeDate:(id)a3 toStream:(id)a4;
- (void)writeDictionaryValuePairToStream:(id)a3 keyWriter:(id)a4 valueWriter:(id)a5 isLast:(BOOL)a6;
- (void)writeNumber:(id)a3 toStream:(id)a4;
- (void)writeObjectStart:(id)a3 toStream:(id)a4;
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

- (void)writeDate:(id)a3 toStream:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _dateFormatter];
  v8 = [v7 stringFromDate:v6];

  [v5 re_writeString:v8];
}

- (void)writeNumber:(id)a3 toStream:(id)a4
{
  v5 = a4;
  v6 = [a3 stringValue];
  [v5 re_writeString:v6];
}

- (void)writeObjectStart:(id)a3 toStream:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = +[(RESingleton *)REInterfaceCache];
  v7 = [v6 exportedInterfaceClass:objc_opt_class()];

  if (v7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"<%@: %p>", objc_opt_class(), v9];
  }

  else
  {
    [v9 description];
  }
  v8 = ;
  [v5 re_writeString:v8];
}

- (void)writeDictionaryValuePairToStream:(id)a3 keyWriter:(id)a4 valueWriter:(id)a5 isLast:(BOOL)a6
{
  v8 = *(a4 + 2);
  v9 = a5;
  v10 = a3;
  v8(a4);
  [v10 re_writeString:@"="];
  v9[2](v9);

  [v10 re_writeString:@" "];
}

- (void)writeArrayValuePairToStream:(id)a3 valueWriter:(id)a4 isLast:(BOOL)a5
{
  v6 = *(a4 + 2);
  v7 = a3;
  v6(a4);
  [v7 re_writeString:@" "];
}

@end