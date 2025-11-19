@interface UIStatusBarInternalRepositionAnimation
@end

@implementation UIStatusBarInternalRepositionAnimation

void ___UIStatusBarInternalRepositionAnimation_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  if (!v10 || (*(v10 + 16))(v10, v8))
  {
    v11 = *(*(a1[6] + 8) + 40);
    v12 = [v8 identifier];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      [v13 CGRectValue];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;
      [v8 absoluteFrame];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;
    }

    else
    {
      v23 = *MEMORY[0x1E695F058];
      v25 = *(MEMORY[0x1E695F058] + 8);
      v27 = *(MEMORY[0x1E695F058] + 16);
      v29 = *(MEMORY[0x1E695F058] + 24);
      v21 = v29;
      v19 = v27;
      v17 = v25;
      v15 = *MEMORY[0x1E695F058];
    }

    v47.origin.x = v23;
    v47.origin.y = v25;
    v47.size.width = v27;
    v47.size.height = v29;
    if (CGRectIsEmpty(v47))
    {
      v48.origin.x = v23;
      v48.origin.y = v25;
      v48.size.width = v27;
      v48.size.height = v29;
      v51.origin.x = v15;
      v51.origin.y = v17;
      v51.size.width = v19;
      v51.size.height = v21;
      CGRectEqualToRect(v48, v51);
    }

    else
    {
      v49.origin.x = v15;
      v49.origin.y = v17;
      v49.size.width = v19;
      v49.size.height = v21;
      IsEmpty = CGRectIsEmpty(v49);
      v50.origin.x = v23;
      v50.origin.y = v25;
      v50.size.width = v27;
      v50.size.height = v29;
      v52.origin.x = v15;
      v52.origin.y = v17;
      v52.size.width = v19;
      v52.size.height = v21;
      if (!CGRectEqualToRect(v50, v52) && !IsEmpty)
      {
        [v8 setAbsoluteFrame:{v15, v17, v19, v21}];
        v31 = a1[5];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = ___UIStatusBarInternalRepositionAnimation_block_invoke_2;
        v41[3] = &unk_1E70F3B20;
        v32 = v8;
        v42 = v32;
        v43 = v23;
        v44 = v25;
        v45 = v27;
        v46 = v29;
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = ___UIStatusBarInternalRepositionAnimation_block_invoke_3;
        v39[3] = &unk_1E70F3608;
        v40 = v9;
        (*(v31 + 16))(v31, v41, v39);
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = ___UIStatusBarInternalRepositionAnimation_block_invoke_4;
        v33[3] = &unk_1E70F3B20;
        v34 = v32;
        v35 = v23;
        v36 = v25;
        v37 = v27;
        v38 = v29;
        [v7 addTimeout:v33 withHandler:2.0];

        goto LABEL_13;
      }
    }

    (*(v9 + 2))(v9, 1);
LABEL_13:

    goto LABEL_14;
  }

  (*(v9 + 2))(v9, 1);
LABEL_14:
}

uint64_t ___UIStatusBarInternalRepositionAnimation_block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = [v7 displayItemAbsoluteFrames];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (v6)
  {
    v11 = *(a1 + 56);
    v12 = [v6 identifier];
    v13 = v12;
    if (v11 == 1)
    {
      v37 = v12;
      v14 = MEMORY[0x1E696B098];
      [v6 absolutePresentationFrame];
      v34[0] = v15;
      v34[1] = v16;
      v34[2] = v17;
      v34[3] = v18;
      v19 = [v14 valueWithBytes:v34 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v38[0] = v19;
      v20 = MEMORY[0x1E695DF20];
      v21 = v38;
      v22 = &v37;
    }

    else
    {
      v35 = v12;
      v23 = MEMORY[0x1E696B098];
      [v6 absoluteFrame];
      v33[0] = v24;
      v33[1] = v25;
      v33[2] = v26;
      v33[3] = v27;
      v19 = [v23 valueWithBytes:v33 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v36 = v19;
      v20 = MEMORY[0x1E695DF20];
      v21 = &v36;
      v22 = &v35;
    }

    v28 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
    v29 = *(*(a1 + 48) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    (*(v31 + 16))(v31, *(*(*(a1 + 48) + 8) + 40));
  }

  return 1;
}

@end