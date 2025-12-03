@interface PUISceneSnapshotCandidateSnapshotContextsAction
- (NSDictionary)candidateSnapshotContexts;
- (PUIPosterSnapshotDescriptor)inflightSnapshotDescriptor;
- (PUISceneSnapshotCandidateSnapshotContextsAction)initWithCandidateSnapshotContexts:(id)contexts inflightSnapshotDescriptor:(id)descriptor responder:(id)responder;
- (void)respondWithError:(id)error;
- (void)respondWithSuitableURL:(id)l;
@end

@implementation PUISceneSnapshotCandidateSnapshotContextsAction

- (PUISceneSnapshotCandidateSnapshotContextsAction)initWithCandidateSnapshotContexts:(id)contexts inflightSnapshotDescriptor:(id)descriptor responder:(id)responder
{
  contextsCopy = contexts;
  descriptorCopy = descriptor;
  responderCopy = responder;
  v11 = objc_opt_new();
  v12 = v11;
  if (contextsCopy)
  {
    [v11 setObject:contextsCopy forSetting:1];
  }

  if (descriptorCopy)
  {
    [v12 setObject:descriptorCopy forSetting:2];
  }

  v15.receiver = self;
  v15.super_class = PUISceneSnapshotCandidateSnapshotContextsAction;
  v13 = [(PUISceneSnapshotCandidateSnapshotContextsAction *)&v15 initWithInfo:v12 responder:responderCopy];

  return v13;
}

- (NSDictionary)candidateSnapshotContexts
{
  info = [(PUISceneSnapshotCandidateSnapshotContextsAction *)self info];
  v3 = [info objectForSetting:1];

  return v3;
}

- (PUIPosterSnapshotDescriptor)inflightSnapshotDescriptor
{
  info = [(PUISceneSnapshotCandidateSnapshotContextsAction *)self info];
  v3 = [info objectForSetting:2];

  return v3;
}

- (void)respondWithSuitableURL:(id)l
{
  lCopy = l;
  v6 = objc_opt_new();
  [v6 setObject:lCopy forSetting:0];

  v5 = [MEMORY[0x1E698E600] responseWithInfo:v6];
  [(PUISceneSnapshotCandidateSnapshotContextsAction *)self sendResponse:v5];
}

- (void)respondWithError:(id)error
{
  v4 = [MEMORY[0x1E698E600] responseForError:error];
  [(PUISceneSnapshotCandidateSnapshotContextsAction *)self sendResponse:v4];
}

@end