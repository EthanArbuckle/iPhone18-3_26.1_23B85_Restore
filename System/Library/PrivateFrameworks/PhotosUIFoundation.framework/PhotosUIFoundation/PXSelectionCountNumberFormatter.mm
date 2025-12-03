@interface PXSelectionCountNumberFormatter
- (PXSelectionCountNumberFormatter)init;
- (id)stringForObjectValue:(id)value;
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

    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [(NSNumberFormatter *)v2->_decimalNumberFormatter setLocale:currentLocale];

    [(NSNumberFormatter *)v2->_decimalNumberFormatter setGeneratesDecimalNumbers:1];
    [(NSNumberFormatter *)v2->_decimalNumberFormatter setNumberStyle:1];
    v2->_selectionNumberLimit = 9999;
  }

  return v2;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    integerValue = [valueCopy integerValue];
  }

  else
  {
    integerValue = 0;
  }

  selectionNumberLimit = [(PXSelectionCountNumberFormatter *)self selectionNumberLimit];
  decimalNumberFormatter = [(PXSelectionCountNumberFormatter *)self decimalNumberFormatter];
  if (integerValue <= selectionNumberLimit)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
    v12 = [decimalNumberFormatter stringFromNumber:v10];
  }

  else
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[PXSelectionCountNumberFormatter selectionNumberLimit](self, "selectionNumberLimit")}];
    v9 = [decimalNumberFormatter stringFromNumber:v8];

    v10 = PXPhotosUIFoundationBundle();
    v11 = [v10 localizedStringForKey:@"PXSelectionNumberFormatterOverflowFormat" value:&stru_1F2B87EE0 table:0];
    v12 = PFStringWithValidatedFormat();

    decimalNumberFormatter = v9;
  }

  return v12;
}

@end