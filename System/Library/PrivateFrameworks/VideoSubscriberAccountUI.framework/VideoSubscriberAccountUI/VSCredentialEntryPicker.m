@interface VSCredentialEntryPicker
- (id)pickerItemAtCurrentIndex;
@end

@implementation VSCredentialEntryPicker

- (id)pickerItemAtCurrentIndex
{
  v3 = [(VSCredentialEntryPicker *)self pickerItems];
  v4 = [v3 objectAtIndex:{-[VSCredentialEntryPicker selectedIndex](self, "selectedIndex")}];

  return v4;
}

@end