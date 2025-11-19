@interface ICMusicSubscriptionStatusRemoteRequesting
+ (id)clientInterface;
+ (id)serviceInterface;
@end

@implementation ICMusicSubscriptionStatusRemoteRequesting

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CB7F38];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_deliverSubscriptionStatusResponse_forRemoteRequestWithUniqueIdentifier_error_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_deliverSubscriptionStatusResponse_forRemoteRequestWithUniqueIdentifier_error_ argumentIndex:1 ofReply:0];

  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_deliverSubscriptionStatusResponse_forRemoteRequestWithUniqueIdentifier_error_ argumentIndex:2 ofReply:0];

  return v2;
}

+ (id)serviceInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2CCF178];
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_performSubscriptionStatusRequest_forUniqueIdentifier_ argumentIndex:0 ofReply:0];

  v4 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v4 forSelector:sel_performSubscriptionStatusRequest_forUniqueIdentifier_ argumentIndex:1 ofReply:0];

  v5 = MSVPropertyListDataClasses();
  [v2 setClasses:v5 forSelector:sel_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v6 forSelector:sel_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v7 forSelector:sel_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_setSubscriptionStatusFromResponsePayload_forUserIdentity_withCompletionHandler_ argumentIndex:1 ofReply:1];

  return v2;
}

@end