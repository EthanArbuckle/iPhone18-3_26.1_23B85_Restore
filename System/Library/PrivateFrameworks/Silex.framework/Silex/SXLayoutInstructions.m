@interface SXLayoutInstructions
+ (id)defaultInstructions;
- (BOOL)areFulfilledForBlueprint:(id)a3;
- (SXLayoutInstructions)initWithInstructions:(id)a3;
- (id)description;
- (void)didLayoutComponentBlueprint:(id)a3 blueprint:(id)a4;
@end

@implementation SXLayoutInstructions

+ (id)defaultInstructions
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [SXLayoutInstructions alloc];
  v3 = objc_alloc_init(SXDefaultLayoutInstruction);
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v5 = [(SXLayoutInstructions *)v2 initWithInstructions:v4];

  return v5;
}

- (SXLayoutInstructions)initWithInstructions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXLayoutInstructions;
  v6 = [(SXLayoutInstructions *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_instructions, a3);
  }

  return v7;
}

- (void)didLayoutComponentBlueprint:(id)a3 blueprint:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_instructions;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 didLayoutComponentBlueprint:v6 blueprint:{v7, v14}];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (BOOL)areFulfilledForBlueprint:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_instructions;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (![*(*(&v12 + 1) + 8 * i) isFulfilledForBlueprint:{v4, v12}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (id)description
{
  v2 = [(SXLayoutInstructions *)self instructions];
  v3 = [v2 description];

  return v3;
}

@end