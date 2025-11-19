@interface _UIFlowLayoutRow
- (_UIFlowLayoutRow)init;
- (uint64_t)indexOfNearestItemAtPoint:(double)a3;
- (void)addItem:(int)a3 atEnd:;
- (void)layoutRow;
@end

@implementation _UIFlowLayoutRow

- (_UIFlowLayoutRow)init
{
  v6.receiver = self;
  v6.super_class = _UIFlowLayoutRow;
  v2 = [(_UIFlowLayoutRow *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v4 = *(v2 + 5);
    *(v2 + 5) = v3;

    *(v2 + 12) = 0x300000001;
  }

  return v2;
}

- (void)layoutRow
{
  v76 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v3 = WeakRetained;
    v4 = 0.0;
    if (WeakRetained)
    {
      v5 = objc_loadWeakRetained(WeakRetained + 18);
      v6 = v5;
      v7 = v5 == 0;
      if (v5)
      {
        v8 = v3[36];
        v10 = v3[37];
        v9 = v3[38];
        v11 = v5[14];
        v62 = v3[35];
        v63 = v8;
        if (*(v5 + 97))
        {
          v7 = 0;
          v12 = 1;
          v13 = 14;
          v14 = v3[37];
          v8 = v3[35];
        }

        else
        {
          v12 = 0;
          v13 = 15;
          v14 = v3[38];
        }
      }

      else
      {
        v12 = 0;
        v8 = v3[36];
        v62 = v3[35];
        v63 = v8;
        v10 = v3[37];
        v14 = v3[38];
        v11 = 0.0;
        v13 = 15;
        v9 = v14;
      }

      v15 = v3[v13];
    }

    else
    {
      v12 = 0;
      v6 = 0;
      v14 = 0.0;
      v11 = 0.0;
      v7 = 1;
      v15 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
      v10 = 0.0;
      v9 = 0.0;
      v8 = 0.0;
    }

    v65 = v15;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v16 = *(a1 + 40);
    v17 = [v16 countByEnumeratingWithState:&v70 objects:v75 count:16];
    v18 = 0.0;
    if (v17)
    {
      v19 = v17;
      v20 = *v71;
      do
      {
        v21 = 0;
        do
        {
          if (*v71 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v22 = *(*(&v70 + 1) + 8 * v21);
          if (v22)
          {
            v23 = *(v22 + 48);
            v24 = *(v22 + 56);
          }

          else
          {
            v23 = 0.0;
            v24 = 0.0;
          }

          if (v12)
          {
            v25 = v23;
          }

          else
          {
            v25 = v24;
          }

          if (v12)
          {
            v23 = v24;
          }

          if (v25 > v18)
          {
            v18 = v25;
          }

          v4 = v4 + v23;
          ++v21;
        }

        while (v19 != v21);
        v26 = [v16 countByEnumeratingWithState:&v70 objects:v75 count:16];
        v19 = v26;
      }

      while (v26);
    }

    if (v12)
    {
      v27 = v11;
    }

    else
    {
      v27 = v18;
    }

    if (v12)
    {
      v28 = v18;
    }

    else
    {
      v28 = v11;
    }

    *(a1 + 56) = v28;
    *(a1 + 64) = v27;
    if (v3)
    {
      v29 = *(v3 + 29);
    }

    else
    {
      v29 = 0;
    }

    v30 = HIDWORD(v29);
    if (*(a1 + 9))
    {
      v31 = v29;
    }

    else
    {
      v31 = HIDWORD(v29);
    }

    v32 = *(a1 + 40);
    v33 = v32;
    switch(v31)
    {
      case 1:
        v34 = v8 + (v11 - v4 - v65 * ([v32 count] - 1) - v14 - v8) * 0.5;
        goto LABEL_49;
      case 3:
        if ([v32 count] <= 1)
        {
          v35 = v11 - (v14 + v8);
          if (v35 >= v4)
          {
            v34 = v8 + (v35 - v4) * 0.5;
          }

          else
          {
            v34 = v8;
          }

          v65 = 0.0;
LABEL_49:
          if ((*(a1 + 9) & 1) != 0 || *(a1 + 20) != 1 || v29 != 3 || v30 && v30 != 2)
          {
LABEL_50:
            v64 = *(a1 + 56);
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v36 = v33;
            v37 = [v36 countByEnumeratingWithState:&v66 objects:v74 count:16];
            if (!v37)
            {
              goto LABEL_82;
            }

            v38 = v37;
            v39 = *v67;
            while (1)
            {
              v40 = 0;
              do
              {
                if (*v67 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                v41 = *(*(&v66 + 1) + 8 * v40);
                if (v41)
                {
                  v42 = v41[6];
                  v43 = v41[7];
                }

                else
                {
                  v42 = 0.0;
                  v43 = 0.0;
                }

                if (v12)
                {
                  v44 = v43;
                }

                else
                {
                  v44 = v42;
                }

                v45 = *(a1 + 12);
                if (v12)
                {
                  v46 = v42;
                }

                else
                {
                  v46 = v43;
                }

                v47 = v18 * 0.5 + v46 * -0.5;
                v48 = v18 - v46;
                if (v45 != 2)
                {
                  v48 = 0.0;
                }

                if (v45 == 1)
                {
                  v48 = v47;
                }

                if ((v12 & 1) == 0)
                {
                  if (v7)
                  {
                    v49 = v34;
                    v50 = v48;
                  }

                  else
                  {
                    v49 = v34;
                    v50 = v48;
                    v51 = v34;
                    if (*(v6 + 98))
                    {
                      goto LABEL_74;
                    }
                  }

                  goto LABEL_73;
                }

                if (v7)
                {
                  v49 = v48;
                  v50 = v34;
LABEL_73:
                  v77.origin.x = v49;
                  v77.origin.y = v50;
                  v77.size.width = v42;
                  v77.size.height = v43;
                  v51 = v64 - CGRectGetWidth(v77) - v49;
                  v48 = v50;
                  goto LABEL_74;
                }

                v49 = v48;
                v50 = v34;
                v51 = v48;
                v48 = v34;
                if ((*(v6 + 98) & 1) == 0)
                {
                  goto LABEL_73;
                }

LABEL_74:
                if (v41)
                {
                  v41[4] = v51;
                  v41[5] = v48;
                  v41[6] = v42;
                  v41[7] = v43;
                }

                v34 = v34 + v65 + v44;
                ++v40;
              }

              while (v38 != v40);
              v52 = [v36 countByEnumeratingWithState:&v66 objects:v74 count:16];
              v38 = v52;
              if (!v52)
              {
LABEL_82:

                return;
              }
            }
          }

          v53 = 0.0;
          v54 = 0.0;
          if (v7 || (v54 = v6[14], (*(v6 + 97) & 1) == 0))
          {
            v55 = v63 + v9;
            v56 = 48;
            if (v3)
            {
              v57 = 15;
              goto LABEL_94;
            }
          }

          else
          {
            v55 = v10 + v62;
            v56 = 56;
            if (v3)
            {
              v57 = 14;
LABEL_94:
              v53 = v3[v57];
            }
          }

          v58 = v54 - v55;
          v59 = [*(a1 + 40) lastObject];
          v60 = 0.0;
          v65 = 0.0;
          if (v59)
          {
            v60 = *&v59[v56];
          }

          if (v60 <= v58)
          {
            v61 = -1;
            do
            {
              v58 = v58 - (v53 + v60);
              ++v61;
            }

            while (v60 <= v58);
            if (v61)
            {
              v65 = (v11 - v60 * (v61 + 1) - v8 - v14) / v61;
            }
          }

          v34 = v8;
          goto LABEL_50;
        }

        v65 = (v11 - v4 - v8 - v14) / ([v33 count] - 1);
        break;
      case 2:
        v34 = v11 - v4 - v65 * ([v32 count] - 1) - v14;
        goto LABEL_49;
    }

    v34 = v8;
    goto LABEL_49;
  }
}

- (void)addItem:(int)a3 atEnd:
{
  v5 = a2;
  if (a1)
  {
    v6 = a1[5];
    v7 = v5;
    if (a3)
    {
      [v6 addObject:v5];
    }

    else
    {
      [v6 insertObject:v5 atIndex:0];
    }

    v5 = v7;
    if (v7)
    {
      objc_storeWeak(v7 + 3, a1);
      v5 = v7;
    }
  }
}

- (uint64_t)indexOfNearestItemAtPoint:(double)a3
{
  v3 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    v7 = WeakRetained;
    if (WeakRetained && (v8 = objc_loadWeakRetained(WeakRetained + 18)) != 0)
    {
      v9 = v8[97];
    }

    else
    {
      v9 = 0;
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10 = *(v3 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46___UIFlowLayoutRow_indexOfNearestItemAtPoint___block_invoke;
    v12[3] = &unk_1E7100310;
    v13 = v9 & 1;
    *&v12[6] = a2;
    *&v12[7] = a3;
    v12[4] = v3;
    v12[5] = &v14;
    [v10 enumerateObjectsUsingBlock:v12];
    v3 = v15[3];
    _Block_object_dispose(&v14, 8);
  }

  return v3;
}

@end