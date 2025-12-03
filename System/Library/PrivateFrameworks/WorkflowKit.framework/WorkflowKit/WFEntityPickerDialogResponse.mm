@interface WFEntityPickerDialogResponse
- (BOOL)userRequestedAllOptions;
- (BOOL)userRequestedOpenApp;
- (WFEntityPickerDialogResponse)initWithBSXPCCoder:(id)coder;
- (WFEntityPickerDialogResponse)initWithCoder:(id)coder;
- (WFEntityPickerDialogResponse)initWithSelectedEntry:(id)entry;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFEntityPickerDialogResponse

- (void)encodeWithBSXPCCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFEntityPickerDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:coderCopy];
  v5 = [(WFEntityPickerDialogResponse *)self selectedEntry:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedEntry"];
}

- (WFEntityPickerDialogResponse)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFEntityPickerDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedEntry"];
    selectedEntry = v5->_selectedEntry;
    v5->_selectedEntry = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = WFEntityPickerDialogResponse;
  coderCopy = coder;
  [(WFDialogResponse *)&v6 encodeWithCoder:coderCopy];
  v5 = [(WFEntityPickerDialogResponse *)self selectedEntry:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"selectedEntry"];
}

- (WFEntityPickerDialogResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WFEntityPickerDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedEntry"];
    selectedEntry = v5->_selectedEntry;
    v5->_selectedEntry = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)userRequestedOpenApp
{
  selectedEntry = [(WFEntityPickerDialogResponse *)self selectedEntry];
  identifier = [selectedEntry identifier];
  v4 = [identifier isEqualToString:@"WFEntityPickerDialogResponseOpenAppEntryIdentifier"];

  return v4;
}

- (BOOL)userRequestedAllOptions
{
  selectedEntry = [(WFEntityPickerDialogResponse *)self selectedEntry];
  identifier = [selectedEntry identifier];
  v4 = [identifier isEqualToString:@"WFEntityPickerDialogResponseChooseEntryIdentifier"];

  return v4;
}

- (WFEntityPickerDialogResponse)initWithSelectedEntry:(id)entry
{
  entryCopy = entry;
  v10.receiver = self;
  v10.super_class = WFEntityPickerDialogResponse;
  v6 = [(WFDialogResponse *)&v10 initWithResponseCode:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectedEntry, entry);
    v8 = v7;
  }

  return v7;
}

@end