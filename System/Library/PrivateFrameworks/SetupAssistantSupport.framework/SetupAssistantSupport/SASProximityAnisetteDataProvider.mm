@interface SASProximityAnisetteDataProvider
- (void)eraseAnisetteWithCompletion:(id)completion;
- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion;
- (void)provisionAnisetteWithCompletion:(id)completion;
- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion;
@end

@implementation SASProximityAnisetteDataProvider

- (void)provisionAnisetteWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v4 setRequest:0];
  session = [(SASProximityAnisetteDataProvider *)self session];
  v6 = [session sendAction:v4];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, [(SASProximityAnisetteRequestAction *)v4 success], 0);
  }
}

- (void)syncAnisetteWithSIMData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v7 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v7 setRequest:1];
  [(SASProximityAnisetteRequestAction *)v7 setSim:dataCopy];

  session = [(SASProximityAnisetteDataProvider *)self session];
  v9 = [session sendAction:v7];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, [(SASProximityAnisetteRequestAction *)v7 success], 0);
  }
}

- (void)eraseAnisetteWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v4 setRequest:2];
  session = [(SASProximityAnisetteDataProvider *)self session];
  v6 = [session sendAction:v4];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, [(SASProximityAnisetteRequestAction *)v4 success], 0);
  }
}

- (void)legacyAnisetteDataForDSID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v5 setRequest:4];
  session = [(SASProximityAnisetteDataProvider *)self session];
  v7 = [session sendAction:v5];

  if (completionCopy)
  {
    anisetteData = [(SASProximityAnisetteRequestAction *)v5 anisetteData];
    completionCopy[2](completionCopy, anisetteData, 0);
  }
}

@end