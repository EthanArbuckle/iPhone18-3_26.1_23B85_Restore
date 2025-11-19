@interface WFEntityPickerDialogResponse
- (BOOL)userRequestedAllOptions;
- (BOOL)userRequestedOpenApp;
- (WFEntityPickerDialogResponse)initWithBSXPCCoder:(id)a3;
- (WFEntityPickerDialogResponse)initWithCoder:(id)a3;
- (WFEntityPickerDialogResponse)initWithSelectedEntry:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFEntityPickerDialogResponse

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFEntityPickerDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithBSXPCCoder:v4];
  v5 = [(WFEntityPickerDialogResponse *)self selectedEntry:v6.receiver];
  [v4 encodeObject:v5 forKey:@"selectedEntry"];
}

- (WFEntityPickerDialogResponse)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFEntityPickerDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithBSXPCCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedEntry"];
    selectedEntry = v5->_selectedEntry;
    v5->_selectedEntry = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = WFEntityPickerDialogResponse;
  v4 = a3;
  [(WFDialogResponse *)&v6 encodeWithCoder:v4];
  v5 = [(WFEntityPickerDialogResponse *)self selectedEntry:v6.receiver];
  [v4 encodeObject:v5 forKey:@"selectedEntry"];
}

- (WFEntityPickerDialogResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WFEntityPickerDialogResponse;
  v5 = [(WFDialogResponse *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selectedEntry"];
    selectedEntry = v5->_selectedEntry;
    v5->_selectedEntry = v6;

    v8 = v5;
  }

  return v5;
}

- (BOOL)userRequestedOpenApp
{
  v2 = [(WFEntityPickerDialogResponse *)self selectedEntry];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:@"WFEntityPickerDialogResponseOpenAppEntryIdentifier"];

  return v4;
}

- (BOOL)userRequestedAllOptions
{
  v2 = [(WFEntityPickerDialogResponse *)self selectedEntry];
  v3 = [v2 identifier];
  v4 = [v3 isEqualToString:@"WFEntityPickerDialogResponseChooseEntryIdentifier"];

  return v4;
}

- (WFEntityPickerDialogResponse)initWithSelectedEntry:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = WFEntityPickerDialogResponse;
  v6 = [(WFDialogResponse *)&v10 initWithResponseCode:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_selectedEntry, a3);
    v8 = v7;
  }

  return v7;
}

@end