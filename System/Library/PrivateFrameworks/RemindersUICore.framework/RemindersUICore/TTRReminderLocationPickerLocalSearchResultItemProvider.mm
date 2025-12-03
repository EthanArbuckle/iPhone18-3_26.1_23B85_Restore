@interface TTRReminderLocationPickerLocalSearchResultItemProvider
- (void)completer:(id)completer didFailWithError:(id)error;
- (void)completerDidUpdateResults:(id)results;
@end

@implementation TTRReminderLocationPickerLocalSearchResultItemProvider

- (void)completerDidUpdateResults:(id)results
{
  resultsCopy = results;
  selfCopy = self;
  TTRReminderLocationPickerLocalSearchResultItemProvider.completerDidUpdateResults(_:)(resultsCopy);
}

- (void)completer:(id)completer didFailWithError:(id)error
{
  completerCopy = completer;
  errorCopy = error;
  selfCopy = self;
  sub_21D3D3188(errorCopy);
}

@end