@interface WADeploymentIssue
+ (id)issueWithType:(unint64_t)a3 ssid:(id)a4;
- (unint64_t)hash;
@end

@implementation WADeploymentIssue

+ (id)issueWithType:(unint64_t)a3 ssid:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(WADeploymentIssue);
  [(WADeploymentIssue *)v6 setType:a3];
  [(WADeploymentIssue *)v6 setSsid:v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(WADeploymentIssue *)self ssid];
  v4 = [v3 hash];
  v5 = [(WADeploymentIssue *)self type];

  return v5 ^ v4;
}

@end