@interface FedStatsCohortQueryInstalledAppsMedia
- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error;
@end

@implementation FedStatsCohortQueryInstalledAppsMedia

- (id)cohortKeyForParameters:(id)parameters possibleError:(id *)error
{
  if ([(FedStatsCohortQueryInstalledApps *)self numOfMediaApps:parameters]<= 9)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[FedStatsCohortQueryInstalledApps numOfMediaApps](self, "numOfMediaApps")];
  }

  else
  {
    v5 = @"at_least_10";
  }

  return v5;
}

@end