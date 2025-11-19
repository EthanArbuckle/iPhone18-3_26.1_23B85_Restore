@interface PXGDiagnosticsSpriteProbe
+ (NSMutableArray)activeSpriteProbes;
+ (PXGSpriteDataStore)spriteDataStore;
+ (void)_recordEventIfNeededWithType:(int64_t)a3 layout:(id)a4 oldState:(id *)a5 newState:(id *)a6 userInfo:(id)a7;
+ (void)didAdjustSprites:(id *)a3 forAnimation:(id)a4 appearing:(BOOL)a5;
+ (void)layout:(id)a3 didChangeSprites:(id *)a4;
+ (void)layout:(id)a3 didInsertSprites:(id *)a4;
+ (void)layout:(id)a3 willChangeSprites:(id *)a4;
+ (void)layout:(id)a3 willRemoveSprites:(id *)a4;
+ (void)shouldUseDoubleSidedAnimationForSprites:(id *)a3 indexes:(id)a4 animation:(id)a5;
+ (void)willAdjustSprites:(id *)a3 forAnimation:(id)a4 appearing:(BOOL)a5;
+ (void)willRequestTextureForSpriteWithGeometry:(id *)a3 style:(id *)a4 info:(id *)a5 inLayout:(id)a6 textureInfo:(id)a7;
- (PXGDiagnosticsSpriteProbe)init;
- (id)descriptionForSpriteState:(id *)a3;
- (void)_recordEventIfNeededWithType:(int64_t)a3 layout:(id)a4 oldState:(id *)a5 newState:(id *)a6 userInfo:(id)a7;
- (void)_recordEventWithType:(int64_t)a3 oldState:(id *)a4 newState:(id *)a5 userInfo:(id)a6;
- (void)setActive:(BOOL)a3;
@end

@implementation PXGDiagnosticsSpriteProbe

- (void)_recordEventIfNeededWithType:(int64_t)a3 layout:(id)a4 oldState:(id *)a5 newState:(id *)a6 userInfo:(id)a7
{
  v15 = a4;
  v12 = a7;
  v13 = [(PXGDiagnosticsSpriteProbe *)self predicate];
  v14 = v13;
  if ((!a5 || (*(v13 + 16))(v13, a5, v15)) && (!a6 || (v14)[2](v14, a6, v15)))
  {
    [(PXGDiagnosticsSpriteProbe *)self _recordEventWithType:a3 oldState:a5 newState:a6 userInfo:v12];
  }
}

- (id)descriptionForSpriteState:(id *)a3
{
  if (a3)
  {
    PXRectWithCenterAndSize();
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = MEMORY[0x277CCACA8];
    var1 = a3->var1.var1.var0.var0.var1;
    v15 = [(PXGDiagnosticsSpriteProbe *)self tagDescriptor];
    v16 = v15[2](v15, *&a3[2].var1.var0);
    v17 = [v13 stringWithFormat:@"r:{%0.2f, %0.2f, %0.2f, %0.2f}, a:%0.2f, tag:%@", v6, v8, v10, v12, *&var1, v16];
  }

  else
  {
    v17 = &stru_282C556B8;
  }

  return v17;
}

- (void)_recordEventWithType:(int64_t)a3 oldState:(id *)a4 newState:(id *)a5 userInfo:(id)a6
{
  v10 = a6;
  v11 = [(PXGDiagnosticsSpriteProbe *)self eventHandler];
  v11[2](v11, self, a3, a4, a5, v10);
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    v4 = a3;
    v6 = [objc_opt_class() activeSpriteProbes];
    v7 = v6;
    if (self->_active)
    {
      [v6 removeObject:self];
      v6 = v7;
    }

    self->_active = v4;
    if (v4)
    {
      [v7 addObject:self];
      v6 = v7;
    }
  }
}

- (PXGDiagnosticsSpriteProbe)init
{
  v5.receiver = self;
  v5.super_class = PXGDiagnosticsSpriteProbe;
  v2 = [(PXGDiagnosticsSpriteProbe *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PXGDiagnosticsSpriteProbe *)v2 setPredicate:&__block_literal_global_31];
    [(PXGDiagnosticsSpriteProbe *)v3 setTagDescriptor:&__block_literal_global_34];
    [(PXGDiagnosticsSpriteProbe *)v3 setEventHandler:&__block_literal_global_41];
  }

  return v3;
}

