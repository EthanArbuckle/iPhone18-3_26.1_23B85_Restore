@interface SCROBrailleUIBRFFile
- (SCROBrailleUIBRFFile)initWithBRF:(id)f rawInitialLocation:(int64_t)location rawBookmarks:(id)bookmarks reflowSize:(int64_t)size shouldWordWrap:(BOOL)wrap shouldStripPageIndicators:(BOOL)indicators;
@end

@implementation SCROBrailleUIBRFFile

- (SCROBrailleUIBRFFile)initWithBRF:(id)f rawInitialLocation:(int64_t)location rawBookmarks:(id)bookmarks reflowSize:(int64_t)size shouldWordWrap:(BOOL)wrap shouldStripPageIndicators:(BOOL)indicators
{
  wrapCopy = wrap;
  fCopy = f;
  bookmarksCopy = bookmarks;
  v133.receiver = self;
  v133.super_class = SCROBrailleUIBRFFile;
  v16 = [(SCROBrailleUIBRFFile *)&v133 init];
  if (!v16)
  {
    goto LABEL_53;
  }

  if (initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators__onceToken != -1)
  {
    [SCROBrailleUIBRFFile initWithBRF:rawInitialLocation:rawBookmarks:reflowSize:shouldWordWrap:shouldStripPageIndicators:];
  }

  v129 = 0;
  v130 = &v129;
  v131 = 0x2020000000;
  v132 = 0;
  v128[0] = 0;
  v128[1] = v128;
  v128[2] = 0x2020000000;
  v128[3] = 0;
  v124 = 0;
  v125 = &v124;
  v126 = 0x2020000000;
  v127 = malloc_type_calloc(size + 1, 2uLL, 0x1000040BDFB0063uLL);
  v120 = 0;
  v121 = &v120;
  v122 = 0x2020000000;
  v123 = 0;
  v119[0] = 0;
  v119[1] = v119;
  v119[2] = 0x2020000000;
  v119[3] = 0;
  v115 = 0;
  v116 = &v115;
  v117 = 0x2020000000;
  v118 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 1;
  v105 = 0;
  v106 = &v105;
  v107 = 0x3032000000;
  v108 = __Block_byref_object_copy__3;
  v109 = __Block_byref_object_dispose__3;
  v110 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:{objc_msgSend(fCopy, "length")}];
  v99 = 0;
  v100 = &v99;
  v101 = 0x3032000000;
  v102 = __Block_byref_object_copy__3;
  v103 = __Block_byref_object_dispose__3;
  v55 = wrapCopy;
  v104 = objc_opt_new();
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__3;
  v97 = __Block_byref_object_dispose__3;
  v98 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(fCopy, "length")}];
  v89 = 0;
  v90 = &v89;
  v91 = 0x2020000000;
  v92 = 0x7FFFFFFFFFFFFFFFLL;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_5;
  aBlock[3] = &unk_279B74798;
  v80 = &v105;
  v81 = &v89;
  locationCopy = location;
  v82 = &v129;
  v83 = v119;
  v84 = &v93;
  v85 = v128;
  v51 = bookmarksCopy;
  v79 = bookmarksCopy;
  v86 = &v99;
  v87 = &v115;
  v17 = _Block_copy(aBlock);
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_2;
  v75[3] = &unk_279B747C0;
  v18 = v17;
  v76 = v18;
  v77 = &v111;
  v19 = _Block_copy(v75);
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_3;
  v71[3] = &unk_279B747E8;
  v73 = &v115;
  sizeCopy = size;
  v20 = v19;
  v72 = v20;
  v21 = _Block_copy(v71);
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_4;
  v66[3] = &unk_279B74810;
  v69 = &v120;
  v22 = v18;
  v67 = v22;
  v70 = &v124;
  v23 = v21;
  v68 = v23;
  v24 = _Block_copy(v66);
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_5;
  v60[3] = &unk_279B74838;
  v63 = &v115;
  v64 = &v120;
  sizeCopy2 = size;
  v50 = v20;
  v61 = v50;
  v25 = v24;
  v62 = v25;
  v26 = _Block_copy(v60);
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_6;
  v57[3] = &unk_279B74860;
  indicatorsCopy = indicators;
  v52 = fCopy;
  v27 = fCopy;
  v58 = v27;
  v28 = _Block_copy(v57);
  v29 = 0;
  v54 = v26;
  v30 = v55;
  if (size == 0x7FFFFFFFFFFFFFFFLL)
  {
    v30 = 0;
  }

  v56 = v30;
  v53 = v25;
  v31 = v130[3];
  v32 = 1;
  while (v31 < [v27 length])
  {
    v33 = [v27 characterAtIndex:v130[3]];
    if (v33 == 13)
    {
      goto LABEL_49;
    }

    if ((v32 & 1) != 0 && v28[2](v28, v130[3]))
    {
      for (i = v130[3]; i < [v27 length] && objc_msgSend(v27, "characterAtIndex:", v130[3]) != 10; v130[3] = i)
      {
        i = v130[3] + 1;
      }

      goto LABEL_43;
    }

    if (size == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v33 == 10)
      {
        (*(v22 + 2))(v22, 10);
LABEL_43:
        v32 = 1;
        goto LABEL_49;
      }
    }

    else
    {
      if (v33 == 10)
      {
        v54[2]();
        v45 = v130[3];
        if (v45 + 1 < [v27 length] && (-[SCROBrailleUIBRFFile _characterIsWhitespaceOrNewLine:](v16, "_characterIsWhitespaceOrNewLine:", objc_msgSend(v27, "characterAtIndex:", v130[3] + 1)) || v28[2](v28, v130[3] + 1)))
        {
          (*(v22 + 2))(v22, 10);
          v29 = 0;
          v39 = 1;
          v32 = 1;
          goto LABEL_37;
        }

        (*(v22 + 2))(v22, 10240);
        v23[2](v23);
        v29 = 0;
        goto LABEL_43;
      }

      if (v33 == 45)
      {
        v35 = v130[3];
        if (v35 + 2 < [v27 length])
        {
          v36 = [v27 characterAtIndex:v130[3] + 1];
          v37 = [v27 characterAtIndex:v130[3] + 2];
          if (v36 == 13)
          {
            v38 = v130[3];
            if (v38 + 3 >= [v27 length])
            {
              goto LABEL_27;
            }

            v36 = [v27 characterAtIndex:v130[3] + 2];
            v37 = [v27 characterAtIndex:v130[3] + 3];
          }

          if (v36 == 10 && ![(SCROBrailleUIBRFFile *)v16 _characterIsWhitespaceOrNewLine:v37])
          {
            v39 = 0;
            v32 = 0;
            ++v130[3];
LABEL_37:
            *(v112 + 24) = v39;
            goto LABEL_49;
          }
        }
      }
    }

