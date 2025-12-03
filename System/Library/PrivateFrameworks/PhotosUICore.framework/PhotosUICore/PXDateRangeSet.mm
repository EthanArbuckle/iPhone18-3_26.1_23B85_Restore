@interface PXDateRangeSet
+ (id)dateRangeSet;
+ (id)dateRangeSetWithDateRange:(id)range;
- (BOOL)isEqual:(id)equal;
- (PXDateRangeSet)init;
- (PXDateRangeSet)initWithDateRange:(id)range;
- (id)dateRanges;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)count;
@end

@implementation PXDateRangeSet

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PXDateRangeSet;
  v4 = [(PXDateRangeSet *)&v8 description];
  _dateRanges = [(PXDateRangeSet *)self _dateRanges];
  v6 = [v3 stringWithFormat:@"<%@ dateRanges=%@>", v4, _dateRanges];

  return v6;
}

- (id)dateRanges
{
  _dateRanges = [(PXDateRangeSet *)self _dateRanges];
  v3 = [_dateRanges copy];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_7;
  }

  dateRanges = self->__dateRanges;
  if (dateRanges == equalCopy->__dateRanges)
  {
LABEL_5:
    v6 = 1;
  }

  else
  {
    v6 = [(NSMutableArray *)dateRanges isEqualToArray:?];
  }

LABEL_7:

  return v6;
}

- (int64_t)count
{
  _dateRanges = [(PXDateRangeSet *)self _dateRanges];
  v3 = [_dateRanges count];

  return v3;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXMutableDateRangeSet);
  _dateRanges = [(PXDateRangeSet *)self _dateRanges];
  v6 = [_dateRanges mutableCopy];
  [(PXDateRangeSet *)v4 set_dateRanges:v6];

  return v4;
}

+ (id)dateRangeSet
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)dateRangeSetWithDateRange:(id)range
{
  rangeCopy = range;
  v4 = [objc_alloc(objc_opt_class()) initWithDateRange:rangeCopy];

  return v4;
}

- (PXDateRangeSet)initWithDateRange:(id)range
{
  rangeCopy = range;
  v9.receiver = self;
  v9.super_class = PXDateRangeSet;
  v5 = [(PXDateRangeSet *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{rangeCopy, 0}];
    dateRanges = v5->__dateRanges;
    v5->__dateRanges = v6;
  }

  return v5;
}

- (PXDateRangeSet)init
{
  v6.receiver = self;
  v6.super_class = PXDateRangeSet;
  v2 = [(PXDateRangeSet *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    dateRanges = v2->__dateRanges;
    v2->__dateRanges = v3;
  }

  return v2;
}

@end