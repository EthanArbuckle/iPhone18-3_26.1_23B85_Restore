@interface SSBiomeConsumers
+ (id)sharedInstance;
- (SSBiomeConsumers)init;
- (void)start;
- (void)stop;
@end

@implementation SSBiomeConsumers

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[SSBiomeConsumers sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

uint64_t __34__SSBiomeConsumers_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_3 = objc_alloc_init(SSBiomeConsumers);

  return MEMORY[0x1EEE66BB8]();
}

- (SSBiomeConsumers)init
{
  v13[4] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = SSBiomeConsumers;
  v2 = [(SSBiomeConsumers *)&v12 init];
  if (v2 && +[SSBiomeConsumers enabled])
  {
    v3 = +[SSAppInFocus sharedInstance];
    v13[0] = v3;
    v4 = +[SSAppIntent sharedInstance];
    v13[1] = v4;
    v5 = +[SSMediaNowPlaying sharedInstance];
    v13[2] = v5;
    v6 = +[SSSystemSettingsSearchTerms sharedInstance];
    v13[3] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
    consumers = v2->_consumers;
    v2->_consumers = v7;

    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)start
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_consumers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) start];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)stop
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_consumers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) stop];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end