@interface WFCellularOutrankIssue
+ (id)cellularOutrankDownload;
+ (id)cellularOutrankPerformance;
+ (id)cellularOutrankPrivateNetwork;
+ (id)cellularOutrankSecurity;
- (WFCellularOutrankIssue)initWithSubType:(unint64_t)a3;
- (id)_cellularOutrankSubTypeToString:(unint64_t)a3;
- (id)_titleForSubType:(unint64_t)a3;
@end

@implementation WFCellularOutrankIssue

+ (id)cellularOutrankSecurity
{
  v2 = [[WFCellularOutrankIssue alloc] initWithSubType:1];

  return v2;
}

+ (id)cellularOutrankDownload
{
  v2 = [[WFCellularOutrankIssue alloc] initWithSubType:2];

  return v2;
}

+ (id)cellularOutrankPerformance
{
  v2 = [[WFCellularOutrankIssue alloc] initWithSubType:4];

  return v2;
}

+ (id)cellularOutrankPrivateNetwork
{
  v2 = [[WFCellularOutrankIssue alloc] initWithSubType:8];

  return v2;
}

- (WFCellularOutrankIssue)initWithSubType:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = WFCellularOutrankIssue;
  v4 = [(WFHealthIssue *)&v11 initWithType:0x10000];
  v5 = v4;
  if (v4)
  {
    v4->_subtitleOnlyIssue = 1;
    v6 = [(WFCellularOutrankIssue *)v4 _titleForSubType:a3];
    issueShortTitle = v5->_issueShortTitle;
    v5->_issueShortTitle = v6;

    objc_storeStrong(&v5->_issueTitle, v5->_issueShortTitle);
    v8 = [(WFCellularOutrankIssue *)v5 _cellularOutrankSubTypeToString:a3];
    typeString = v5->_typeString;
    v5->_typeString = v8;
  }

  return v5;
}

- (id)_titleForSubType:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    v3 = 0;
  }

  else
  {
    v3 = off_279EC5BC0[a3 - 1];
  }

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:v3 value:&stru_288308678 table:@"WiFiKitUILocalizableStrings"];

  return v5;
}

- (id)_cellularOutrankSubTypeToString:(unint64_t)a3
{
  if (a3 - 1 > 7)
  {
    return 0;
  }

  else
  {
    return off_279EC5C00[a3 - 1];
  }
}

@end