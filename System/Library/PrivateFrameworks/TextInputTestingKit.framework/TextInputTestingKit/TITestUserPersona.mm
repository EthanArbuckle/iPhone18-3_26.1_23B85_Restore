@interface TITestUserPersona
- (CGPoint)userPointForKey:(id)a3;
- (TITestUserPersona)initWithPersonaName:(id)a3;
- (void)updateFromKeyplane:(id)a3;
@end

@implementation TITestUserPersona

- (CGPoint)userPointForKey:(id)a3
{
  keyInfo = self->_keyInfo;
  v4 = [a3 name];
  v5 = [(NSMutableDictionary *)keyInfo objectForKey:v4];

  v6 = [v5 errorGenerator];
  [v6 randomPointInDistribution];
  v8 = v7;
  v10 = v9;

  v11 = [v5 rotationMatrix];

  if (v11)
  {
    v12 = [v5 rotationMatrix];
    [v12 transformedPoint:{v8, v10}];
    v8 = v13;
    v10 = v14;
  }

  [v5 center];
  v16 = v15;
  [v5 center];
  v18 = v10 + v17;

  v19 = v8 + v16;
  v20 = v18;
  result.y = v20;
  result.x = v19;
  return result;
}

- (void)updateFromKeyplane:(id)a3
{
  v5 = a3;
  if (self->_currentKeyplane != v5)
  {
    objc_storeStrong(&self->_currentKeyplane, a3);
    cachedKeyInfo = self->_cachedKeyInfo;
    v7 = [(UIKBTree *)self->_currentKeyplane name];
    v8 = [(NSMutableDictionary *)cachedKeyInfo objectForKey:v7];

    if (!v8)
    {
      v50 = v5;
      v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v10 = self->_cachedKeyInfo;
      v11 = [(UIKBTree *)self->_currentKeyplane name];
      [(NSMutableDictionary *)v10 setObject:v9 forKey:v11];

      v47 = [(UIKBTree *)v5 keys];
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v89[0] = 0;
      v89[1] = v89;
      v89[2] = 0x5012000000;
      v89[3] = __Block_byref_object_copy__784;
      v89[4] = __Block_byref_object_dispose__785;
      v89[5] = &unk_26D4F599A;
      v13 = *(MEMORY[0x277CBF3A0] + 16);
      v90 = *MEMORY[0x277CBF3A0];
      v91 = v13;
      v85[0] = MEMORY[0x277D85DD0];
      v85[1] = 3221225472;
      v85[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke;
      v85[3] = &unk_279DA06E0;
      v14 = v9;
      v86 = v14;
      v49 = v12;
      v87 = v49;
      v88 = v89;
      [v47 enumerateObjectsUsingBlock:v85];
      v79 = 0;
      v80 = &v79;
      v81 = 0x3032000000;
      v82 = __Block_byref_object_copy__32;
      v83 = __Block_byref_object_dispose__33;
      v84 = 0;
      personaData = self->_personaData;
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_34;
      v76[3] = &unk_279DA0708;
      v77 = v5;
      v78 = &v79;
      [(NSDictionary *)personaData enumerateKeysAndObjectsUsingBlock:v76];
      v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v51 = [v80[5] objectForKey:@"KEYGROUPS"];
      v48 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v16 = objc_alloc(MEMORY[0x277CBEB58]);
      v17 = [v14 allKeys];
      v18 = [v16 initWithArray:v17];

      v70[0] = MEMORY[0x277D85DD0];
      v70[1] = 3221225472;
      v70[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_2;
      v70[3] = &unk_279DA0780;
      v75 = v89;
      v8 = v14;
      v71 = v8;
      v19 = v18;
      v72 = v19;
      v20 = v48;
      v73 = v20;
      v21 = v42;
      v74 = v21;
      v46 = v19;
      [v51 enumerateKeysAndObjectsUsingBlock:v70];
      if ([v19 count])
      {
        [v21 setObject:v19 forKey:@"OTHERS"];
      }

      v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v22 = [v21 allKeys];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_5;
      v68[3] = &unk_279DA07A8;
      v23 = v41;
      v69 = v23;
      [v22 enumerateObjectsUsingBlock:v68];

      v24 = [v80[5] objectForKey:@"AFFINES"];
      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_6;
      v64[3] = &unk_279DA07F8;
      v25 = v23;
      v65 = v25;
      v26 = v49;
      v66 = v26;
      v27 = v20;
      v67 = v27;
      v45 = v24;
      [v24 enumerateKeysAndObjectsUsingBlock:v64];
      v28 = [v80[5] objectForKey:@"GLOBALS"];
      v44 = [v28 objectForKey:@"STDDEVXAXISPCT"];

      v29 = [v80[5] objectForKey:@"GLOBALS"];
      v43 = [v29 objectForKey:@"STDDEVYAXISPCT"];

      v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_2_138;
      v58[3] = &unk_279DA0820;
      v31 = v26;
      v59 = v31;
      v32 = v27;
      v60 = v32;
      v33 = v30;
      v61 = v33;
      v34 = v44;
      v62 = v34;
      v35 = v43;
      v63 = v35;
      [v21 enumerateKeysAndObjectsUsingBlock:v58];
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_149;
      v52[3] = &unk_279DA0870;
      v36 = v21;
      v53 = v36;
      v37 = v25;
      v54 = v37;
      v38 = v31;
      v55 = v38;
      v39 = v32;
      v56 = v39;
      v40 = v33;
      v57 = v40;
      [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v52];

      _Block_object_dispose(&v79, 8);
      _Block_object_dispose(v89, 8);

      v5 = v50;
    }

    self->_keyInfo = v8;
  }
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v16 = a2;
  v5 = objc_alloc_init(TITestUserPersonaKeyInfo);
  [v16 frame];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  [(TITestUserPersonaKeyInfo *)v5 setCenter:MidX, CGRectGetMidY(v19)];
  v11 = a1[4];
  v12 = [v16 name];
  [v11 setObject:v5 forKey:v12];

  v13 = a1[5];
  v14 = [v16 name];
  [v13 setObject:v16 forKey:v14];

  v15 = *(a1[6] + 8);
  if (a3)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    *(*(a1[6] + 8) + 48) = CGRectUnion(*(v15 + 48), v20);
  }

  else
  {
    *(v15 + 48) = x;
    *(v15 + 56) = y;
    *(v15 + 64) = width;
    *(v15 + 72) = height;
  }
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_34(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = [*(a1 + 32) name];
  v9 = [v8 containsString:v10];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"OTHERS"])
  {
    v56 = *MEMORY[0x277D85DF8];
    v57 = "Invalid key group 'OTHERS' -- keys remaining after grouping is complete will automatically go into the 'OTHERS' group\n";
    v58 = 118;
    goto LABEL_18;
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = [v6 objectForKey:@"AREA"];

  if (!v8)
  {
    v55 = [v6 objectForKey:@"NAMES"];

    if (!v55)
    {
      goto LABEL_10;
    }

    v56 = *MEMORY[0x277D85DF8];
    v57 = "NYI";
    v58 = 3;
    goto LABEL_18;
  }

  v9 = [v6 objectForKey:@"AREA"];
  v10 = [v9 objectForKey:@"RECT"];
  v11 = [v9 objectForKey:@"OVAL"];
  v12 = [v9 objectForKey:@"REFKEYRECT"];
  if (!v12)
  {
    v59 = *MEMORY[0x277D85DF8];
    [v5 UTF8String];
    fprintf(v59, "Missing REFKEYRECT in area key group '%s'\n");
    goto LABEL_20;
  }

  if (v10 && v11)
  {
    v60 = *MEMORY[0x277D85DF8];
    [v5 UTF8String];
    fprintf(v60, "Invalid area key group '%s' - both RECT and OVAL specified.\n");
    goto LABEL_20;
  }

  if (!v10)
  {
    v61 = *MEMORY[0x277D85DF8];
    if (!v11)
    {
      [v5 UTF8String];
      fprintf(v61, "Invalid area key group '%s' - no RECT or OVAL specified.\n");
LABEL_20:
      abort();
    }

    v57 = "NYI";
    v58 = 3;
    v56 = *MEMORY[0x277D85DF8];
LABEL_18:
    fwrite(v57, v58, 1uLL, v56);
    abort();
  }

  v13 = [v10 objectForKey:@"TOPPCT"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [v10 objectForKey:@"LEFTPCT"];
  [v16 doubleValue];
  v18 = v17;

  v19 = [v10 objectForKey:@"HEIGHTPCT"];
  [v19 doubleValue];
  v21 = v20;

  v22 = [v10 objectForKey:@"WIDTHPCT"];
  [v22 doubleValue];
  v24 = v23 / 100.0;

  v25 = *(*(a1 + 64) + 8);
  v26 = v25[8];
  v27 = v25[9];
  v28 = v25[6] + v26 * (v18 / 100.0);
  v29 = v25[7] + v27 * (v15 / 100.0);
  v30 = v24 * v26;
  v31 = v21 / 100.0 * v27;
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_3;
  v81[3] = &unk_279DA0730;
  v84 = v28;
  v85 = v29;
  v63 = v29;
  v86 = v30;
  v87 = v31;
  v32 = *(a1 + 32);
  v82 = *(a1 + 40);
  v33 = v7;
  v83 = v33;
  [v32 enumerateKeysAndObjectsUsingBlock:v81];

  v34 = [v12 objectForKey:@"TOPPCT"];
  [v34 doubleValue];
  v36 = v35;

  v37 = [v12 objectForKey:@"LEFTPCT"];
  [v37 doubleValue];
  v39 = v38;

  v40 = [v12 objectForKey:@"HEIGHTPCT"];
  [v40 doubleValue];
  v42 = v41;

  v43 = [v12 objectForKey:@"WIDTHPCT"];
  [v43 doubleValue];
  v44 = v36 / 100.0;
  v45 = v42 / 100.0;
  v47 = v46 / 100.0;

  v48 = v28 + v30 * (v39 / 100.0);
  v49 = v30 * v47;
  v50 = v31 * v45;
  v88.origin.x = v48;
  v88.origin.y = v63 + v31 * v44;
  v88.size.width = v49;
  v88.size.height = v50;
  MidX = CGRectGetMidX(v88);
  v89.origin.x = v48;
  v89.origin.y = v63 + v31 * v44;
  v89.size.width = v49;
  v89.size.height = v50;
  MidY = CGRectGetMidY(v89);
  v80[0] = 0;
  v80[1] = v80;
  v80[2] = 0x2020000000;
  v80[3] = 0x7FF0000000000000;
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__32;
  v78 = __Block_byref_object_dispose__33;
  v79 = 0;
  v64[0] = MEMORY[0x277D85DD0];
  v64[1] = 3221225472;
  v64[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_4;
  v64[3] = &unk_279DA0758;
  v53 = *(a1 + 32);
  v68 = v48;
  v69 = v63 + v31 * v44;
  v70 = v49;
  v71 = v50;
  v72 = MidX;
  v73 = MidY;
  v65 = v53;
  v66 = v80;
  v67 = &v74;
  [v33 enumerateObjectsUsingBlock:v64];
  v54 = v75[5];
  if (!v54)
  {
    v62 = *MEMORY[0x277D85DF8];
    [v5 UTF8String];
    fprintf(v62, "No reference key found in area for key group '%s'\n");
    goto LABEL_20;
  }

  [*(a1 + 48) setObject:v54 forKey:v5];

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(v80, 8);

LABEL_10:
  [*(a1 + 56) setObject:v7 forKey:v5];
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = objc_alloc_init(TIFitAffineMLLMatrixWrapper);
  [*(a1 + 32) setObject:v3 forKey:v4];
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKey:v5];
  if (!v7)
  {
    v63 = *MEMORY[0x277D85DF8];
    [v5 UTF8String];
    fprintf(v63, "Invalid AFFINES entry %s: Must match an ASSIGNMENT group.\n");
    goto LABEL_40;
  }

  v8 = [v6 objectForKey:@"VALUES"];

  if (v8)
  {
    v9 = [v6 objectForKey:@"VALUES"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 count] == 6)
    {
      v69 = 0;
      v70 = &v69;
      v71 = 0x5812000000;
      v72 = __Block_byref_object_copy__90;
      v73 = __Block_byref_object_dispose__91;
      v74 = &unk_26D4F599A;
      TIFitAffineMLLMatrix::TIFitAffineMLLMatrix(v75);
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_93;
      v66[3] = &unk_279DA07D0;
      v10 = v5;
      v67 = v10;
      v68 = &v69;
      [v9 enumerateObjectsUsingBlock:v66];
      v11 = [*(a1 + 32) objectForKey:v10];
      [v11 setMatrix:v70 + 6];

      _Block_object_dispose(&v69, 8);
      std::__tree<std::__value_type<unsigned long,double>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,double>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,double>>>::destroy(v75[3]);

      goto LABEL_37;
    }

    v62 = *MEMORY[0x277D85DF8];
    [v5 UTF8String];
    fprintf(v62, "VALUES should be an array of 6 numbers in AFFINES entry %s.\n");
LABEL_40:
    abort();
  }

  v12 = [v6 objectForKey:@"TRANS"];
  v64 = v12;
  v13 = [v6 objectForKey:@"ROTRAD"];
  if (!v13)
  {
    v14 = [v6 objectForKey:@"ROTDEG"];
    v15 = v14;
    if (!v14 || (v16 = MEMORY[0x277CCABB0], [v14 doubleValue], objc_msgSend(v16, "numberWithDouble:", v17 * 3.14159265 / 180.0), v13 = objc_claimAutoreleasedReturnValue(), v15, !v13))
    {
      v18 = [v6 objectForKey:@"ROTGRA"];
      v19 = v18;
      if (v18)
      {
        v20 = MEMORY[0x277CCABB0];
        [v18 doubleValue];
        v13 = [v20 numberWithDouble:v21 * 3.14159265 / 200.0];
      }

      else
      {
        v13 = 0;
      }
    }
  }

  v22 = [v6 objectForKey:@"SKEWROTRAD"];
  v65 = v13;
  if (!v22)
  {
    v23 = [v6 objectForKey:@"SKEWROTDEG"];
    v24 = v23;
    if (!v23 || (v25 = MEMORY[0x277CCABB0], [v23 doubleValue], objc_msgSend(v25, "numberWithDouble:", v26 * 3.14159265 / 180.0), v22 = objc_claimAutoreleasedReturnValue(), v24, !v22))
    {
      v27 = [v6 objectForKey:@"SKEWROTGRA"];
      v28 = v27;
      if (v27)
      {
        v29 = MEMORY[0x277CCABB0];
        [v27 doubleValue];
        v22 = [v29 numberWithDouble:v30 * 3.14159265 / 200.0];
      }

      else
      {
        v22 = 0;
      }
    }
  }

  v31 = [v6 objectForKey:@"SCALE"];
  v32 = [*(a1 + 32) objectForKey:v5];
  [v65 doubleValue];
  [v32 setRotation:?];
  [v22 doubleValue];
  [v32 setSkewRotation:?];
  if (v12)
  {
    v33 = [v12 objectForKey:@"XPCT"];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    }

    v36 = v35;

    v37 = [v64 objectForKey:@"YPCT"];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
    }

    v40 = v39;

    v41 = *(a1 + 40);
    v42 = [*(a1 + 48) objectForKey:v5];
    v43 = [v41 objectForKey:v42];
    [v43 frame];
    v45 = v44;
    v47 = v46;

    [v36 doubleValue];
    v49 = v48;
    [v40 doubleValue];
    [v32 setXTrans:v45 * (v49 / 100.0) yTrans:v47 * (v50 / 100.0)];

    v12 = v64;
  }

  if (v31)
  {
    v51 = [v31 objectForKey:@"XPCT"];
    v52 = v51;
    if (v51)
    {
      v53 = v51;
    }

    else
    {
      v53 = [MEMORY[0x277CCABB0] numberWithDouble:100.0];
    }

    v54 = v53;

    v55 = [v31 objectForKey:@"YPCT"];
    v56 = v55;
    if (v55)
    {
      v57 = v55;
    }

    else
    {
      v57 = [MEMORY[0x277CCABB0] numberWithDouble:100.0];
    }

    v58 = v57;

    [v54 doubleValue];
    v60 = v59;
    [v58 doubleValue];
    [v32 setXScale:v60 / 100.0 yScale:v61 / 100.0];

    v12 = v64;
  }

