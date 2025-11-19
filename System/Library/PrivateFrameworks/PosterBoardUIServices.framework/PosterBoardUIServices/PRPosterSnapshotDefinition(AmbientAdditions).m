@interface PRPosterSnapshotDefinition(AmbientAdditions)
+ (_PRAmbientPosterSnapshotDefinition)defaultAmbientPosterSnapshotDefinitionWithRenderingContent:()AmbientAdditions ambientDisplayStyle:idealizedTime:isIdle:;
+ (id)ambientPosterSnapshotDefinitions;
@end

@implementation PRPosterSnapshotDefinition(AmbientAdditions)

+ (_PRAmbientPosterSnapshotDefinition)defaultAmbientPosterSnapshotDefinitionWithRenderingContent:()AmbientAdditions ambientDisplayStyle:idealizedTime:isIdle:
{
  if (defaultAmbientPosterSnapshotDefinitionWithRenderingContent_ambientDisplayStyle_idealizedTime_isIdle__onceToken != -1)
  {
    +[PRPosterSnapshotDefinition(AmbientAdditions) defaultAmbientPosterSnapshotDefinitionWithRenderingContent:ambientDisplayStyle:idealizedTime:isIdle:];
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = PRAmbientDisplayStyleDescription(a4);
  v12 = MEMORY[0x1CCAABA50](a3);
  v13 = @"_NOPREVIEW";
  v14 = &stru_1F4ACA8E0;
  if (v12)
  {
    v13 = &stru_1F4ACA8E0;
  }

  v15 = @"_REALTIME";
  if (a5)
  {
    v15 = &stru_1F4ACA8E0;
  }

  if (a6)
  {
    v14 = @"_IDLE";
  }

  v16 = [v10 stringWithFormat:@"SNAPSHOT_AMBIENT_%@%@%@%@", v11, v13, v15, v14];

  v17 = MEMORY[0x1CCAABA50](a3);
  v18 = defaultAmbientPosterSnapshotDefinitionWithRenderingContent_ambientDisplayStyle_idealizedTime_isIdle__definitionRegistry;
  objc_sync_enter(v18);
  v19 = [defaultAmbientPosterSnapshotDefinitionWithRenderingContent_ambientDisplayStyle_idealizedTime_isIdle__definitionRegistry objectForKey:v16];
  if (!v19)
  {
    BYTE1(v21) = a6;
    LOBYTE(v21) = a5;
    v19 = [[_PRAmbientPosterSnapshotDefinition alloc] initWithUniqueIdentifier:v16 ambientPresented:1 ambientDisplayStyle:a4 renderingContent:a3 renderingMode:1 previewContent:v17 idealizedTime:v21 isIdle:?];
    [defaultAmbientPosterSnapshotDefinitionWithRenderingContent_ambientDisplayStyle_idealizedTime_isIdle__definitionRegistry setObject:v19 forKey:v16];
  }

  objc_sync_exit(v18);

  return v19;
}

+ (id)ambientPosterSnapshotDefinitions
{
  v10[6] = *MEMORY[0x1E69E9840];
  v2 = [a1 defaultAmbientPosterSnapshotDefinitionWithRenderingContent:0 ambientDisplayStyle:0 idealizedTime:1];
  v10[0] = v2;
  v3 = [a1 defaultAmbientPosterSnapshotDefinitionWithRenderingContent:1 ambientDisplayStyle:0 idealizedTime:1];
  v10[1] = v3;
  v4 = [a1 defaultAmbientPosterSnapshotDefinitionWithRenderingContent:0 ambientDisplayStyle:1 idealizedTime:1];
  v10[2] = v4;
  v5 = [a1 defaultAmbientPosterSnapshotDefinitionWithRenderingContent:1 ambientDisplayStyle:1 idealizedTime:1];
  v10[3] = v5;
  v6 = [a1 defaultAmbientPosterSnapshotDefinitionWithRenderingContent:0 ambientDisplayStyle:2 idealizedTime:1];
  v10[4] = v6;
  v7 = [a1 defaultAmbientPosterSnapshotDefinitionWithRenderingContent:1 ambientDisplayStyle:2 idealizedTime:1];
  v10[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:6];

  return v8;
}

@end