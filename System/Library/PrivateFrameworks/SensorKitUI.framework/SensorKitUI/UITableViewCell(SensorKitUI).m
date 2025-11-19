@interface UITableViewCell(SensorKitUI)
+ (id)skui_tableViewCellForDataSample:()SensorKitUI;
+ (id)skui_tableViewCellForSelectionWithInitialValue:()SensorKitUI tableView:;
@end

@implementation UITableViewCell(SensorKitUI)

+ (id)skui_tableViewCellForDataSample:()SensorKitUI
{
  v3 = [a3 dequeueReusableCellWithIdentifier:@"SRAuthorizationExampleRowReuseIdentifier"];
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SRAuthorizationExampleRowReuseIdentifier"];
  }

  [objc_msgSend(v3 "textLabel")];
  [v3 setAccessoryType:1];
  return v3;
}

+ (id)skui_tableViewCellForSelectionWithInitialValue:()SensorKitUI tableView:
{
  v5 = [a4 dequeueReusableCellWithIdentifier:@"SRAuthorizationSelectionRowReuseIdentifier"];
  if (!v5)
  {
    v5 = [objc_alloc(MEMORY[0x277D75B48]) initWithStyle:0 reuseIdentifier:@"SRAuthorizationSelectionRowReuseIdentifier"];
    [objc_msgSend(v5 "textLabel")];
    [objc_msgSend(v5 "textLabel")];
  }

  if (a3)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [objc_msgSend(v5 "textLabel")];
  [objc_msgSend(v5 "textLabel")];
  [objc_msgSend(v5 "textLabel")];
  return v5;
}

@end