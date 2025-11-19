@interface STConcreteDowntimeService
- (STDowntimeServiceDelegate)delegate;
- (void)isDowntimeEnabledForUserID:(id)a3 completionHandler:(id)a4;
- (void)toggleOnDemandDowntimeForUserID:(id)a3 completionHandler:(id)a4;
@end

@implementation STConcreteDowntimeService

- (void)isDowntimeEnabledForUserID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteDowntimeService *)self delegate];
  [v8 isDowntimeEnabledForUserID:v7 completionHandler:v6];
}

- (void)toggleOnDemandDowntimeForUserID:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(STConcreteDowntimeService *)self delegate];
  [v8 toggleOnDemandDowntimeForUserID:v7 completionHandler:v6];
}

- (STDowntimeServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end