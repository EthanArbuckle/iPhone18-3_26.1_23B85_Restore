@interface StockDataFormatter
+ (id)sharedDataFormatter;
- (NSString)percentSymbol;
- (id)_locked_formatNumber:(id)number withPrecision:(unint64_t)precision useGroupSeparator:(BOOL)separator;
- (id)_locked_formatPercent:(id)percent withPrecision:(unint64_t)precision;
- (id)formattedChangeInPercentForStock:(id)stock;
- (id)formattedChangeInPointsForStock:(id)stock withPrecision:(unint64_t)precision droppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds;
- (id)formattedNumber:(id)number withPrecision:(unint64_t)precision useGroupSeparator:(BOOL)separator droppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds;
- (id)formattedPercent:(id)percent withPrecision:(unint64_t)precision;
- (id)formattedPriceForStock:(id)stock withPrecision:(unint64_t)precision droppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds;
- (id)initPrivate;
- (void)_resetLocale:(id)locale;
- (void)dealloc;
@end

@implementation StockDataFormatter

+ (id)sharedDataFormatter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__StockDataFormatter_sharedDataFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedDataFormatter_onceToken != -1)
  {
    dispatch_once(&sharedDataFormatter_onceToken, block);
  }

  v2 = sharedDataFormatter_instance;

  return v2;
}

