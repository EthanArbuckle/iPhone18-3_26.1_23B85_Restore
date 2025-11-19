@interface UIView(SBSnapshoting)
- (id)sb_generateSnapshotContentsSynchronously;
- (void)_generateSnapshotOnQueue:()SBSnapshoting completionHandler:;
@end

@implementation UIView(SBSnapshoting)

- (id)sb_generateSnapshotContentsSynchronously
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__146;
  v8 = __Block_byref_object_dispose__146;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __65__UIView_SBSnapshoting__sb_generateSnapshotContentsSynchronously__block_invoke;
  v3[3] = &unk_2783C3FB0;
  v3[4] = &v4;
  [a1 _generateSnapshotOnQueue:0 completionHandler:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

- (void)_generateSnapshotOnQueue:()SBSnapshoting completionHandler:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 window];
  v9 = [v8 _contextId];

  v10 = [MEMORY[0x277CD9E38] allContexts];
  *&v52.m11 = MEMORY[0x277D85DD0];
  *&v52.m12 = 3221225472;
  *&v52.m13 = __SBCAContextForContextID_block_invoke;
  *&v52.m14 = &__block_descriptor_36_e19_B16__0__CAContext_8l;
  LODWORD(v52.m21) = v9;
  v11 = [v10 bs_firstObjectPassingTest:&v52];

  v12 = [a1 layer];
  v13 = [a1 _screen];
  [v13 scale];
  v15 = v14;
  v16 = [v12 presentationLayer];
  if (v16)
  {
    v17 = [v12 presentationLayer];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
  }

  else
  {
    [a1 bounds];
    v19 = v26;
    v21 = v27;
    v23 = v28;
    v25 = v29;
  }

  v53.origin.x = v19;
  v53.origin.y = v21;
  v53.size.width = v23;
  v53.size.height = v25;
  v30 = v15 * CGRectGetWidth(v53);
  v54.origin.x = v19;
  v54.origin.y = v21;
  v54.size.width = v23;
  v54.size.height = v25;
  v31 = v15 * CGRectGetHeight(v54);
  memset(&v52, 0, sizeof(v52));
  CATransform3DMakeScale(&v52, v15, v15, 1.0);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __68__UIView_SBSnapshoting___generateSnapshotOnQueue_completionHandler___block_invoke;
  v39[3] = &unk_2783C3FD8;
  v32 = v11;
  v40 = v32;
  v43 = v30;
  v44 = v31;
  v51 = v9;
  v33 = v12;
  v41 = v33;
  v45 = v19;
  v46 = v21;
  v47 = v23;
  v48 = v25;
  v49 = v15;
  v50 = v52;
  v34 = v7;
  v42 = v34;
  v35 = MEMORY[0x223D6F7F0](v39);
  v36 = v35;
  if (v6)
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __68__UIView_SBSnapshoting___generateSnapshotOnQueue_completionHandler___block_invoke_2;
    v37[3] = &unk_2783A9348;
    v38 = v35;
    dispatch_async(v6, v37);
  }

  else
  {
    v35[2](v35);
  }
}

@end