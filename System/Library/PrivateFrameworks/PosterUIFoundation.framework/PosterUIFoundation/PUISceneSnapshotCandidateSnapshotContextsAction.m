@interface PUISceneSnapshotCandidateSnapshotContextsAction
- (NSDictionary)candidateSnapshotContexts;
- (PUIPosterSnapshotDescriptor)inflightSnapshotDescriptor;
- (PUISceneSnapshotCandidateSnapshotContextsAction)initWithCandidateSnapshotContexts:(id)a3 inflightSnapshotDescriptor:(id)a4 responder:(id)a5;
- (void)respondWithError:(id)a3;
- (void)respondWithSuitableURL:(id)a3;
@end

@implementation PUISceneSnapshotCandidateSnapshotContextsAction

- (PUISceneSnapshotCandidateSnapshotContextsAction)initWithCandidateSnapshotContexts:(id)a3 inflightSnapshotDescriptor:(id)a4 responder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_new();
  v12 = v11;
  if (v8)
  {
    [v11 setObject:v8 forSetting:1];
  }

  if (v9)
  {
    [v12 setObject:v9 forSetting:2];
  }

  v15.receiver = self;
  v15.super_class = PUISceneSnapshotCandidateSnapshotContextsAction;
  v13 = [(PUISceneSnapshotCandidateSnapshotContextsAction *)&v15 initWithInfo:v12 responder:v10];

  return v13;
}

- (NSDictionary)candidateSnapshotContexts
{
  v2 = [(PUISceneSnapshotCandidateSnapshotContextsAction *)self info];
  v3 = [v2 objectForSetting:1];

  return v3;
}

- (PUIPosterSnapshotDescriptor)inflightSnapshotDescriptor
{
  v2 = [(PUISceneSnapshotCandidateSnapshotContextsAction *)self info];
  v3 = [v2 objectForSetting:2];

  return v3;
}

- (void)respondWithSuitableURL:(id)a3
{
  v4 = a3;
  v6 = objc_opt_new();
  [v6 setObject:v4 forSetting:0];

  v5 = [MEMORY[0x1E698E600] responseWithInfo:v6];
  [(PUISceneSnapshotCandidateSnapshotContextsAction *)self sendResponse:v5];
}

- (void)respondWithError:(id)a3
{
  v4 = [MEMORY[0x1E698E600] responseForError:a3];
  [(PUISceneSnapshotCandidateSnapshotContextsAction *)self sendResponse:v4];
}

@end