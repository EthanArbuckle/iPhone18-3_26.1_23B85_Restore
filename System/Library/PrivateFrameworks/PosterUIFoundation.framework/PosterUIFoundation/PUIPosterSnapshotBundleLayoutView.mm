@interface PUIPosterSnapshotBundleLayoutView
- (CGSize)intrinsicContentSize;
- (void)setSnapshotBundle:(id)bundle animation:(unint64_t)animation;
@end

@implementation PUIPosterSnapshotBundleLayoutView

- (CGSize)intrinsicContentSize
{
  width = self->_intrinsicContentSize.width;
  height = self->_intrinsicContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setSnapshotBundle:(id)bundle animation:(unint64_t)animation
{
  bundleCopy = bundle;
  if ([(PUIPosterSnapshotBundle *)self->_snapshotBundle isEqual:bundleCopy])
  {
    goto LABEL_20;
  }

  [(PFTFuture *)self->_loadSnapshotBundleFuture cancel];
  objc_storeStrong(&self->_snapshotBundle, bundle);
  snapshotBundleUUID = [bundleCopy snapshotBundleUUID];
  uUID = snapshotBundleUUID;
  if (!snapshotBundleUUID)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  objc_storeStrong(&self->_snapshotBundleUUID, uUID);
  v10 = uUID;
  if (!snapshotBundleUUID)
  {
  }

  posterProvider = [(PUIPosterSnapshotBundle *)self->_snapshotBundle posterProvider];
  [(PUIPosterSnapshotBundleLayoutView *)self setAccessibilityIdentifier:posterProvider];

  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__1;
  v78[4] = __Block_byref_object_dispose__1;
  v79 = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__1;
  v76[4] = __Block_byref_object_dispose__1;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = __Block_byref_object_copy__1;
  v74[4] = __Block_byref_object_dispose__1;
  v75 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = __Block_byref_object_copy__1;
  v72[4] = __Block_byref_object_dispose__1;
  v73 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = __Block_byref_object_copy__1;
  v70[4] = __Block_byref_object_dispose__1;
  v71 = 0;
  v68[0] = 0;
  v68[1] = v68;
  v68[2] = 0x3032000000;
  v68[3] = __Block_byref_object_copy__1;
  v68[4] = __Block_byref_object_dispose__1;
  v69 = 0;
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__1;
  v66[4] = __Block_byref_object_dispose__1;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__1;
  v64[4] = __Block_byref_object_dispose__1;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__1;
  v62[4] = __Block_byref_object_dispose__1;
  v63 = 0;
  if ([MEMORY[0x1E69DD250] areAnimationsEnabled])
  {
    if (animation == 1)
    {
      animation = [MEMORY[0x1E6979538] animation];
      [animation setDuration:0.33];
      [animation setType:*MEMORY[0x1E697A030]];
      v16 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [animation setTimingFunction:v16];
LABEL_15:

      goto LABEL_16;
    }

    if (animation == 2)
    {
      animation = [MEMORY[0x1E6979538] animation];
      [animation setDuration:0.5];
      [animation setType:*MEMORY[0x1E697A030]];
      v13 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
      [animation setTimingFunction:v13];

      traitCollection = [(PUIPosterSnapshotBundleLayoutView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 1)
      {
        [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
      }

      else
      {
        [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
      }
      v16 = ;
      [animation setTimingFunction:v16];
      goto LABEL_15;
    }
  }

  animation = 0;
LABEL_16:
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke;
  v60[3] = &unk_1E7854E90;
  v60[4] = self;
  v17 = animation;
  v61 = v17;
  v18 = MEMORY[0x1AC5769F0](v60);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_2;
  v58[3] = &unk_1E7854EB8;
  v58[4] = self;
  v19 = v18;
  v59 = v19;
  v20 = MEMORY[0x1AC5769F0](v58);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_3;
  v44[3] = &unk_1E7854EE0;
  v44[4] = self;
  v32 = v10;
  v45 = v32;
  v31 = v17;
  v46 = v31;
  v30 = v20;
  v47 = v30;
  v49 = v78;
  v50 = v76;
  v51 = v74;
  v52 = v72;
  v53 = v70;
  v54 = v68;
  v55 = v66;
  v56 = v64;
  v21 = v19;
  v48 = v21;
  v57 = v62;
  v22 = MEMORY[0x1AC5769F0](v44);
  v23 = v22;
  v33 = bundleCopy;
  if (bundleCopy)
  {
    v24 = MEMORY[0x1E69C5258];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_4;
    v37[3] = &unk_1E7854F08;
    v25 = bundleCopy;
    v38 = v25;
    v39 = v72;
    v40 = v68;
    v41 = v74;
    v42 = v76;
    v43 = v62;
    offMainThreadScheduler = [MEMORY[0x1E69C5268] offMainThreadScheduler];
    v27 = [v24 futureWithBlock:v37 scheduler:offMainThreadScheduler];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_5;
    v34[3] = &unk_1E7854F58;
    v36 = v23;
    v34[4] = self;
    v35 = v25;
    v28 = [v27 flatMap:v34];
    loadSnapshotBundleFuture = self->_loadSnapshotBundleFuture;
    self->_loadSnapshotBundleFuture = v28;
  }

  else
  {
    (*(v22 + 16))(v22);
    [(PUIPosterSnapshotBundleLayoutView *)self invalidateIntrinsicContentSize];
    [(PUIPosterSnapshotBundleLayoutView *)self setNeedsLayout];
  }

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);

  _Block_object_dispose(v66, 8);
  _Block_object_dispose(v68, 8);

  _Block_object_dispose(v70, 8);
  _Block_object_dispose(v72, 8);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);

  _Block_object_dispose(v78, 8);
  bundleCopy = v33;
LABEL_20:
}

void __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 viewWithTag:3333333];
  if (v18)
  {
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    if (!v6)
    {
      v6 = [*(a1 + 32) _dequeueImageView];
    }

    [v6 setImage:v18];
    [v6 setFrame:{v8, v10, v12, v14}];
    v15 = [v5 subviews];
    v16 = [v15 containsObject:v6];

    if ((v16 & 1) == 0)
    {
      [v5 addSubview:v6];
    }

    if (*(a1 + 40))
    {
      v17 = [v5 layer];
      [v17 addAnimation:*(a1 + 40) forKey:@"TRANSITION"];
    }
  }

  else if (v6)
  {
    [*(a1 + 32) _recycleView:v6];
  }
}

