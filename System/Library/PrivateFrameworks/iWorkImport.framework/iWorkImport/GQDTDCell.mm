@interface GQDTDCell
- (__CFString)getDateFormat;
@end

@implementation GQDTDCell

- (__CFString)getDateFormat
{
  v4 = 0;
  v2 = [(GQDSStyle *)self->super.super.mStyle hasValueForObjectProperty:123 value:&v4];
  result = 0;
  if (v2)
  {
    return [v4 formatString];
  }

  return result;
}

@end