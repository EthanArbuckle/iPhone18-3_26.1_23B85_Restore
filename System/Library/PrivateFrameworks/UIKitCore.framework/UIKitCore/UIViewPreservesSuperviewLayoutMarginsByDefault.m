@interface UIViewPreservesSuperviewLayoutMarginsByDefault
@end

@implementation UIViewPreservesSuperviewLayoutMarginsByDefault

uint64_t ___UIViewPreservesSuperviewLayoutMarginsByDefault_block_invoke()
{
  v0 = _UIInternalPreferenceUsesDefault(&_UIInternalPreference_UIViewPreservesSuperviewLayoutMarginsDefault, @"UIViewPreservesSuperviewLayoutMarginsDefault", _UIInternalPreferenceUpdateInteger);
  v1 = qword_1ED48B7E0;
  if (v0)
  {
    v1 = -1;
  }

  if (v1 == -1)
  {
    result = 0;
  }

  else if (v1 == 1)
  {
    result = 1;
  }

  else
  {
    result = _UISolariumEnabled();
  }

  byte_1EA9946E9 = result;
  return result;
}

@end