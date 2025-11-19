@interface PGTimeTitleOptions
- (PGTimeTitleOptions)init;
@end

@implementation PGTimeTitleOptions

- (PGTimeTitleOptions)init
{
  v6.receiver = self;
  v6.super_class = PGTimeTitleOptions;
  v2 = [(PGTimeTitleOptions *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    momentNodes = v2->_momentNodes;
    v2->_momentNodes = v3;

    v2->_allowedFormats = 7;
    *&v2->_filterDates = 1;
    v2->_filterForSignificantDateNodes = 1;
  }

  return v2;
}

@end