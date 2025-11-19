@interface UIView(TUICandidateLine)
- (id)_allLines;
- (void)_attachLine:()TUICandidateLine toEdge:;
- (void)_setImage:()TUICandidateLine onEdges:outside:style:;
- (void)_setShowsLinesOnEdges:()TUICandidateLine style:;
@end

@implementation UIView(TUICandidateLine)

- (id)_allLines
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 subviews];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (void)_setImage:()TUICandidateLine onEdges:outside:style:
{
  v57 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v46 = a6;
  v10 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v44 = a1;
  v11 = [a1 subviews];
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v52;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v52 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v51 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v16, "tag")}];
          [v10 setObject:v16 forKeyedSubscript:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v13);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = [&unk_1F03D8FF0 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v48;
    v21 = *MEMORY[0x1E695F058];
    v22 = *(MEMORY[0x1E695F058] + 8);
    v23 = *(MEMORY[0x1E695F058] + 16);
    v24 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(&unk_1F03D8FF0);
        }

        v26 = *(*(&v47 + 1) + 8 * j);
        v27 = [v26 integerValue];
        v28 = [v10 objectForKeyedSubscript:v26];
        v29 = v28;
        if ((v27 & a4) != 0)
        {
          if (!v28)
          {
            v29 = [[TUICandidateLine alloc] initWithFrame:v21, v22, v23, v24];
            [v44 _attachLine:v29 toEdge:v27];
          }

          v30 = [(TUICandidateLine *)v29 subviews];
          v31 = [v30 count];

          if (!v31)
          {
            v32 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
            [(TUICandidateLine *)v29 addSubview:v32];
          }

          [(TUICandidateLine *)v29 setBackgroundColor:0];
          v33 = [(TUICandidateLine *)v29 subviews];
          v34 = [v33 firstObject];

          if (v9)
          {
            [v34 setImage:v9];
            [v46 foregroundOpacity];
            [(TUICandidateLine *)v29 setAlpha:?];
            [(TUICandidateLine *)v29 bounds];
            v37 = v36;
            v38 = v35;
            if (a5)
            {
              v39 = v35;
              if (v27 == 2)
              {
                [v9 size];
                v39 = -v40;
              }
            }

            else
            {
              v39 = 0.0;
              if (v27 != 2)
              {
                [v9 size];
                v39 = v38 - v41;
              }
            }

            [v9 size];
            v43 = v42;
            [(TUICandidateLine *)v29 bounds];
            [v34 setFrame:{v39, v37, v43, CGRectGetHeight(v58)}];
          }

          else
          {
            [(TUICandidateLine *)v29 setAlpha:0.0];
          }
        }
      }

      v19 = [&unk_1F03D8FF0 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v19);
  }
}

- (void)_setShowsLinesOnEdges:()TUICandidateLine style:
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (a3 == 15 && ([v6 cornerRadius], v8 > 0.0))
  {
    v9 = 1.0 / TUIScreenScaleForView(a1);
    v10 = [a1 layer];
    [v10 setBorderWidth:v9];

    v11 = [v7 lineColor];
    v12 = [v11 CGColor];
    v13 = [a1 layer];
    [v13 setBorderColor:v12];

    a3 = 0;
  }

  else
  {
    v14 = [a1 layer];
    [v14 setBorderWidth:0.0];

    v11 = [a1 layer];
    [v11 setBorderColor:0];
  }

  v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v36 = a1;
  v16 = [a1 subviews];
  v17 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v21, "tag")}];
          [v15 setObject:v21 forKeyedSubscript:v22];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v18);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v23 = [&unk_1F03D8FD8 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    v26 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    v28 = *(MEMORY[0x1E695F058] + 16);
    v29 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(&unk_1F03D8FD8);
        }

        v31 = *(*(&v37 + 1) + 8 * j);
        v32 = [v31 integerValue];
        v33 = [v15 objectForKeyedSubscript:v31];
        v34 = v33;
        if ((v32 & a3) != 0)
        {
          if (!v33)
          {
            v34 = [[TUICandidateLine alloc] initWithFrame:v26, v27, v28, v29];
            [v36 _attachLine:v34 toEdge:v32];
          }

          [(TUICandidateLine *)v34 setStyle:v7];
          [v7 backgroundOpacity];
        }

        else
        {
          v35 = 0.0;
        }

        [(TUICandidateLine *)v34 setAlpha:v35];
      }

      v24 = [&unk_1F03D8FD8 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v24);
  }
}

- (void)_attachLine:()TUICandidateLine toEdge:
{
  v25 = a3;
  [a1 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = TUIScreenScaleForView(a1);
  v15 = 0;
  v16 = 1.0 / v14;
  if (a4 > 3)
  {
    if (a4 != 4)
    {
      v17 = 1.0 / v14;
      v18 = 1.0 / v14;
      if (a4 != 8)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

LABEL_8:
    [a1 bounds];
    v18 = v20;
    v15 = 2;
    v17 = v16;
    goto LABEL_9;
  }

  if (a4 == 1)
  {
    goto LABEL_8;
  }

  v17 = 1.0 / v14;
  v18 = 1.0 / v14;
  if (a4 == 2)
  {
LABEL_7:
    [a1 bounds];
    v17 = v19;
    v15 = 16;
    v18 = v16;
  }

LABEL_9:
  v21 = 0.0;
  if (a4 <= 3)
  {
    v22 = v15 | 4;
    if (a4 != 2)
    {
      v22 = v15;
    }

    if (a4 == 1)
    {
      v15 |= 0x20uLL;
    }

    else
    {
      v15 = v22;
    }

LABEL_18:
    v23 = 0.0;
    goto LABEL_19;
  }

  if (a4 != 4)
  {
    if (a4 == 8)
    {
      v27.origin.x = v7;
      v27.origin.y = v9;
      v27.size.width = v11;
      v27.size.height = v13;
      v21 = CGRectGetMaxX(v27) - v16;
      v15 |= 1uLL;
    }

    goto LABEL_18;
  }

  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  v23 = CGRectGetMaxY(v28) - v16;
  v15 |= 8uLL;
LABEL_19:
  [v25 setFrame:{v21, v23, v18, v17}];
  [a1 addSubview:v25];
  [v25 setAutoresizingMask:v15];
  v24 = [v25 layer];
  [v24 setZPosition:1.0];

  [v25 setTag:a4];
}

@end