@interface WADeploymentIssue
+ (id)issueWithType:(unint64_t)type ssid:(id)ssid;
- (unint64_t)hash;
@end

@implementation WADeploymentIssue

+ (id)issueWithType:(unint64_t)type ssid:(id)ssid
{
  ssidCopy = ssid;
  v6 = objc_alloc_init(WADeploymentIssue);
  [(WADeploymentIssue *)v6 setType:type];
  [(WADeploymentIssue *)v6 setSsid:ssidCopy];

  return v6;
}

- (unint64_t)hash
{
  ssid = [(WADeploymentIssue *)self ssid];
  v4 = [ssid hash];
  type = [(WADeploymentIssue *)self type];

  return type ^ v4;
}

@end