LABEL_37:
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_2_138(uint64_t a1, void *a2)
{
  v20[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) objectForKey:v3];
  v6 = [v4 objectForKey:v5];

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v19[0] = @"GAUSSIAN_ERROR_STDDEV_X";
  v11 = MEMORY[0x277CCABB0];
  v12 = *(a1 + 48);
  [*(a1 + 56) doubleValue];
  v14 = [v11 numberWithDouble:v8 * (v13 / 100.0)];
  v20[0] = v14;
  v19[1] = @"GAUSSIAN_ERROR_STDDEV_Y";
  v15 = MEMORY[0x277CCABB0];
  [*(a1 + 64) doubleValue];
  v17 = [v15 numberWithDouble:v10 * (v16 / 100.0)];
  v19[2] = @"SCALE_ERROR_UNITS_TO_POINTS";
  v20[1] = v17;
  v20[2] = &unk_287ED4B68;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  [v12 setObject:v18 forKey:v3];
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_149(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __40__TITestUserPersona_updateFromKeyplane___block_invoke_2_150;
  v29[3] = &unk_279DA0848;
  v8 = v5;
  v30 = v8;
  v9 = [v7 keysOfEntriesPassingTest:v29];
  v10 = [v9 anyObject];
  v11 = [*(a1 + 40) objectForKey:v10];
  v12 = *(a1 + 48);
  v13 = [*(a1 + 56) objectForKey:v10];
  v14 = [v12 objectForKey:v13];

  [v14 frame];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  MidY = CGRectGetMidY(v32);
  [v6 center];
  v22 = v21;
  [v6 center];
  [v11 transformedPoint:{v22 - MidX, v23 - MidY}];
  [v6 setCenter:{MidX + v24, MidY + v25}];
  v26 = [TIGaussianErrorGenerator alloc];
  v27 = [*(a1 + 64) objectForKey:v10];
  v28 = [(TIGaussianErrorGenerator *)v26 initWithAttributes:v27];

  [v6 setErrorGenerator:v28];
  [v6 setRotationMatrix:v11];
}