void __33__PXGDiagnosticsSpriteProbe_init__block_invoke_3(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a2;
  v11 = a6;
  v12 = PXGTungstenGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    if (a3 > 7)
    {
      v13 = @"??";
    }

    else
    {
      v13 = off_2782A9E58[a3];
    }

    v14 = v13;
    v15 = [v10 descriptionForSpriteState:a4];
    v16 = [v10 descriptionForSpriteState:a5];
    v17 = v16;
    v19 = 138413058;
    v18 = &stru_282C556B8;
    v20 = v14;
    if (v11)
    {
      v18 = v11;
    }

    v21 = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = v16;
    v25 = 2112;
    v26 = v18;
    _os_log_impl(&dword_21AD38000, v12, OS_LOG_TYPE_DEBUG, "[Sprite] %@ {%@}->{%@} %@", &v19, 0x2Au);
  }
}

+ (void)_recordEventIfNeededWithType:(int64_t)a3 layout:(id)a4 oldState:(id *)a5 newState:(id *)a6 userInfo:(id)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a7;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [a1 activeSpriteProbes];
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v19 + 1) + 8 * v18++) _recordEventIfNeededWithType:a3 layout:v12 oldState:a5 newState:a6 userInfo:v13];
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

+ (void)shouldUseDoubleSidedAnimationForSprites:(id *)a3 indexes:(id)a4 animation:(id)a5
{
  v8 = a4;
  v9 = [a5 layout];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v10 = *&a3->var2;
  v14 = *&a3->var0;
  v15 = v10;
  v12[2] = __87__PXGDiagnosticsSpriteProbe_shouldUseDoubleSidedAnimationForSprites_indexes_animation___block_invoke;
  v12[3] = &unk_2782A9E38;
  var4 = a3->var4;
  v17 = a1;
  v13 = v9;
  v11 = v9;
  [v8 enumerateIndexesUsingBlock:v12];
}

uint64_t __87__PXGDiagnosticsSpriteProbe_shouldUseDoubleSidedAnimationForSprites_indexes_animation___block_invoke(void *a1, unsigned int a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = 0;
  v2 = a1[8];
  v3 = (a1[7] + 32 * a2);
  v4 = v3[1];
  v18[0] = *v3;
  v18[1] = v4;
  v5 = (v2 + 160 * a2);
  v6 = v5[1];
  v18[2] = *v5;
  v18[3] = v6;
  v7 = v5[5];
  v9 = v5[2];
  v8 = v5[3];
  v18[6] = v5[4];
  v18[7] = v7;
  v18[4] = v9;
  v18[5] = v8;
  v10 = v5[9];
  v12 = v5[6];
  v11 = v5[7];
  v18[10] = v5[8];
  v18[11] = v10;
  v18[8] = v12;
  v18[9] = v11;
  v13 = a1[10];
  v14 = a1[9] + 40 * a2;
  v15 = *(v14 + 32);
  v16 = *(v14 + 16);
  v18[12] = *v14;
  v18[13] = v16;
  v19 = v15;
  return [v13 _recordEventIfNeededWithType:7 layout:a1[4] oldState:v18 newState:0 userInfo:0];
}

