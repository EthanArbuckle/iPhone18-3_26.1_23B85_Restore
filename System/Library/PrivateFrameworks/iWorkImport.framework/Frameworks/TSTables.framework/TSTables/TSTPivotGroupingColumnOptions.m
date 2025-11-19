@interface TSTPivotGroupingColumnOptions
+ (id)emptyOptions;
- (BOOL)isNotEmpty;
- (TSKUIDStruct)sortingAggregateRuleUid;
- (TSTPivotGroupingColumnOptions)initWithFlags:(int64_t)a3 sortingAggregateRuleUid:(TSKUIDStruct)a4;
@end

@implementation TSTPivotGroupingColumnOptions

- (TSTPivotGroupingColumnOptions)initWithFlags:(int64_t)a3 sortingAggregateRuleUid:(TSKUIDStruct)a4
{
  upper = a4._upper;
  lower = a4._lower;
  v8.receiver = self;
  v8.super_class = TSTPivotGroupingColumnOptions;
  result = [(TSTPivotGroupingColumnOptions *)&v8 init];
  if (result)
  {
    result->_flags = a3;
    result->_sortingAggregateRuleUid._lower = lower;
    result->_sortingAggregateRuleUid._upper = upper;
  }

  return result;
}

+ (id)emptyOptions
{
  if (qword_27CFB54D0 != -1)
  {
    sub_2216F794C();
  }

  v3 = qword_27CFB54C8;

  return v3;
}

- (BOOL)isNotEmpty
{
  if (self->_flags)
  {
    return 1;
  }

  else
  {
    return MEMORY[0x2821EA220](self->_sortingAggregateRuleUid._lower, self->_sortingAggregateRuleUid._upper);
  }
}

- (TSKUIDStruct)sortingAggregateRuleUid
{
  upper = self->_sortingAggregateRuleUid._upper;
  lower = self->_sortingAggregateRuleUid._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

@end