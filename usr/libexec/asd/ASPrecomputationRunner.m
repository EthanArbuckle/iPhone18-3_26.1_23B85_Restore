@interface ASPrecomputationRunner
- (void)runPrecomputationWithProfiles:(id)a3 profileInfo:(id)a4 bindings:(id)a5 externalDataArray:(id)a6 nonce:(id)a7 completion:(id)a8;
@end

@implementation ASPrecomputationRunner

- (void)runPrecomputationWithProfiles:(id)a3 profileInfo:(id)a4 bindings:(id)a5 externalDataArray:(id)a6 nonce:(id)a7 completion:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = +[pNjRsniwrVEhiG7R sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100035EEC;
  v21[3] = &unk_1006908C0;
  v22 = v13;
  v20 = v13;
  [v19 Z1kFQGOJhlZQpyD1:v18 xz5EHXEN4FjlhJbi:v17 uhVTXyAfCFn7u0Ue:v16 EQUjQp7JcQbqcPcD:v15 A5wDLa5TFdFZlz3A:0 TJKMyOe6zn5PdGIr:v14 eCqgGM0WcnHOslnr:0 eCszfxdv3kUXvhgV:24 uWp4aZpP2vLhc04Q:0 QZYtNpvp0hKd248p:0 oCwPYmtRv8s31KUH:0 completion:v21];
}

@end