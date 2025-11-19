@interface LSGetUserActivityClientProtocolInterface
@end

@implementation LSGetUserActivityClientProtocolInterface

void ___LSGetUserActivityClientProtocolInterface_block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283A6CB40];
  v1 = _LSGetUserActivityClientProtocolInterface_result;
  _LSGetUserActivityClientProtocolInterface_result = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v14 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [_LSGetUserActivityClientProtocolInterface_result setClasses:v14 forSelector:sel_doUpdateUserActivityInfo_makeCurrent_completionHandler_ argumentIndex:0 ofReply:0];
  [_LSGetUserActivityClientProtocolInterface_result setClasses:v14 forSelector:sel_doFetchUserActivityInfoWithUUID_completionHandler_ argumentIndex:0 ofReply:1];
  [_LSGetUserActivityClientProtocolInterface_result setClasses:v14 forSelector:sel_doPinUserActivityInfo_completionHandler_ argumentIndex:0 ofReply:0];
  v10 = _LSGetUserActivityClientProtocolInterface_result;
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v10 setClasses:v13 forSelector:sel_doGetUserActivityProxiesWithOptions_completionHandler_ argumentIndex:0 ofReply:1];
}

@end