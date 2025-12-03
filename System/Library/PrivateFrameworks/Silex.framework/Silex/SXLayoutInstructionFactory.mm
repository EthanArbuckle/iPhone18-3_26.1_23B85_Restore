@interface SXLayoutInstructionFactory
- (SXLayoutInstructionFactory)initWithPresentationAttributesProvider:(id)provider;
- (id)createInstructions;
@end

@implementation SXLayoutInstructionFactory

- (SXLayoutInstructionFactory)initWithPresentationAttributesProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXLayoutInstructionFactory;
  v6 = [(SXLayoutInstructionFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_presentationAttributesProvider, provider);
  }

  return v7;
}

- (id)createInstructions
{
  v8[1] = *MEMORY[0x1E69E9840];
  presentationAttributesProvider = [(SXLayoutInstructionFactory *)self presentationAttributesProvider];
  presentationAttributes = [presentationAttributesProvider presentationAttributes];
  presentationMode = [presentationAttributes presentationMode];

  if (presentationMode == 1)
  {
    v5 = objc_opt_new();
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

@end