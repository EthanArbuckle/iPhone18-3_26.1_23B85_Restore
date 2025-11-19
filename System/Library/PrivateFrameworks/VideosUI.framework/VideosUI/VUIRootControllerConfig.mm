@interface VUIRootControllerConfig
- (VUIRootControllerConfig)init;
@end

@implementation VUIRootControllerConfig

- (VUIRootControllerConfig)init
{
  v11.receiver = self;
  v11.super_class = VUIRootControllerConfig;
  v2 = [(VUIRootControllerConfig *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithInteger:30];
    v4 = *(v2 + 4);
    *(v2 + 4) = v3;

    v5 = [MEMORY[0x1E696AD98] numberWithInteger:20];
    v6 = *(v2 + 5);
    *(v2 + 5) = v5;

    v7 = [MEMORY[0x1E696AD98] numberWithInteger:10];
    v8 = *(v2 + 6);
    *(v2 + 6) = v7;

    v9 = *(v2 + 7);
    *(v2 + 7) = &unk_1F5E5EA48;

    *(v2 + 1) = 28;
    *(v2 + 8) = 0x407E000000000000;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
  }

  return v2;
}

@end