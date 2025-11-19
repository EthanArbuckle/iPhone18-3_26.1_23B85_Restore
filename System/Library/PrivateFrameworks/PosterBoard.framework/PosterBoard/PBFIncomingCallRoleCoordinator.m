@interface PBFIncomingCallRoleCoordinator
- (PBFIncomingCallRoleCoordinator)initWithStorage:(id)a3 modelCoordinatorProvider:(id)a4 providers:(id)a5;
@end

@implementation PBFIncomingCallRoleCoordinator

- (PBFIncomingCallRoleCoordinator)initWithStorage:(id)a3 modelCoordinatorProvider:(id)a4 providers:(id)a5
{
  v8 = *MEMORY[0x277D3EEE8];
  v10.receiver = self;
  v10.super_class = PBFIncomingCallRoleCoordinator;
  return [(PBFPosterRoleCoordinator *)&v10 initWithRole:v8 storage:a3 modelCoordinatorProvider:a4 providers:a5];
}

@end