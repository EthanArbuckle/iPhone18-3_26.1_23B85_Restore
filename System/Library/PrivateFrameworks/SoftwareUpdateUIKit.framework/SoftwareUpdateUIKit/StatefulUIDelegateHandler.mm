@interface StatefulUIDelegateHandler
- (void)operation:(SUUIUpdateOperation *)operation requestAgreementToTermsAndConditionsForUpdate:(SUUIDescriptor *)update replyHandler:(id)handler;
- (void)operation:(SUUIUpdateOperation *)operation requestApprovalForDownloadConstraints:(SUUIDescriptor *)constraints downloadPolicy:(SUUIDownloadPolicy *)policy replyHandler:(id)handler;
- (void)operation:(SUUIUpdateOperation *)operation requestDevicePasscodeForDescriptor:(SUUIDescriptor *)descriptor replyHandler:(id)handler;
- (void)operation:(SUUIUpdateOperation *)operation requestPurgeConfirmationForDownload:(SUUIDownload *)download replyHandler:(id)handler;
- (void)statefulUIManager:(SUUIStatefulUIManager *)manager requestPurgeConfirmationOfActiveDownload:(SUUIDownload *)download toSwitchSelectedBetaProgram:(SDBetaProgram *)program completionHandler:(id)handler;
- (void)statefulUIManager:(SUUIStatefulUIManager *)manager requestRollbackRestartApprovalWithCompletion:(id)completion;
- (void)statefulUIManager:(id)manager descriptor:(id)descriptor didTransitionFromDescriptorState:(int64_t)state toState:(int64_t)toState;
- (void)statefulUIManager:(id)manager didTransitionFromUIState:(int64_t)state toState:(int64_t)toState;
- (void)statefulUIManagerDidRefreshBetaUpdates:(id)updates;
- (void)statefulUIManagerDidRefreshState:(id)state;
@end

@implementation StatefulUIDelegateHandler

- (void)operation:(SUUIUpdateOperation *)operation requestPurgeConfirmationForDownload:(SUUIDownload *)download replyHandler:(id)handler
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = operation;
  v5[3] = download;
  v5[4] = v9;
  v5[5] = self;
  sub_26AF2FD0C(&unk_26B08B9B0, v5);
}

- (void)operation:(SUUIUpdateOperation *)operation requestDevicePasscodeForDescriptor:(SUUIDescriptor *)descriptor replyHandler:(id)handler
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = operation;
  v5[3] = descriptor;
  v5[4] = v9;
  v5[5] = self;
  sub_26AF2FD0C(&unk_26B08B9D8, v5);
}

- (void)operation:(SUUIUpdateOperation *)operation requestAgreementToTermsAndConditionsForUpdate:(SUUIDescriptor *)update replyHandler:(id)handler
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = operation;
  v5[3] = update;
  v5[4] = v9;
  v5[5] = self;
  sub_26AF2FD0C(&unk_26B08B9F0, v5);
}

- (void)operation:(SUUIUpdateOperation *)operation requestApprovalForDownloadConstraints:(SUUIDescriptor *)constraints downloadPolicy:(SUUIDownloadPolicy *)policy replyHandler:(id)handler
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v6 = swift_allocObject();
  v6[2] = operation;
  v6[3] = constraints;
  v6[4] = policy;
  v6[5] = v11;
  v6[6] = self;
  sub_26AF2FD0C(&unk_26B08BA10, v6);
}

- (void)statefulUIManager:(SUUIStatefulUIManager *)manager requestRollbackRestartApprovalWithCompletion:(id)completion
{
  MEMORY[0x277D82BE0](manager);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = manager;
  v4[3] = v7;
  v4[4] = self;
  sub_26AF2FD0C(&unk_26B08BA28, v4);
}

- (void)statefulUIManager:(SUUIStatefulUIManager *)manager requestPurgeConfirmationOfActiveDownload:(SUUIDownload *)download toSwitchSelectedBetaProgram:(SDBetaProgram *)program completionHandler:(id)handler
{
  MEMORY[0x277D82BE0](manager);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](program);
  v11 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v6 = swift_allocObject();
  v6[2] = manager;
  v6[3] = download;
  v6[4] = program;
  v6[5] = v11;
  v6[6] = self;
  sub_26AF2FD0C(&unk_26B08BA40, v6);
}

- (void)statefulUIManager:(id)manager didTransitionFromUIState:(int64_t)state toState:(int64_t)toState
{
  MEMORY[0x277D82BE0](manager);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManager(_:didTransitionFrom:to:)(manager, state, toState);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](manager);
}

- (void)statefulUIManager:(id)manager descriptor:(id)descriptor didTransitionFromDescriptorState:(int64_t)state toState:(int64_t)toState
{
  MEMORY[0x277D82BE0](manager);
  MEMORY[0x277D82BE0](descriptor);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManager(_:descriptor:didTransitionFrom:to:)(manager, descriptor, state, toState);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](descriptor);
  MEMORY[0x277D82BD8](manager);
}

- (void)statefulUIManagerDidRefreshBetaUpdates:(id)updates
{
  MEMORY[0x277D82BE0](updates);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManagerDidRefreshBetaUpdates(_:)(updates);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](updates);
}

- (void)statefulUIManagerDidRefreshState:(id)state
{
  MEMORY[0x277D82BE0](state);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManagerDidRefreshState(_:)(state);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](state);
}

@end