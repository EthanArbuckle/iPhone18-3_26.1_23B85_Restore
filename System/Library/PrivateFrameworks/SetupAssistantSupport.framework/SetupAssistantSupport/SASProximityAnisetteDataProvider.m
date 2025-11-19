@interface SASProximityAnisetteDataProvider
- (void)eraseAnisetteWithCompletion:(id)a3;
- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4;
- (void)provisionAnisetteWithCompletion:(id)a3;
- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4;
@end

@implementation SASProximityAnisetteDataProvider

- (void)provisionAnisetteWithCompletion:(id)a3
{
  v7 = a3;
  v4 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v4 setRequest:0];
  v5 = [(SASProximityAnisetteDataProvider *)self session];
  v6 = [v5 sendAction:v4];

  if (v7)
  {
    v7[2](v7, [(SASProximityAnisetteRequestAction *)v4 success], 0);
  }
}

- (void)syncAnisetteWithSIMData:(id)a3 completion:(id)a4
{
  v10 = a4;
  v6 = a3;
  v7 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v7 setRequest:1];
  [(SASProximityAnisetteRequestAction *)v7 setSim:v6];

  v8 = [(SASProximityAnisetteDataProvider *)self session];
  v9 = [v8 sendAction:v7];

  if (v10)
  {
    v10[2](v10, [(SASProximityAnisetteRequestAction *)v7 success], 0);
  }
}

- (void)eraseAnisetteWithCompletion:(id)a3
{
  v7 = a3;
  v4 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v4 setRequest:2];
  v5 = [(SASProximityAnisetteDataProvider *)self session];
  v6 = [v5 sendAction:v4];

  if (v7)
  {
    v7[2](v7, [(SASProximityAnisetteRequestAction *)v4 success], 0);
  }
}

- (void)legacyAnisetteDataForDSID:(id)a3 withCompletion:(id)a4
{
  v9 = a4;
  v5 = objc_alloc_init(SASProximityAnisetteRequestAction);
  [(SASProximityAnisetteRequestAction *)v5 setRequest:4];
  v6 = [(SASProximityAnisetteDataProvider *)self session];
  v7 = [v6 sendAction:v5];

  if (v9)
  {
    v8 = [(SASProximityAnisetteRequestAction *)v5 anisetteData];
    v9[2](v9, v8, 0);
  }
}

@end