uint64_t __41__StockDataFormatter_sharedDataFormatter__block_invoke()
{
  sharedDataFormatter_instance = [objc_alloc(objc_opt_class()) initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v9.receiver = self;
  v9.super_class = StockDataFormatter;
  v2 = [(StockDataFormatter *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.stocks.stock-decimal-formatter-queue", 0);
    decimalFormatterQueue = v2->_decimalFormatterQueue;
    v2->_decimalFormatterQueue = v3;

    v5 = dispatch_queue_create("com.apple.stocks.stock-percent-formatter-queue", 0);
    percentFormatterQueue = v2->_percentFormatterQueue;
    v2->_percentFormatterQueue = v5;

    [(StockDataFormatter *)v2 _resetLocale:0];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__resetLocale_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = StockDataFormatter;
  [(StockDataFormatter *)&v4 dealloc];
}

- (id)formattedChangeInPercentForStock:(id)stock
{
  stockCopy = stock;
  change = [stockCopy change];
  [change floatValue];
  v7 = v6;

  price = [stockCopy price];

  [price floatValue];
  v10 = v9;

  *&v11 = v10 - v7;
  if ((v10 - v7) == 0.0)
  {
    v12 = +[Stock BlankValueString];
  }

  else
  {
    *&v11 = fabsf(v7 / *&v11);
    v13 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v12 = [(StockDataFormatter *)self formattedPercent:v13];
  }

  return v12;
}

- (id)formattedChangeInPointsForStock:(id)stock withPrecision:(unint64_t)precision droppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds
{
  change = [stock change];
  [change floatValue];
  v10 = v9;

  *&v11 = fabsf(v10);
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v13 = [(StockDataFormatter *)self formattedNumber:v12 withPrecision:precision useGroupSeparator:1 droppingFractionDigitsIfLengthExceeds:exceeds];

  return v13;
}

- (id)formattedPriceForStock:(id)stock withPrecision:(unint64_t)precision droppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds
{
  price = [stock price];
  [price floatValue];
  v10 = v9;

  LODWORD(v11) = v10;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v13 = [(StockDataFormatter *)self formattedNumber:v12 withPrecision:precision useGroupSeparator:1 droppingFractionDigitsIfLengthExceeds:exceeds];

  return v13;
}

- (id)formattedNumber:(id)number withPrecision:(unint64_t)precision useGroupSeparator:(BOOL)separator droppingFractionDigitsIfLengthExceeds:(unint64_t)exceeds
{
  numberCopy = number;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  decimalFormatterQueue = [(StockDataFormatter *)self decimalFormatterQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__StockDataFormatter_formattedNumber_withPrecision_useGroupSeparator_droppingFractionDigitsIfLengthExceeds___block_invoke;
  v15[3] = &unk_279D15B78;
  v15[4] = self;
  v16 = numberCopy;
  v17 = &v21;
  precisionCopy = precision;
  separatorCopy = separator;
  exceedsCopy = exceeds;
  v12 = numberCopy;
  dispatch_sync(decimalFormatterQueue, v15);

  v13 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v13;
}

unint64_t __108__StockDataFormatter_formattedNumber_withPrecision_useGroupSeparator_droppingFractionDigitsIfLengthExceeds___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _locked_formatNumber:*(a1 + 40) withPrecision:*(a1 + 56) useGroupSeparator:*(a1 + 72)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = [*(*(*(a1 + 48) + 8) + 40) length];
  if (result > *(a1 + 64))
  {
    *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _locked_formatNumber:*(a1 + 40) withPrecision:0 useGroupSeparator:*(a1 + 72)];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)formattedPercent:(id)percent withPrecision:(unint64_t)precision
{
  percentCopy = percent;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  percentFormatterQueue = [(StockDataFormatter *)self percentFormatterQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__StockDataFormatter_formattedPercent_withPrecision___block_invoke;
  v11[3] = &unk_279D15BA0;
  v11[4] = self;
  v12 = percentCopy;
  v13 = &v15;
  precisionCopy = precision;
  v8 = percentCopy;
  dispatch_sync(percentFormatterQueue, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __53__StockDataFormatter_formattedPercent_withPrecision___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _locked_formatPercent:*(a1 + 40) withPrecision:*(a1 + 56)];

  return MEMORY[0x2821F96F8]();
}

- (id)_locked_formatNumber:(id)number withPrecision:(unint64_t)precision useGroupSeparator:(BOOL)separator
{
  separatorCopy = separator;
  numberCopy = number;
  decimalFormatter = [(StockDataFormatter *)self decimalFormatter];
  [decimalFormatter setMaximumFractionDigits:precision];

  decimalFormatter2 = [(StockDataFormatter *)self decimalFormatter];
  [decimalFormatter2 setMinimumFractionDigits:precision];

  decimalFormatter3 = [(StockDataFormatter *)self decimalFormatter];
  [decimalFormatter3 setUsesGroupingSeparator:separatorCopy];

  decimalFormatter4 = [(StockDataFormatter *)self decimalFormatter];
  v13 = [decimalFormatter4 stringFromNumber:numberCopy];

  v14 = +[StocksPreferences sharedPreferences];
  LODWORD(decimalFormatter4) = [v14 textAttachmentDirectionIsRightToLeft];

  if (decimalFormatter4)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%@", 8207, v13];

    v13 = v15;
  }

  return v13;
}

- (id)_locked_formatPercent:(id)percent withPrecision:(unint64_t)precision
{
  percentCopy = percent;
  percentFormatter = [(StockDataFormatter *)self percentFormatter];
  [percentFormatter setMaximumFractionDigits:precision];

  percentFormatter2 = [(StockDataFormatter *)self percentFormatter];
  [percentFormatter2 setMinimumFractionDigits:precision];

  percentFormatter3 = [(StockDataFormatter *)self percentFormatter];
  v10 = [percentFormatter3 stringFromNumber:percentCopy];

  return v10;
}

- (void)_resetLocale:(id)locale
{
  decimalFormatterQueue = [(StockDataFormatter *)self decimalFormatterQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__StockDataFormatter__resetLocale___block_invoke;
  block[3] = &unk_279D15BF0;
  block[4] = self;
  dispatch_async(decimalFormatterQueue, block);

  percentFormatterQueue = [(StockDataFormatter *)self percentFormatterQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__StockDataFormatter__resetLocale___block_invoke_2;
  v6[3] = &unk_279D15BF0;
  v6[4] = self;
  dispatch_async(percentFormatterQueue, v6);
}

void __35__StockDataFormatter__resetLocale___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setNumberStyle:1];
  [v2 setMinimumIntegerDigits:1];
  [*(a1 + 32) setDecimalFormatter:v2];

  v3 = [*(a1 + 32) _locked_formatNumber:&unk_287C80EB0 withPrecision:0 useGroupSeparator:0];
  v4 = [@"1234567890" isEqualToString:v3];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__StockDataFormatter__resetLocale___block_invoke_32;
  v5[3] = &unk_279D15BC8;
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __35__StockDataFormatter__resetLocale___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v2 setNumberStyle:3];
  [v2 setMinimumIntegerDigits:1];
  [*(a1 + 32) setPercentFormatter:v2];
}

- (NSString)percentSymbol
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  percentFormatterQueue = [(StockDataFormatter *)self percentFormatterQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__StockDataFormatter_percentSymbol__block_invoke;
  v6[3] = &unk_279D15C18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(percentFormatterQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __35__StockDataFormatter_percentSymbol__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) percentFormatter];
  v2 = [v5 percentSymbol];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end