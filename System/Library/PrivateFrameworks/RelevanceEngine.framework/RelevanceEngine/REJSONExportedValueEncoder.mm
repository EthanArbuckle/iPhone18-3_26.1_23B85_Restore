@interface REJSONExportedValueEncoder
+ (id)_dateFormatter;
- (void)_writeValueAsJSON:(id)a3 toStream:(id)a4;
- (void)writeArrayValuePairToStream:(id)a3 valueWriter:(id)a4 isLast:(BOOL)a5;
- (void)writeDate:(id)a3 toStream:(id)a4;
- (void)writeDictionaryValuePairToStream:(id)a3 keyWriter:(id)a4 valueWriter:(id)a5 isLast:(BOOL)a6;
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

- (void)writeDate:(id)a3 toStream:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_opt_class() _dateFormatter];
  v8 = [v7 stringFromDate:v6];

  [v5 re_writeString:v8];
}

- (void)_writeValueAsJSON:(id)a3 toStream:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = MEMORY[0x277CCAAA0];
  v16 = a3;
  v7 = MEMORY[0x277CBEA60];
  v8 = a3;
  v9 = [v7 arrayWithObjects:&v16 count:1];
  v10 = [v6 dataWithJSONObject:v9 options:0 error:{0, v16, v17}];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = [v11 initWithData:v10 encoding:4];
  v13 = [v12 length];
  if (v13 >= 3)
  {
    v14 = [v12 substringWithRange:{1, v13 - 2}];

    [v5 re_writeString:v14];
    v12 = v14;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)writeDictionaryValuePairToStream:(id)a3 keyWriter:(id)a4 valueWriter:(id)a5 isLast:(BOOL)a6
{
  v11 = a3;
  v9 = a5;
  v10 = a4;
  [v11 re_writeString:@""];
  v10[2](v10);

  [v11 re_writeString:@""];
  [v11 re_writeString:@":"];
  v9[2](v9);

  if (!a6)
  {
    [v11 re_writeString:{@", "}];
  }
}

- (void)writeArrayValuePairToStream:(id)a3 valueWriter:(id)a4 isLast:(BOOL)a5
{
  v7 = a3;
  (*(a4 + 2))(a4);
  if (!a5)
  {
    [v7 re_writeString:{@", "}];
  }
}

@end