LABEL_27:
    v40 = initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators__dictTable;
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v33];
    v42 = [v40 objectForKeyedSubscript:v41];
    integerValue = [v42 integerValue];

    if (!v56)
    {
      (*(v22 + 2))(v22, (integerValue + 10240));
      if (size == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    if (integerValue)
    {
      if (v29)
      {
        (*(v22 + 2))(v22, (integerValue + 10240));
        v44 = v23;
LABEL_46:
        (v44[2])();
        v29 = 1;
        goto LABEL_47;
      }

      *(v125[3] + 2 * v121[3]) = integerValue + 10240;
      v46 = v121[3];
      v121[3] = v46 + 1;
      v44 = v53;
      if (v46 >= size)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v54[2]();
      if ((v112[3] & 1) != 0 || v116[3] >= 1)
      {
        (*(v22 + 2))(v22, 10240);
      }

      v23[2](v23);
    }

    v29 = 0;
LABEL_47:
    v23[2](v23);
LABEL_48:
    v32 = 0;
LABEL_49:
    v31 = v130[3] + 1;
    v130[3] = v31;
  }

  v54[2]();
  objc_storeStrong(&v16->_unicode, v106[5]);
  objc_storeStrong(&v16->_bookmarks, v100[5]);
  objc_storeStrong(&v16->_locationMap, v94[5]);
  v47 = v90[3];
  if (v47 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v47 = [v106[5] length];
  }

  v16->_initialLocation = v47;
  free(v125[3]);
  v48 = v16;

  _Block_object_dispose(&v89, 8);
  _Block_object_dispose(&v93, 8);

  _Block_object_dispose(&v99, 8);
  _Block_object_dispose(&v105, 8);

  _Block_object_dispose(&v111, 8);
  _Block_object_dispose(&v115, 8);
  _Block_object_dispose(v119, 8);
  _Block_object_dispose(&v120, 8);
  _Block_object_dispose(&v124, 8);
  _Block_object_dispose(v128, 8);
  _Block_object_dispose(&v129, 8);
  bookmarksCopy = v51;
  fCopy = v52;
LABEL_53:

  return v16;
}