uint64_t __40__TITestUserPersona_updateFromKeyplane___block_invoke_2_150(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  *a4 = result;
  return result;
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_93(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    fprintf(*MEMORY[0x277D85DF8], "VALUES entry %ld in AFFINES entry %s is not a number or string.\n", a3, [*(a1 + 32) UTF8String]);
    abort();
  }

  [v6 doubleValue];
  *MEMORY[0x26D6C05B0](*(*(a1 + 40) + 8) + 48) = v5;
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  [v5 center];
  v14.x = v10;
  v14.y = v11;
  v15.origin.x = v6;
  v15.origin.y = v7;
  v15.size.width = v8;
  v15.size.height = v9;
  if (CGRectContainsPoint(v15, v14) && [*(a1 + 32) containsObject:v12])
  {
    [*(a1 + 40) addObject:v12];
    [*(a1 + 32) removeObject:v12];
  }
}

void __40__TITestUserPersona_updateFromKeyplane___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v4 = [*(a1 + 32) objectForKey:?];
  [v4 center];
  v6 = v5;
  v8 = v7;

  v13.x = v6;
  v13.y = v8;
  if (CGRectContainsPoint(*(a1 + 56), v13))
  {
    v9 = (v8 - *(a1 + 96)) * (v8 - *(a1 + 96)) + (v6 - *(a1 + 88)) * (v6 - *(a1 + 88));
    v10 = *(*(a1 + 40) + 8);
    if (v9 < *(v10 + 24))
    {
      *(v10 + 24) = v9;
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    }
  }
}