+ (void)didAdjustSprites:(id *)a3 forAnimation:(id)a4 appearing:(BOOL)a5
{
  v47 = a5;
  v80[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [v8 layout];
  v79 = @"duration";
  v10 = MEMORY[0x277CCABB0];
  [v8 duration];
  v11 = [v10 numberWithDouble:?];
  v80[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:&v79 count:1];

  v48 = 0u;
  v13 = [a1 spriteDataStore];
  v14 = v13;
  if (v13)
  {
    [v13 sprites];
  }

  else
  {
    v48 = 0u;
  }

  if (a3->var0)
  {
    v46 = [MEMORY[0x277CCA890] currentHandler];
    [v46 handleFailureInMethod:a2 object:a1 file:@"PXGDiagnosticsSpriteProbe.m" lineNumber:214 description:@"sprite count mismatch"];

    if (a3->var0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      do
      {
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v64 = 0u;
        v19 = *(v48 + v15 + 16);
        v64 = *(v48 + v15);
        v65 = v19;
        v20 = *(*(&v48 + 1) + v16 + 96);
        v21 = *(*(&v48 + 1) + v16 + 112);
        v22 = *(*(&v48 + 1) + v16 + 144);
        v74 = *(*(&v48 + 1) + v16 + 128);
        v75 = v22;
        v73 = v21;
        v23 = *(*(&v48 + 1) + v16 + 16);
        v66 = *(*(&v48 + 1) + v16);
        v67 = v23;
        v24 = *(*(&v48 + 1) + v16 + 80);
        v26 = *(*(&v48 + 1) + v16 + 32);
        v25 = *(*(&v48 + 1) + v16 + 48);
        v70 = *(*(&v48 + 1) + v16 + 64);
        v71 = v24;
        v68 = v26;
        v69 = v25;
        v72 = v20;
        v28 = *v17;
        v27 = v17[1];
        *&v78 = *(v17 + 4);
        v76 = v28;
        v77 = v27;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v49 = 0u;
        var3 = a3->var3;
        var4 = a3->var4;
        v31 = (a3->var2 + v15);
        v32 = v31[1];
        v49 = *v31;
        v50 = v32;
        v33 = *(var3 + v16 + 96);
        v34 = *(var3 + v16 + 112);
        v35 = *(var3 + v16 + 144);
        v59 = *(var3 + v16 + 128);
        v60 = v35;
        v58 = v34;
        v36 = *(var3 + v16 + 16);
        v51 = *(var3 + v16);
        v52 = v36;
        v37 = *(var3 + v16 + 80);
        v39 = *(var3 + v16 + 32);
        v38 = *(var3 + v16 + 48);
        v55 = *(var3 + v16 + 64);
        v56 = v37;
        v53 = v39;
        v54 = v38;
        v57 = v33;
        v41 = *(v17 + var4);
        v40 = *(v17 + var4 + 16);
        *&v63 = *(v17 + var4 + 32);
        v61 = v41;
        v62 = v40;
        if (v47)
        {
          v42 = &v49;
          v43 = &v64;
          v44 = a1;
          v45 = 5;
        }

        else
        {
          v42 = &v64;
          v43 = &v49;
          v44 = a1;
          v45 = 6;
        }

        [v44 _recordEventIfNeededWithType:v45 layout:v9 oldState:v42 newState:v43 userInfo:v12];
        ++v18;
        v17 = (v17 + 40);
        v16 += 160;
        v15 += 32;
      }

      while (v18 < a3->var0);
    }
  }
}

+ (void)willAdjustSprites:(id *)a3 forAnimation:(id)a4 appearing:(BOOL)a5
{
  v5 = [a1 spriteDataStore];
  [v5 setSprites:&v6];
}

+ (void)willRequestTextureForSpriteWithGeometry:(id *)a3 style:(id *)a4 info:(id *)a5 inLayout:(id)a6 textureInfo:(id)a7
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *&a3->var0.var2;
  v14[0] = *&a3->var0.var0;
  v14[1] = v7;
  v8 = *&a4[2].var3;
  v14[8] = *(&a4[2].var1 + 4);
  v14[9] = v8;
  v9 = *(&a4[3].var1 + 8);
  v14[10] = *&a4[2].var8;
  v14[11] = v9;
  var1 = a4[1].var1;
  v14[4] = *&a4->var5;
  v14[5] = var1;
  v11 = *&a4[1].var6;
  v14[6] = *&a4[1].var2;
  v14[7] = v11;
  v12 = *(&a4->var1 + 12);
  v14[2] = *&a4->var0;
  v14[3] = v12;
  v13 = *&a5->var4;
  v14[12] = *&a5->var0;
  v14[13] = v13;
  var3 = a5[1].var3;
  v16 = 0;
  [a1 _recordEventIfNeededWithType:4 layout:a6 oldState:0 newState:v14 userInfo:a7];
}

