@interface VSCredentialEntryPicker
- (id)pickerItemAtCurrentIndex;
@end

@implementation VSCredentialEntryPicker

- (id)pickerItemAtCurrentIndex
{
  pickerItems = [(VSCredentialEntryPicker *)self pickerItems];
  v4 = [pickerItems objectAtIndex:{-[VSCredentialEntryPicker selectedIndex](self, "selectedIndex")}];

  return v4;
}

@end