- (TITestUserPersona)initWithPersonaName:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = a3;
  v27.receiver = self;
  v27.super_class = TITestUserPersona;
  v26 = [(TITestUserPersona *)&v27 init];
  if (v26)
  {
    v4 = v25;
    v5 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v6 = [&unk_287ED4A60 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = *v29;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(&unk_287ED4A60);
        }

        v9 = *(*(&v28 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CCA8D8] mainBundle];
        v11 = [v10 URLForResource:v4 withExtension:v9 subdirectory:@"TestPersonas"];

        v12 = [v11 path];
        v13 = [v5 fileExistsAtPath:v12];

        if (v13)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [&unk_287ED4A60 countByEnumeratingWithState:&v28 objects:v32 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = 0;
    }

    v14 = [v11 pathExtension];
    v15 = [v14 isEqualToString:@"plist"];

    if (v15)
    {
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v11];
      personaData = v26->_personaData;
      v26->_personaData = v16;
    }

    else
    {
      v18 = [v11 pathExtension];
      v19 = [v18 isEqualToString:@"json"];

      if (!v19)
      {
        goto LABEL_17;
      }

      v20 = MEMORY[0x277CCAAA0];
      v21 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v11];
      personaData = [v20 JSONObjectWithData:v21 options:0 error:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong(&v26->_personaData, personaData);
      }
    }

LABEL_17:
    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedKeyInfo = v26->_cachedKeyInfo;
    v26->_cachedKeyInfo = v22;
  }

  return v26;
}

@end