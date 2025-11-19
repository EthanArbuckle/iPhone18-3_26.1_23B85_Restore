@interface FBScene
@end

@implementation FBScene

uint64_t __83__FBScene_PRScene__pr_createPosterSceneWithRole_path_extension_instanceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = [*(a1 + 32) serverIdentity];
  v5 = [v4 provider];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

void __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  [v5 setIdentifier:v3];
  v4 = [MEMORY[0x1E69DC698] specification];
  [v5 setSpecification:v4];

  [v5 setClientIdentity:*(a1 + 40)];
}

void __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke_434(uint64_t a1, void *a2)
{
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke_2;
  v15[3] = &unk_1E78458C0;
  v4 = (a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = *v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v16 = v8;
  v17 = v7;
  v9 = a2;
  [v9 updateSettingsWithBlock:v15];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke_3;
  v12[3] = &unk_1E78458E8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 56);
  v13 = v10;
  v14 = v11;
  [v9 updateClientSettingsWithBlock:v12];
}

void __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 pui_setRole:v3];
  v5 = [*(a1 + 40) serverIdentity];
  v6 = [v5 provider];
  [v4 pui_setProvider:v6];

  [*(a1 + 48) pr_applyPosterPath:*(a1 + 40) toSettings:v4];
  v7 = [v4 pr_posterConfiguredProperties];

  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __71__FBScene_PRScene___pr_createPosterSceneWithRole_path_processIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 bls_setSupportsAlwaysOn:{objc_msgSend(*(a1 + 32), "isEqualToString:", *MEMORY[0x1E69C5670])}];
  v3 = [*(*(*(a1 + 40) + 8) + 40) renderingConfiguration];
  v4 = v3;
  if (v3)
  {
    [v5 pr_setDepthEffectDisabled:{objc_msgSend(v3, "isDepthEffectDisabled")}];
  }
}

@end