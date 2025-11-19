@interface SBFloatingApplicationTestRecipe
- (SBFloatingApplicationTestRecipe)init;
- (void)_perform;
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBFloatingApplicationTestRecipe

- (SBFloatingApplicationTestRecipe)init
{
  v3.receiver = self;
  v3.super_class = SBFloatingApplicationTestRecipe;
  result = [(SBFloatingApplicationTestRecipe *)&v3 init];
  if (result)
  {
    result->_mode = 0;
    result->_addSide = 0;
  }

  return result;
}

- (void)handleVolumeIncrease
{
  [(SBFloatingApplicationTestRecipe *)self _perform];
  v3 = self->_mode + 1;
  self->_mode = v3;
  if (v3 >= 0xB)
  {
    self->_mode = 0;
    self->_addSide ^= 1u;
  }
}

- (void)handleVolumeDecrease
{
  self->_mode = 0;
  self->_addSide = 0;
  [(SBFloatingApplicationTestRecipe *)self _perform];
}

- (void)_perform
{
  v3 = __43__SBFloatingApplicationTestRecipe__perform__block_invoke(self, @"com.apple.mobilecal");
  v4 = v3;
  if (self->_addSide)
  {
    __43__SBFloatingApplicationTestRecipe__perform__block_invoke(v3, @"com.apple.Music");
  }

  else
  {
    +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  }
  v5 = ;
  v6 = __43__SBFloatingApplicationTestRecipe__perform__block_invoke(v5, @"com.apple.mobiletimer");
  v7 = +[SBWorkspace mainWorkspace];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__SBFloatingApplicationTestRecipe__perform__block_invoke_2;
  v11[3] = &unk_2783AF818;
  v11[4] = self;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v8 = v6;
  v9 = v5;
  v10 = v4;
  [v7 requestTransitionWithOptions:0 builder:v11 validator:&__block_literal_global_9_1];
}

SBDeviceApplicationSceneEntity *__43__SBFloatingApplicationTestRecipe__perform__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SBDeviceApplicationSceneEntity alloc];
  v4 = +[SBApplicationController sharedInstance];
  v5 = [v4 applicationWithBundleIdentifier:v2];

  v6 = [(SBDeviceApplicationSceneEntity *)v3 initWithApplicationForMainDisplay:v5];

  return v6;
}

void __43__SBFloatingApplicationTestRecipe__perform__block_invoke_2(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__SBFloatingApplicationTestRecipe__perform__block_invoke_3;
  v9[3] = &unk_2783AF7F0;
  v8 = *(a1 + 32);
  v4 = *(&v8 + 1);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [a2 modifyApplicationContext:v9];
}

void __43__SBFloatingApplicationTestRecipe__perform__block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 8);
  v8 = v3;
  if (v4 > 4)
  {
    if (v4 > 7)
    {
      if (v4 != 8)
      {
        if (v4 != 9)
        {
          if (v4 != 10)
          {
            goto LABEL_21;
          }

          [v3 setEntity:a1[5] forLayoutRole:1];
          [v8 setEntity:a1[6] forLayoutRole:2];
          [v8 setEntity:a1[7] forLayoutRole:3];
          v5 = v8;
          v6 = 3;
          goto LABEL_19;
        }

        goto LABEL_13;
      }
    }

    else if (v4 != 5)
    {
      if (v4 != 6)
      {
        goto LABEL_13;
      }

LABEL_16:
      [v3 setEntity:a1[5] forLayoutRole:1];
      [v8 setEntity:a1[6] forLayoutRole:2];
      [v8 setEntity:a1[7] forLayoutRole:3];
      v5 = v8;
      v6 = 2;
      goto LABEL_19;
    }

    [v3 setEntity:a1[5] forLayoutRole:1];
    [v8 setEntity:a1[6] forLayoutRole:2];
    [v8 setEntity:a1[7] forLayoutRole:3];
    v5 = v8;
    v6 = 4;
    goto LABEL_19;
  }

  if (v4 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }
  }

  else if (v4 == 3)
  {
LABEL_13:
    [v3 setEntity:a1[5] forLayoutRole:1];
    [v8 setEntity:a1[6] forLayoutRole:2];
    [v8 setEntity:a1[7] forLayoutRole:3];
    v5 = v8;
    v6 = 1;
LABEL_19:
    [v5 setRequestedFloatingConfiguration:v6];
    goto LABEL_20;
  }

  [v3 setEntity:a1[5] forLayoutRole:1];
  [v8 setEntity:a1[6] forLayoutRole:2];
  v7 = +[(SBWorkspaceEntity *)SBEmptyWorkspaceEntity];
  [v8 setEntity:v7 forLayoutRole:3];

LABEL_20:
  v3 = v8;
LABEL_21:
}

@end