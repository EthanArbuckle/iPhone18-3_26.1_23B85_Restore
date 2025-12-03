@interface SBFBSDisplayTransformer
- (SBFBSDisplayTransformer)init;
- (id)transformDisplayConfiguration:(id)configuration;
@end

@implementation SBFBSDisplayTransformer

- (SBFBSDisplayTransformer)init
{
  v6.receiver = self;
  v6.super_class = SBFBSDisplayTransformer;
  v2 = [(SBFBSDisplayTransformer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBMainDisplayConfigurationTransformer);
    emulatedMainDisplayTransformer = v2->_emulatedMainDisplayTransformer;
    v2->_emulatedMainDisplayTransformer = v3;
  }

  return v2;
}

- (id)transformDisplayConfiguration:(id)configuration
{
  v5 = MEMORY[0x277CBEB58];
  configurationCopy = configuration;
  v7 = [v5 set];
  v8 = [(SBMainDisplayConfigurationTransformer *)self->_emulatedMainDisplayTransformer transformDisplayConfiguration:configurationCopy];

  if ([v8 count] != 1)
  {
    [(SBFBSDisplayTransformer *)&self->_emulatedMainDisplayTransformer transformDisplayConfiguration:a2, self, v8];
  }

  anyObject = [v8 anyObject];
  v10 = +[SBDisplayTransformerRegistry sharedInstance];
  v11 = [v10 transformDisplayConfiguration:anyObject];
  [v7 unionSet:v11];

  return v7;
}

- (void)transformDisplayConfiguration:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a2 object:a3 file:@"SBFBSDisplayTransformer.m" lineNumber:32 description:{@"received unexpected number of transformed configurations from main display transformer. transformer: %@, result: %@", *a1, a4}];
}

@end