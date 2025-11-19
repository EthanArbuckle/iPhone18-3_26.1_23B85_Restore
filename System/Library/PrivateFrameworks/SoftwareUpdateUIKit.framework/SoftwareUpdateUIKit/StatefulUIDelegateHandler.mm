@interface StatefulUIDelegateHandler
- (void)operation:(SUUIUpdateOperation *)a3 requestAgreementToTermsAndConditionsForUpdate:(SUUIDescriptor *)a4 replyHandler:(id)a5;
- (void)operation:(SUUIUpdateOperation *)a3 requestApprovalForDownloadConstraints:(SUUIDescriptor *)a4 downloadPolicy:(SUUIDownloadPolicy *)a5 replyHandler:(id)a6;
- (void)operation:(SUUIUpdateOperation *)a3 requestDevicePasscodeForDescriptor:(SUUIDescriptor *)a4 replyHandler:(id)a5;
- (void)operation:(SUUIUpdateOperation *)a3 requestPurgeConfirmationForDownload:(SUUIDownload *)a4 replyHandler:(id)a5;
- (void)statefulUIManager:(SUUIStatefulUIManager *)a3 requestPurgeConfirmationOfActiveDownload:(SUUIDownload *)a4 toSwitchSelectedBetaProgram:(SDBetaProgram *)a5 completionHandler:(id)a6;
- (void)statefulUIManager:(SUUIStatefulUIManager *)a3 requestRollbackRestartApprovalWithCompletion:(id)a4;
- (void)statefulUIManager:(id)a3 descriptor:(id)a4 didTransitionFromDescriptorState:(int64_t)a5 toState:(int64_t)a6;
- (void)statefulUIManager:(id)a3 didTransitionFromUIState:(int64_t)a4 toState:(int64_t)a5;
- (void)statefulUIManagerDidRefreshBetaUpdates:(id)a3;
- (void)statefulUIManagerDidRefreshState:(id)a3;
@end

@implementation StatefulUIDelegateHandler

- (void)operation:(SUUIUpdateOperation *)a3 requestPurgeConfirmationForDownload:(SUUIDownload *)a4 replyHandler:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = _Block_copy(a5);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = v9;
  v5[5] = self;
  sub_26AF2FD0C(&unk_26B08B9B0, v5);
}

- (void)operation:(SUUIUpdateOperation *)a3 requestDevicePasscodeForDescriptor:(SUUIDescriptor *)a4 replyHandler:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = _Block_copy(a5);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = v9;
  v5[5] = self;
  sub_26AF2FD0C(&unk_26B08B9D8, v5);
}

- (void)operation:(SUUIUpdateOperation *)a3 requestAgreementToTermsAndConditionsForUpdate:(SUUIDescriptor *)a4 replyHandler:(id)a5
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v9 = _Block_copy(a5);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = v9;
  v5[5] = self;
  sub_26AF2FD0C(&unk_26B08B9F0, v5);
}

- (void)operation:(SUUIUpdateOperation *)a3 requestApprovalForDownloadConstraints:(SUUIDescriptor *)a4 downloadPolicy:(SUUIDownloadPolicy *)a5 replyHandler:(id)a6
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = _Block_copy(a6);
  MEMORY[0x277D82BE0](self);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = v11;
  v6[6] = self;
  sub_26AF2FD0C(&unk_26B08BA10, v6);
}

- (void)statefulUIManager:(SUUIStatefulUIManager *)a3 requestRollbackRestartApprovalWithCompletion:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v4 = swift_allocObject();
  v4[2] = a3;
  v4[3] = v7;
  v4[4] = self;
  sub_26AF2FD0C(&unk_26B08BA28, v4);
}

- (void)statefulUIManager:(SUUIStatefulUIManager *)a3 requestPurgeConfirmationOfActiveDownload:(SUUIDownload *)a4 toSwitchSelectedBetaProgram:(SDBetaProgram *)a5 completionHandler:(id)a6
{
  MEMORY[0x277D82BE0](a3);
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](a5);
  v11 = _Block_copy(a6);
  MEMORY[0x277D82BE0](self);
  v6 = swift_allocObject();
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a5;
  v6[5] = v11;
  v6[6] = self;
  sub_26AF2FD0C(&unk_26B08BA40, v6);
}

- (void)statefulUIManager:(id)a3 didTransitionFromUIState:(int64_t)a4 toState:(int64_t)a5
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManager(_:didTransitionFrom:to:)(a3, a4, a5);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)statefulUIManager:(id)a3 descriptor:(id)a4 didTransitionFromDescriptorState:(int64_t)a5 toState:(int64_t)a6
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManager(_:descriptor:didTransitionFrom:to:)(a3, a4, a5, a6);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
}

- (void)statefulUIManagerDidRefreshBetaUpdates:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManagerDidRefreshBetaUpdates(_:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)statefulUIManagerDidRefreshState:(id)a3
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  StatefulUIDelegateHandler.statefulUIManagerDidRefreshState(_:)(a3);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end