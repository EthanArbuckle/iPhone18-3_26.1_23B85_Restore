@interface UISolariumEnabled
@end

@implementation UISolariumEnabled

void ___UISolariumEnabled_block_invoke()
{
  if (qword_1ED49E168 != -1)
  {
    dispatch_once(&qword_1ED49E168, &__block_literal_global_27_0);
  }

  if (byte_1ED49E119)
  {
    v0 = +[UIDevice currentDevice];
    _MergedGlobals_1116 = [v0 userInterfaceIdiom] != 6;
  }

  else
  {
    _MergedGlobals_1116 = 0;
  }
}

@end