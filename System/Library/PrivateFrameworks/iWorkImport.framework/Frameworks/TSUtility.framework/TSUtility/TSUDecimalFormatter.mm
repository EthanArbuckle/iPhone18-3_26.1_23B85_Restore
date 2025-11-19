@interface TSUDecimalFormatter
+ (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)a3 locale:(id)a4 formattingSymbols:(id)a5;
- (NSString)currencySymbol;
- (NSString)exponentSymbol;
- (NSString)minusSign;
- (TSUDecimalFormatter)initWithLocale:(id)a3 style:(int64_t)a4;
- (id)createStringWithValue:(double)a3;
- (void)dealloc;
- (void)setMinFractionDigits:(int)a3 maxFractionDigits:(int)a4;
@end

@implementation TSUDecimalFormatter

- (TSUDecimalFormatter)initWithLocale:(id)a3 style:(int64_t)a4
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = TSUDecimalFormatter;
  if ([(TSUDecimalFormatter *)&v7 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  formatter = self->_formatter;
  if (formatter)
  {
    (*(formatter->var0 + 1))(formatter, a2);
  }

  v4.receiver = self;
  v4.super_class = TSUDecimalFormatter;
  [(TSUDecimalFormatter *)&v4 dealloc];
}

- (id)createStringWithValue:(double)a3
{
  formatter = self->_formatter;
  valuePtr = a3;
  return CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], formatter->var1, kCFNumberDoubleType, &valuePtr);
}

- (void)setMinFractionDigits:(int)a3 maxFractionDigits:(int)a4
{
  v4 = *&a4;
  sub_2770DDAA4(self->_formatter, *&a3);
  formatter = self->_formatter;

  sub_2770DDB7C(formatter, v4);
}

- (NSString)minusSign
{
  v2 = CFNumberFormatterCopyProperty(self->_formatter->var1, *MEMORY[0x277CBEF70]);

  return v2;
}

- (NSString)exponentSymbol
{
  v2 = CFNumberFormatterCopyProperty(self->_formatter->var1, *MEMORY[0x277CBEF20]);

  return v2;
}

- (NSString)currencySymbol
{
  v2 = CFNumberFormatterCopyProperty(self->_formatter->var1, *MEMORY[0x277CBEF10]);

  return v2;
}

+ (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)a3 locale:(id)a4 formattingSymbols:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [[TSUDecimalFormatter alloc] initWithLocale:v7 style:a3];
  v10 = [(TSUDecimalFormatter *)v9 formatter];
  sub_2770DE238(v10, v11, a3, v8);

  return v9;
}

@end