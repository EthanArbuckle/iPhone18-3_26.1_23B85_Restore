@interface PGLocationTitleOptions
+ (id)onlyPeopleLocationTitleOptions;
- (PGLocationTitleOptions)init;
@end

@implementation PGLocationTitleOptions

- (PGLocationTitleOptions)init
{
  v8.receiver = self;
  v8.super_class = PGLocationTitleOptions;
  v2 = [(PGLocationTitleOptions *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = [MEMORY[0x277CBEB98] set];
    v6 = *(v2 + 4);
    *(v2 + 4) = v5;

    *(v2 + 40) = vdupq_n_s64(1uLL);
    *(v2 + 56) = xmmword_22F783EE0;
    *(v2 + 2) = 65537;
    *(v2 + 6) = 0;
  }

  return v2;
}

+ (id)onlyPeopleLocationTitleOptions
{
  v2 = objc_alloc_init(PGLocationTitleOptions);
  [(PGLocationTitleOptions *)v2 setAoiDisplayType:0];
  [(PGLocationTitleOptions *)v2 setFilterSignificantLocationsType:0];
  [(PGLocationTitleOptions *)v2 setPeopleDisplayType:2];
  [(PGLocationTitleOptions *)v2 setUseTripTitleForLongDuration:0];
  [(PGLocationTitleOptions *)v2 setUseCities:0];

  return v2;
}

@end