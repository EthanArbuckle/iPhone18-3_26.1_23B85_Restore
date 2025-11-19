@interface PXSelectionCountNumberFormatter
- (PXSelectionCountNumberFormatter)init;
- (id)stringForObjectValue:(id)a3;
@end

@implementation PXSelectionCountNumberFormatter

- (PXSelectionCountNumberFormatter)init
{
  v7.receiver = self;
  v7.super_class = PXSelectionCountNumberFormatter;
  v2 = [(PXSelectionCountNumberFormatter *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    decimalNumberFormatter = v2->_decimalNumberFormatter;
    v2->_decimalNumberFormatter = v3;

    v5 = [MEMORY[0x1E695DF58] currentLocale];
    [(NSNumberFormatter *)v2->_decimalNumberFormatter setLocale:v5];

    [(NSNumberFormatter *)v2->_decimalNumberFormatter setGeneratesDecimalNumbers:1];
    [(NSNumberFormatter *)v2->_decimalNumberFormatter setNumberStyle:1];
    v2->_selectionNumberLimit = 9999;
  }

  return v2;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(PXSelectionCountNumberFormatter *)self selectionNumberLimit];
  v7 = [(PXSelectionCountNumberFormatter *)self decimalNumberFormatter];
  if (v5 <= v6)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v12 = [v7 stringFromNumber:v10];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXSelectionCountNumberFormatter selectionNumberLimit](self, "selectionNumberLimit")}];
    v9 = [v7 stringFromNumber:v8];

    v10 = PXPhotosUIFoundationBundle();
    v11 = [v10 localizedStringForKey:@"PXSelectionNumberFormatterOverflowFormat" value:&stru_1F2B87EE0 table:0];
    v12 = PFStringWithValidatedFormat();

    v7 = v9;
  }

  return v12;
}

@end