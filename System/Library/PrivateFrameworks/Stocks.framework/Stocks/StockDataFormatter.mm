@interface StockDataFormatter
+ (id)sharedDataFormatter;
- (NSString)percentSymbol;
- (id)_locked_formatNumber:(id)a3 withPrecision:(unint64_t)a4 useGroupSeparator:(BOOL)a5;
- (id)_locked_formatPercent:(id)a3 withPrecision:(unint64_t)a4;
- (id)formattedChangeInPercentForStock:(id)a3;
- (id)formattedChangeInPointsForStock:(id)a3 withPrecision:(unint64_t)a4 droppingFractionDigitsIfLengthExceeds:(unint64_t)a5;
- (id)formattedNumber:(id)a3 withPrecision:(unint64_t)a4 useGroupSeparator:(BOOL)a5 droppingFractionDigitsIfLengthExceeds:(unint64_t)a6;
- (id)formattedPercent:(id)a3 withPrecision:(unint64_t)a4;
- (id)formattedPriceForStock:(id)a3 withPrecision:(unint64_t)a4 droppingFractionDigitsIfLengthExceeds:(unint64_t)a5;
- (id)initPrivate;
- (void)_resetLocale:(id)a3;
- (void)dealloc;
@end

@implementation StockDataFormatter

+ (id)sharedDataFormatter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__StockDataFormatter_sharedDataFormatter__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__resetLocale_ name:*MEMORY[0x277CBE620] object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = StockDataFormatter;
  [(StockDataFormatter *)&v4 dealloc];
}

- (id)formattedChangeInPercentForStock:(id)a3
{
  v4 = a3;
  v5 = [v4 change];
  [v5 floatValue];
  v7 = v6;

  v8 = [v4 price];

  [v8 floatValue];
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

- (id)formattedChangeInPointsForStock:(id)a3 withPrecision:(unint64_t)a4 droppingFractionDigitsIfLengthExceeds:(unint64_t)a5
{
  v8 = [a3 change];
  [v8 floatValue];
  v10 = v9;

  *&v11 = fabsf(v10);
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v13 = [(StockDataFormatter *)self formattedNumber:v12 withPrecision:a4 useGroupSeparator:1 droppingFractionDigitsIfLengthExceeds:a5];

  return v13;
}

- (id)formattedPriceForStock:(id)a3 withPrecision:(unint64_t)a4 droppingFractionDigitsIfLengthExceeds:(unint64_t)a5
{
  v8 = [a3 price];
  [v8 floatValue];
  v10 = v9;

  LODWORD(v11) = v10;
  v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v13 = [(StockDataFormatter *)self formattedNumber:v12 withPrecision:a4 useGroupSeparator:1 droppingFractionDigitsIfLengthExceeds:a5];

  return v13;
}

- (id)formattedNumber:(id)a3 withPrecision:(unint64_t)a4 useGroupSeparator:(BOOL)a5 droppingFractionDigitsIfLengthExceeds:(unint64_t)a6
{
  v10 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v11 = [(StockDataFormatter *)self decimalFormatterQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __108__StockDataFormatter_formattedNumber_withPrecision_useGroupSeparator_droppingFractionDigitsIfLengthExceeds___block_invoke;
  v15[3] = &unk_279D15B78;
  v15[4] = self;
  v16 = v10;
  v17 = &v21;
  v18 = a4;
  v20 = a5;
  v19 = a6;
  v12 = v10;
  dispatch_sync(v11, v15);

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

- (id)formattedPercent:(id)a3 withPrecision:(unint64_t)a4
{
  v6 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v7 = [(StockDataFormatter *)self percentFormatterQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__StockDataFormatter_formattedPercent_withPrecision___block_invoke;
  v11[3] = &unk_279D15BA0;
  v11[4] = self;
  v12 = v6;
  v13 = &v15;
  v14 = a4;
  v8 = v6;
  dispatch_sync(v7, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

uint64_t __53__StockDataFormatter_formattedPercent_withPrecision___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _locked_formatPercent:*(a1 + 40) withPrecision:*(a1 + 56)];

  return MEMORY[0x2821F96F8]();
}

- (id)_locked_formatNumber:(id)a3 withPrecision:(unint64_t)a4 useGroupSeparator:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = [(StockDataFormatter *)self decimalFormatter];
  [v9 setMaximumFractionDigits:a4];

  v10 = [(StockDataFormatter *)self decimalFormatter];
  [v10 setMinimumFractionDigits:a4];

  v11 = [(StockDataFormatter *)self decimalFormatter];
  [v11 setUsesGroupingSeparator:v5];

  v12 = [(StockDataFormatter *)self decimalFormatter];
  v13 = [v12 stringFromNumber:v8];

  v14 = +[StocksPreferences sharedPreferences];
  LODWORD(v12) = [v14 textAttachmentDirectionIsRightToLeft];

  if (v12)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%@", 8207, v13];

    v13 = v15;
  }

  return v13;
}

- (id)_locked_formatPercent:(id)a3 withPrecision:(unint64_t)a4
{
  v6 = a3;
  v7 = [(StockDataFormatter *)self percentFormatter];
  [v7 setMaximumFractionDigits:a4];

  v8 = [(StockDataFormatter *)self percentFormatter];
  [v8 setMinimumFractionDigits:a4];

  v9 = [(StockDataFormatter *)self percentFormatter];
  v10 = [v9 stringFromNumber:v6];

  return v10;
}

- (void)_resetLocale:(id)a3
{
  v4 = [(StockDataFormatter *)self decimalFormatterQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__StockDataFormatter__resetLocale___block_invoke;
  block[3] = &unk_279D15BF0;
  block[4] = self;
  dispatch_async(v4, block);

  v5 = [(StockDataFormatter *)self percentFormatterQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__StockDataFormatter__resetLocale___block_invoke_2;
  v6[3] = &unk_279D15BF0;
  v6[4] = self;
  dispatch_async(v5, v6);
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
  v3 = [(StockDataFormatter *)self percentFormatterQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__StockDataFormatter_percentSymbol__block_invoke;
  v6[3] = &unk_279D15C18;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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