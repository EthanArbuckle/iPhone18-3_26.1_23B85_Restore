@interface PBFIncomingCallRoleCoordinator
- (PBFIncomingCallRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers;
@end

@implementation PBFIncomingCallRoleCoordinator

- (PBFIncomingCallRoleCoordinator)initWithStorage:(id)storage modelCoordinatorProvider:(id)provider providers:(id)providers
{
  v8 = *MEMORY[0x277D3EEE8];
  v10.receiver = self;
  v10.super_class = PBFIncomingCallRoleCoordinator;
  return [(PBFPosterRoleCoordinator *)&v10 initWithRole:v8 storage:storage modelCoordinatorProvider:provider providers:providers];
}

@end