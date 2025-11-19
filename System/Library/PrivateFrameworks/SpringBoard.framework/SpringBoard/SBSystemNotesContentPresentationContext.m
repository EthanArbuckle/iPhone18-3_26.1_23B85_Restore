@interface SBSystemNotesContentPresentationContext
- (SBSystemNotesContentPresentationContext)initWithLaunchBundleID:(id)a3 presentationMode:(int64_t)a4 source:(unint64_t)a5 positionConfiguration:(id)a6;
- (SBSystemNotesContentPresentationContext)initWithRequestedConfiguration:(id)a3 source:(unint64_t)a4 positionConfiguration:(id)a5;
@end

@implementation SBSystemNotesContentPresentationContext

- (SBSystemNotesContentPresentationContext)initWithLaunchBundleID:(id)a3 presentationMode:(int64_t)a4 source:(unint64_t)a5 positionConfiguration:(id)a6
{
  v10 = MEMORY[0x277D66C98];
  v11 = a6;
  v12 = a3;
  v13 = [[v10 alloc] initWithSceneBundleIdentifier:v12 userActivity:0 preferredPresentationMode:a4];

  v14 = [(SBSystemNotesContentPresentationContext *)self initWithRequestedConfiguration:v13 source:a5 positionConfiguration:v11];
  return v14;
}

- (SBSystemNotesContentPresentationContext)initWithRequestedConfiguration:(id)a3 source:(unint64_t)a4 positionConfiguration:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SBSystemNotesContentPresentationContext;
  v11 = [(SBSystemNotesContentPresentationContext *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_requestedConfiguration, a3);
    v12->_source = a4;
    objc_storeStrong(&v12->_positionConfiguration, a5);
  }

  return v12;
}

@end