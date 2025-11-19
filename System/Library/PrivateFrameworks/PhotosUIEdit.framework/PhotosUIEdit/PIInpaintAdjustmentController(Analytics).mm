@interface PIInpaintAdjustmentController(Analytics)
- (id)analyticsPayload;
@end

@implementation PIInpaintAdjustmentController(Analytics)

- (id)analyticsPayload
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v3 setMinimumFractionDigits:1];
  [v3 setMaximumFractionDigits:2];
  v4 = [a1 adjustment];
  if (v4 && (v5 = v4, v6 = [a1 enabled], v5, v6))
  {
    v7 = [a1 objectForKeyedSubscript:@"operations"];
    v8 = v7;
    if (v7)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = [v7 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v9)
      {
        v10 = v9;
        v38 = v3;
        v39 = v2;
        v11 = 0;
        v12 = 0;
        v44 = 0;
        v45 = 0;
        v13 = 0;
        v41 = 0;
        v42 = 0;
        v40 = 0;
        v14 = *v47;
        v15 = 0x277D3A000uLL;
        do
        {
          v16 = 0;
          v43 = v10;
          do
          {
            if (*v47 != v14)
            {
              objc_enumerationMutation(v8);
            }

            v17 = [objc_alloc(*(v15 + 2304)) initWithDictionary:*(*(&v46 + 1) + 8 * v16)];
            v18 = [v17 mode];
            if (([v17 options] & 0x100) != 0)
            {
              v20 = 0;
              ++v11;
            }

            else
            {
              v19 = [v17 options];
              v12 += (v19 >> 9) & 1;
              v20 = (v19 & 0x200) == 0;
            }

            switch(v18)
            {
              case 4:
                v21 = v11;
                v22 = v12;
                v23 = v15;
                v24 = v8;
                v25 = [v17 isTargetPoints];
                v26 = [v17 isTapSelect];
                v27 = [v17 isFilledBrushStroke];
                if (v25)
                {
                  ++v42;
                }

                else if (v26)
                {
                  ++v41;
                }

                else
                {
                  v40 += v27 ^ 1u;
                }

                v8 = v24;
                v15 = v23;
                v12 = v22;
                v11 = v21;
                v10 = v43;
                break;
              case 2:
                v44 += v20;
                break;
              case 1:
                ++v45;
                break;
            }

            v13 += [v17 options] & 1;

            ++v16;
          }

          while (v10 != v16);
          v10 = [v8 countByEnumeratingWithState:&v46 objects:v50 count:16];
        }

        while (v10);
        v2 = v39;
        if (v40 >= 1)
        {
          v28 = [MEMORY[0x277CCABB0] numberWithInteger:?];
          [v39 setObject:v28 forKeyedSubscript:@"inpaint_group_removal_count"];
        }

        if (v41 >= 1)
        {
          v29 = [MEMORY[0x277CCABB0] numberWithInteger:?];
          [v39 setObject:v29 forKeyedSubscript:@"inpaint_tap_removal_count"];
        }

        if (v42 >= 1)
        {
          v30 = [MEMORY[0x277CCABB0] numberWithInteger:?];
          [v39 setObject:v30 forKeyedSubscript:@"inpaint_target_point_removal_count"];
        }

        if (v44 >= 1)
        {
          v31 = [MEMORY[0x277CCABB0] numberWithInteger:?];
          [v39 setObject:v31 forKeyedSubscript:@"inpaint_brush_removal_count"];
        }

        if (v11 >= 1)
        {
          v32 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
          [v39 setObject:v32 forKeyedSubscript:@"inpaint_retouch_brush_face_count"];
        }

        if (v12 >= 1)
        {
          v33 = [MEMORY[0x277CCABB0] numberWithInteger:v12];
          [v39 setObject:v33 forKeyedSubscript:@"inpaint_retouch_brush_general_count"];
        }

        if (v45 >= 1)
        {
          v34 = [MEMORY[0x277CCABB0] numberWithInteger:?];
          [v39 setObject:v34 forKeyedSubscript:@"inpaint_retouch_clone_count"];
        }

        v3 = v38;
        if (v13 >= 1)
        {
          v35 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          [v39 setObject:v35 forKeyedSubscript:@"inpaint_redacted_count"];
        }
      }
    }

    v36 = v2;
  }

  else
  {
    v36 = MEMORY[0x277CBEC10];
  }

  return v36;
}

@end