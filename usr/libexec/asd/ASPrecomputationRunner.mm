@interface ASPrecomputationRunner
- (void)runPrecomputationWithProfiles:(id)profiles profileInfo:(id)info bindings:(id)bindings externalDataArray:(id)array nonce:(id)nonce completion:(id)completion;
@end

@implementation ASPrecomputationRunner

- (void)runPrecomputationWithProfiles:(id)profiles profileInfo:(id)info bindings:(id)bindings externalDataArray:(id)array nonce:(id)nonce completion:(id)completion
{
  completionCopy = completion;
  nonceCopy = nonce;
  arrayCopy = array;
  bindingsCopy = bindings;
  infoCopy = info;
  profilesCopy = profiles;
  v19 = +[pNjRsniwrVEhiG7R sharedInstance];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100035EEC;
  v21[3] = &unk_1006908C0;
  v22 = completionCopy;
  v20 = completionCopy;
  [v19 Z1kFQGOJhlZQpyD1:profilesCopy xz5EHXEN4FjlhJbi:infoCopy uhVTXyAfCFn7u0Ue:bindingsCopy EQUjQp7JcQbqcPcD:arrayCopy A5wDLa5TFdFZlz3A:0 TJKMyOe6zn5PdGIr:nonceCopy eCqgGM0WcnHOslnr:0 eCszfxdv3kUXvhgV:24 uWp4aZpP2vLhc04Q:0 QZYtNpvp0hKd248p:0 oCwPYmtRv8s31KUH:0 completion:v21];
}

@end