+ (void)layout:(id)a3 didChangeSprites:(id *)a4
{
  v68 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v42 = 0u;
  v43 = 0u;
  v8 = [a1 spriteDataStore];
  v9 = v8;
  if (v8)
  {
    [v8 sprites];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  var0 = v42;
  if (v42 == a4->var0)
  {
    if (v42)
    {
LABEL_6:
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      while (1)
      {
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        *&v58[48] = 0u;
        v59 = 0u;
        memset(&v58[16], 0, 32);
        v57 = 0u;
        *v58 = 0u;
        v56 = 0u;
        v15 = *(v43 + v11 + 16);
        v56 = *(v43 + v11);
        v57 = v15;
        v16 = *(*(&v43 + 1) + v12 + 96);
        v17 = *(*(&v43 + 1) + v12 + 112);
        v18 = *(*(&v43 + 1) + v12 + 144);
        v63 = *(*(&v43 + 1) + v12 + 128);
        v64 = v18;
        v62 = v17;
        v19 = *(*(&v43 + 1) + v12 + 16);
        *v58 = *(*(&v43 + 1) + v12);
        *&v58[16] = v19;
        v20 = *(*(&v43 + 1) + v12 + 80);
        v22 = *(*(&v43 + 1) + v12 + 32);
        v21 = *(*(&v43 + 1) + v12 + 48);
        v59 = *(*(&v43 + 1) + v12 + 64);
        v60 = v20;
        *&v58[32] = v22;
        *&v58[48] = v21;
        v61 = v16;
        v24 = *v13;
        v23 = v13[1];
        *&v67 = *(v13 + 4);
        v65 = v24;
        v66 = v23;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        *&v46[48] = 0u;
        v47 = 0u;
        memset(&v46[16], 0, 32);
        v45 = 0u;
        *v46 = 0u;
        v44 = 0u;
        var3 = a4->var3;
        var4 = a4->var4;
        v27 = (a4->var2 + v11);
        v28 = v27[1];
        v44 = *v27;
        v45 = v28;
        v29 = *(var3 + v12 + 96);
        v30 = *(var3 + v12 + 112);
        v31 = *(var3 + v12 + 144);
        v51 = *(var3 + v12 + 128);
        v52 = v31;
        v50 = v30;
        v32 = *(var3 + v12 + 16);
        *v46 = *(var3 + v12);
        *&v46[16] = v32;
        v33 = *(var3 + v12 + 80);
        v35 = *(var3 + v12 + 32);
        v34 = *(var3 + v12 + 48);
        v47 = *(var3 + v12 + 64);
        v48 = v33;
        *&v46[32] = v35;
        *&v46[48] = v34;
        v49 = v29;
        v36 = *(v13 + var4 + 32);
        v37 = *(v13 + var4 + 16);
        v53 = *(v13 + var4);
        v54 = v37;
        *&v55 = v36;
        v38 = v56;
        if (*&v56 == *&v44)
        {
          v38 = *(&v56 + 8);
          if (*(&v56 + 1) == *(&v44 + 1))
          {
            v38 = v57;
            if (*&v57 == *&v45)
            {
              v38 = vceq_f32(*(&v57 + 8), *(&v45 + 8));
              if (v38.i32[0] & v38.i32[1])
              {
                v38.i32[0] = *v58;
                if (*v58 == *v46)
                {
                  v38 = vmovn_s32(vceqq_f32(*&v58[4], *&v46[4]));
                  v38.i16[0] = vminv_u16(v38);
                  if (v38.i8[0])
                  {
                    v38 = vmovn_s32(vceqq_f32(*&v58[20], *&v46[20]));
                    v38.i16[0] = vminv_u16(v38);
                    if (v38.i8[0])
                    {
                      v38 = vmovn_s32(vceqq_f32(*&v58[36], *&v46[36]));
                      v38.i16[0] = vminv_u16(v38);
                      if (v38.i8[0])
                      {
                        v38.i32[0] = *&v58[52];
                        if (*&v58[52] == *&v46[52] && WORD2(v59) == WORD2(v47) && v65 == v53 && BYTE1(v65) == BYTE1(v53) && v67 == v55)
                        {
                          v38 = vceq_f32(*(&v65 + 8), *(&v53 + 8));
                          if (v38.i32[0] & v38.i32[1])
                          {
                            v38.i32[0] = v66;
                            if (*&v66 == *&v54 && *(&v66 + 1) == *(&v54 + 1))
                            {
                              goto LABEL_28;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v39 = &v56;
        if (v65)
        {
          goto LABEL_26;
        }

        v40 = 3;
        if (!v67)
        {
          break;
        }

LABEL_27:
        [a1 _recordEventIfNeededWithType:v40 layout:v7 oldState:v39 newState:&v44 userInfo:{0, *&v38, v42}];
        var0 = a4->var0;
LABEL_28:
        ++v14;
        v13 = (v13 + 40);
        v12 += 160;
        v11 += 32;
        if (v14 >= var0)
        {
          goto LABEL_40;
        }
      }

      v38 = vceqz_f32(*(&v65 + 8));
      v39 = &v56;
      if (v38.i8[0] & 1) != 0 && (v38.i8[4])
      {
        v38.i32[0] = v66;
        v40 = 3;
        if (*&v66 == 0.0)
        {
          if (*(&v66 + 1))
          {
            v40 = 3;
          }

          else
          {
            v40 = 2;
          }

          if (*(&v66 + 1))
          {
            v39 = &v56;
          }

          else
          {
            v39 = 0;
          }
        }

        goto LABEL_27;
      }

LABEL_26:
      v40 = 3;
      goto LABEL_27;
    }
  }

  else
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:a1 file:@"PXGDiagnosticsSpriteProbe.m" lineNumber:180 description:@"sprite count mismatch"];

    var0 = a4->var0;
    if (a4->var0)
    {
      goto LABEL_6;
    }
  }

LABEL_40:
}

+ (void)layout:(id)a3 willChangeSprites:(id *)a4
{
  v4 = [a1 spriteDataStore];
  [v4 setSprites:&v5];
}

+ (void)layout:(id)a3 didInsertSprites:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  if (a4->var0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      var3 = a4->var3;
      var4 = a4->var4;
      v13 = (a4->var2 + v7);
      v14 = v13[1];
      v24 = *v13;
      v25 = v14;
      v15 = *(var3 + v8 + 96);
      v16 = *(var3 + v8 + 112);
      v17 = *(var3 + v8 + 144);
      v34 = *(var3 + v8 + 128);
      v35 = v17;
      v33 = v16;
      v18 = *(var3 + v8 + 16);
      v26 = *(var3 + v8);
      v27 = v18;
      v19 = *(var3 + v8 + 80);
      v21 = *(var3 + v8 + 32);
      v20 = *(var3 + v8 + 48);
      v30 = *(var3 + v8 + 64);
      v31 = v19;
      v28 = v21;
      v29 = v20;
      v32 = v15;
      v23 = *(var4 + v9);
      v22 = *(var4 + v9 + 16);
      *&v38 = *(var4 + v9 + 32);
      v36 = v23;
      v37 = v22;
      [a1 _recordEventIfNeededWithType:1 layout:a3 oldState:0 newState:&v24 userInfo:0];
      ++v10;
      v9 += 40;
      v8 += 160;
      v7 += 32;
    }

    while (v10 < a4->var0);
  }
}

+ (void)layout:(id)a3 willRemoveSprites:(id *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  if (a4->var0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      var3 = a4->var3;
      var4 = a4->var4;
      v13 = (a4->var2 + v7);
      v14 = v13[1];
      v24 = *v13;
      v25 = v14;
      v15 = *(var3 + v8 + 96);
      v16 = *(var3 + v8 + 112);
      v17 = *(var3 + v8 + 144);
      v34 = *(var3 + v8 + 128);
      v35 = v17;
      v33 = v16;
      v18 = *(var3 + v8 + 16);
      v26 = *(var3 + v8);
      v27 = v18;
      v19 = *(var3 + v8 + 80);
      v21 = *(var3 + v8 + 32);
      v20 = *(var3 + v8 + 48);
      v30 = *(var3 + v8 + 64);
      v31 = v19;
      v28 = v21;
      v29 = v20;
      v32 = v15;
      v23 = *(var4 + v9);
      v22 = *(var4 + v9 + 16);
      *&v38 = *(var4 + v9 + 32);
      v36 = v23;
      v37 = v22;
      [a1 _recordEventIfNeededWithType:1 layout:a3 oldState:&v24 newState:0 userInfo:0];
      ++v10;
      v9 += 40;
      v8 += 160;
      v7 += 32;
    }

    while (v10 < a4->var0);
  }
}

+ (PXGSpriteDataStore)spriteDataStore
{
  if (spriteDataStore_onceToken != -1)
  {
    dispatch_once(&spriteDataStore_onceToken, &__block_literal_global_27);
  }

  v3 = spriteDataStore_spriteDataStore;

  return v3;
}

void __44__PXGDiagnosticsSpriteProbe_spriteDataStore__block_invoke()
{
  v0 = +[PXGSpriteDataStore newSpriteDataStore];
  v1 = spriteDataStore_spriteDataStore;
  spriteDataStore_spriteDataStore = v0;
}

+ (NSMutableArray)activeSpriteProbes
{
  if (activeSpriteProbes_onceToken != -1)
  {
    dispatch_once(&activeSpriteProbes_onceToken, &__block_literal_global_11125);
  }

  v3 = activeSpriteProbes_activeSpriteProbes;

  return v3;
}

void __47__PXGDiagnosticsSpriteProbe_activeSpriteProbes__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = activeSpriteProbes_activeSpriteProbes;
  activeSpriteProbes_activeSpriteProbes = v0;
}

@end