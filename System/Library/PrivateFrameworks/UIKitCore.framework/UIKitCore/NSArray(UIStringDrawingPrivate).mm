@interface NSArray(UIStringDrawingPrivate)
- (double)_legacy_drawComponentsJoinedByString:()UIStringDrawingPrivate atPoint:forWidth:withFont:lineBreakMode:;
@end

@implementation NSArray(UIStringDrawingPrivate)

- (double)_legacy_drawComponentsJoinedByString:()UIStringDrawingPrivate atPoint:forWidth:withFont:lineBreakMode:
{
  v57 = *MEMORY[0x1E69E9840];
  if ((a6 - 6) <= 0xFFFFFFFFFFFFFFFBLL)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v13 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v14 = [self componentsJoinedByString:a3];
  [v14 _legacy_sizeWithFont:a5];
  if (v15 <= a7)
  {
    if (a4)
    {
      [v14 _legacy_drawAtPoint:a5 forWidth:a6 withFont:*a4 lineBreakMode:{a4[1], a7}];
    }

    v38 = v15;
  }

  else
  {
    v48 = a4;
    v51 = v13;
    v49 = a6;
    v16 = [self count];
    v50 = &v48;
    v17 = 8 * v16;
    MEMORY[0x1EEE9AC00](v16);
    v18 = (&v48 - ((8 * v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    MEMORY[0x1EEE9AC00](v19);
    v21 = (&v48 - v20);
    if (v22)
    {
      bzero(&v48 - v20, v17);
      bzero(v18, v17);
    }

    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
    v52 = 0u;
    v23 = [self countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v53;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v53 != v26)
          {
            objc_enumerationMutation(self);
          }

          v28 = *(*(&v52 + 1) + 8 * i);
          if (v25)
          {
            v28 = [a3 stringByAppendingString:v28];
          }

          v18[v25] = v28;
          [v28 _legacy_sizeWithFont:a5];
          v21[v25++] = v29;
        }

        v24 = [self countByEnumeratingWithState:&v52 objects:v56 count:16];
      }

      while (v24);
    }

    if (v16)
    {
      v30 = a7 / v16;
      v31 = 0.0;
      v32 = v21;
      v33 = v16;
      v34 = 0.0;
      v13 = v51;
      do
      {
        v35 = *v32++;
        v36 = v31 + v35;
        v37 = v34 + v35;
        if (v35 <= v30)
        {
          v31 = v36;
        }

        else
        {
          v34 = v37;
        }

        --v33;
      }

      while (v33);
      v38 = *MEMORY[0x1E695F060];
      v39 = *(MEMORY[0x1E695F060] + 8);
      v40 = (a7 - v31) / v34;
      v41 = v49;
      v42 = v48;
      do
      {
        if (*v21 > v30)
        {
          v43 = v40;
        }

        else
        {
          v43 = 1.0;
        }

        v44 = *v18;
        if (v42)
        {
          [v44 _legacy_drawAtPoint:a5 forWidth:v41 withFont:v38 + *v42 lineBreakMode:{v42[1], *v21 * v43}];
        }

        else
        {
          [v44 _legacy_sizeWithFont:a5 forWidth:v41 lineBreakMode:*v21 * v43];
        }

        v38 = v38 + ceil(v45);
        if (v39 < v46)
        {
          v39 = v46;
        }

        ++v18;
        ++v21;
        --v16;
      }

      while (v16);
    }

    else
    {
      v38 = *MEMORY[0x1E695F060];
      v13 = v51;
    }
  }

  return v38;
}

@end