@interface TSUDecimalFormatter
+ (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)style locale:(id)locale formattingSymbols:(id)symbols;
- (NSString)currencySymbol;
- (NSString)exponentSymbol;
- (NSString)minusSign;
- (TSUDecimalFormatter)initWithLocale:(id)locale style:(int64_t)style;
- (id)createStringWithValue:(double)value;
- (void)dealloc;
- (void)setMinFractionDigits:(int)digits maxFractionDigits:(int)fractionDigits;
@end

@implementation TSUDecimalFormatter

- (TSUDecimalFormatter)initWithLocale:(id)locale style:(int64_t)style
{
  localeCopy = locale;
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

- (id)createStringWithValue:(double)value
{
  formatter = self->_formatter;
  valuePtr = value;
  return CFNumberFormatterCreateStringWithValue(*MEMORY[0x277CBECE8], formatter->var1, kCFNumberDoubleType, &valuePtr);
}

- (void)setMinFractionDigits:(int)digits maxFractionDigits:(int)fractionDigits
{
  v4 = *&fractionDigits;
  sub_2770DDAA4(self->_formatter, *&digits);
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

+ (id)createHarmonizedDecimalFormatterOfStyle:(int64_t)style locale:(id)locale formattingSymbols:(id)symbols
{
  localeCopy = locale;
  symbolsCopy = symbols;
  v9 = [[TSUDecimalFormatter alloc] initWithLocale:localeCopy style:style];
  formatter = [(TSUDecimalFormatter *)v9 formatter];
  sub_2770DE238(formatter, v11, style, symbolsCopy);

  return v9;
}

@end