void __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke()
{
  v7 = [@" A1B'K2L@CIF/MSPE3H9O6R^DJG>NTQ *5<-U8V.%[$+X!&:"lowercaseString"4\\0Z7(_?W]#Y)="];;
  v0 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([@" A1B'K2L@CIF/MSPE3H9O6R^DJG>NTQ *5<-U8V.%[$+X!&;:"length"4\\0Z7(_?W]#Y)="])
  {
    v1 = 0;
    do
    {
      v2 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(@" A1B'K2L@CIF/MSPE3H9O6R^DJG>NTQ, *5<-U8V.%[$+X!&:4\\0Z7(_?W]#Y)=", "characterAtIndex:", v1)}];;
      [v0 setObject:v2 forKeyedSubscript:v3];

      v4 = [MEMORY[0x277CCABB0] numberWithInteger:v1];
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v7, "characterAtIndex:", v1)}];
      [v0 setObject:v4 forKeyedSubscript:v5];

      ++v1;
    }

    while (v1 < [@" A1B'K2L@CIF/MSPE3H9O6R^DJG>NTQ *5<-U8V.%[$+X!&;:"length"4\\0Z7(_?W]#Y)="]);
  }

  v6 = initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators__dictTable;
  initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators__dictTable = v0;
}

void __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_5(uint64_t a1, __int16 a2)
{
  v18 = a2;
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = [MEMORY[0x277CCACA8] stringWithCharacters:&v18 length:1];
  [v3 appendString:v4];

  v5 = *(*(a1 + 48) + 8);
  if (*(v5 + 24) == 0x7FFFFFFFFFFFFFFFLL && *(*(*(a1 + 56) + 8) + 24) > *(a1 + 104))
  {
    v6 = *(*(*(a1 + 64) + 8) + 24);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    *(v5 + 24) = v6 - 1;
  }

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(*(*(a1 + 56) + 8) + 24)];
  [v7 addObject:v8];

  v9 = *(*(*(a1 + 80) + 8) + 24);
  if (v9 < [*(a1 + 32) count])
  {
    v10 = *(*(*(a1 + 56) + 8) + 24);
    v11 = [*(a1 + 32) objectAtIndex:*(*(*(a1 + 80) + 8) + 24)];
    v12 = [v11 integerValue];

    if (v10 > v12)
    {
      v13 = *(*(*(a1 + 88) + 8) + 40);
      v14 = *(*(*(a1 + 64) + 8) + 24);
      if (v14 <= 1)
      {
        v14 = 1;
      }

      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v14 - 1];
      [v13 addObject:v15];

      ++*(*(*(a1 + 80) + 8) + 24);
    }
  }

  ++*(*(*(a1 + 64) + 8) + 24);
  v16 = *(*(a1 + 96) + 8);
  if (v18 == 10)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v16 + 24) + 1;
  }

  *(v16 + 24) = v17;
}

uint64_t __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

void *__120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_3(void *result)
{
  if (*(*(result[5] + 8) + 24) >= result[6])
  {
    return (*(result[4] + 16))();
  }

  return result;
}

uint64_t __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_4(uint64_t result)
{
  v1 = *(*(result + 48) + 8);
  if (*(v1 + 24) >= 1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      v4 = *(*(*(v2[7] + 8) + 24) + 2 * v3);
      (*(v2[4] + 16))();
      result = (*(v2[5] + 16))();
      ++v3;
      v1 = *(v2[6] + 8);
    }

    while (*(v1 + 24) > v3);
  }

  *(v1 + 24) = 0;
  return result;
}

uint64_t __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_5(void *a1)
{
  if (*(*(a1[7] + 8) + 24) + *(*(a1[6] + 8) + 24) > a1[8])
  {
    v2 = a1[4];
    (*(a1[4] + 16))();
  }

  v3 = *(a1[5] + 16);

  return v3();
}

uint64_t __120__SCROBrailleUIBRFFile_initWithBRF_rawInitialLocation_rawBookmarks_reflowSize_shouldWordWrap_shouldStripPageIndicators___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  v4 = a2 + 2;
  if (a2 + 2 >= [*(a1 + 32) length])
  {
    return 0;
  }

  v5 = [*(a1 + 32) characterAtIndex:a2];
  v6 = [*(a1 + 32) characterAtIndex:a2 + 1];
  v7 = [*(a1 + 32) characterAtIndex:v4];
  v10 = v5 == 34 && v6 == 51 && v7 == 35;
  return v5 == 45 && v6 == 45 && v7 == 45 || v10;
}

@end