@interface SiriSuggestionsIntelligence.DeviceListDelegate
- (void)deviceListModified:(id)a3;
@end

@implementation SiriSuggestionsIntelligence.DeviceListDelegate

- (void)deviceListModified:(id)a3
{
  if (a3)
  {
    sub_1DA3A6990(0, &qword_1EE102D20, 0x1E698B9B8);
    v4 = sub_1DA421D34();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1DA3A35EC(v4);
}

@end