void __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 containerViewForLevel:a3];
  (*(*(a1 + 40) + 16))();
}

uint64_t __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_3(void *a1)
{
  result = [*(a1[4] + 584) isEqual:a1[5]];
  if (result)
  {
    [MEMORY[0x1E6979518] begin];
    if (!a1[6])
    {
      [MEMORY[0x1E6979518] setDisableActions:1];
    }

    (*(a1[7] + 16))();
    (*(a1[7] + 16))();
    (*(a1[7] + 16))();
    (*(a1[7] + 16))();
    (*(a1[7] + 16))();
    (*(a1[7] + 16))();
    (*(a1[7] + 16))();
    (*(a1[7] + 16))();
    (*(a1[8] + 16))();
    v3 = MEMORY[0x1E6979518];

    return [v3 commit];
  }

  return result;
}

void *__65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) snapshotLevelSets];
  v4 = [v2 setWithArray:v3];

  if (![v4 count])
  {
    goto LABEL_16;
  }

  v5 = +[PUIPosterLevelSet compositeLevelSet];
  v6 = [v4 containsObject:v5];

  v7 = +[PUIPosterLevelSet allLevelsExceptFloating];
  if ([v4 containsObject:v7])
  {
    v8 = +[PUIPosterLevelSet floatingLevelSet];
    v9 = [v4 containsObject:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = +[PUIPosterLevelSet floatingLevelSet];
  if ([v4 containsObject:v10])
  {
    v11 = [PUIPosterLevelSet levelSetForLevel:-2000];
    if ([v4 containsObject:v11])
    {
      v12 = [PUIPosterLevelSet levelSetForLevel:-1000];
      v13 = [v4 containsObject:v12];

      if ((v9 & 1) == 0)
      {
        if (v13)
        {
          v14 = [*(a1 + 32) foregroundSnapshot];
          v15 = *(*(a1 + 56) + 8);
          v16 = *(v15 + 40);
          *(v15 + 40) = v14;

          v17 = [*(a1 + 32) floatingSnapshot];
          v18 = *(*(a1 + 48) + 8);
          v19 = *(v18 + 40);
          *(v18 + 40) = v17;

          v20 = [*(a1 + 32) backgroundSnapshot];
          v21 = 64;
LABEL_15:
          v25 = *(*(a1 + v21) + 8);
          v26 = *(v25 + 40);
          *(v25 + 40) = v20;

          goto LABEL_16;
        }

        goto LABEL_13;
      }

LABEL_11:
      v22 = [*(a1 + 32) allLevelsExceptFloatingSnapshot];
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;

      v20 = [*(a1 + 32) floatingSnapshot];
      v21 = 48;
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  if (v6)
  {
    v20 = [*(a1 + 32) compositeSnapshot];
    v21 = 72;
    goto LABEL_15;
  }

LABEL_16:
  v27 = *(a1 + 32);
  v28 = v27;

  return v27;
}

id __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_5(uint64_t a1)
{
  v2 = MEMORY[0x1E69C5258];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_6;
  v9[3] = &unk_1E7854F30;
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v9[4] = v4;
  v10 = v5;
  v6 = [MEMORY[0x1E69C5268] mainThreadScheduler];
  v7 = [v2 futureWithBlock:v9 scheduler:v6];

  return v7;
}

id __65__PUIPosterSnapshotBundleLayoutView_setSnapshotBundle_animation___block_invoke_6(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) invalidateIntrinsicContentSize];
  [*(a1 + 32) setNeedsLayout];
  v2 = *(a1 + 40);

  return v2;
}

@end