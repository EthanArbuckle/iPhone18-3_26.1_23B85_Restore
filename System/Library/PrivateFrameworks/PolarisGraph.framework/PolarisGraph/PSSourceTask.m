@interface PSSourceTask
- (PSSourceTask)initWithName:(id)a3;
- (id)description;
- (void)addOutput:(id)a3;
@end

@implementation PSSourceTask

- (PSSourceTask)initWithName:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PSSourceTask;
  v6 = [(PSSourceTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = objc_opt_new();
    outputs = v7->_outputs;
    v7->_outputs = v8;

    v7->_sourceTaskFunction = 0;
    v7->_sourceTaskData = 0;
  }

  return v7;
}

- (id)description
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"...<%@: %@>", objc_opt_class(), self->_name];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_outputs;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"\n%@", *(*(&v11 + 1) + 8 * i)];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)addOutput:(id)a3
{
  v4 = [(NSArray *)self->_outputs arrayByAddingObject:a3];
  outputs = self->_outputs;
  self->_outputs = v4;

  MEMORY[0x2821F96F8]();
}

@end