@interface SiriSuggestionsIntelligence.DeviceListDelegate
- (void)deviceListModified:(id)modified;
@end

@implementation SiriSuggestionsIntelligence.DeviceListDelegate

- (void)deviceListModified:(id)modified
{
  if (modified)
  {
    sub_1DA3A6990(0, &qword_1EE102D20, 0x1E698B9B8);
    v4 = sub_1DA421D34();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1DA3A35EC(v4);
}

@end