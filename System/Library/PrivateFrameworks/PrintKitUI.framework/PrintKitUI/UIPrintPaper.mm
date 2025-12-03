@interface UIPrintPaper
+ (UIPrintPaper)bestPaperForPageSize:(CGSize)contentSize withPapersFromArray:(NSArray *)paperList;
+ (id)_defaultPKPaperForOuptutType:(int64_t)type;
+ (id)_defaultPaperForOutputType:(int64_t)type;
+ (id)_defaultPaperListForOutputType:(int64_t)type;
+ (id)_genericPaperListForOutputType:(int64_t)type;
+ (id)_readyDocumentPaperListForPrinter:(id)printer withDuplexMode:(int64_t)mode contentSize:(CGSize)size scaleUpForRoll:(BOOL)roll;
+ (id)_readyPaperListForPrinter:(id)printer withDuplexMode:(int64_t)mode forContentType:(int64_t)type contentSize:(CGSize)size;
+ (id)bestPaperForPageSize:(CGSize)size andContentType:(int64_t)type withPapersFromArray:(id)array;
- (BOOL)isEqual:(id)equal;
- (CGRect)_printableRectForDuplex:(BOOL)duplex;
- (CGRect)printRect;
- (CGRect)printableRect;
- (CGRect)unAdjustedPrintableRect;
- (CGSize)paperSize;
- (CGSize)unAdjustedPaperSize;
- (id)_initWithPrintKitPaper:(id)paper;
- (id)_localizedMediaTypeName;
- (id)_localizedName;
- (id)description;
- (id)mediaType;
- (void)_updatePKPaper:(id)paper;
@end

@implementation UIPrintPaper

+ (UIPrintPaper)bestPaperForPageSize:(CGSize)contentSize withPapersFromArray:(NSArray *)paperList
{
  height = contentSize.height;
  width = contentSize.width;
  v7 = paperList;
  v8 = objc_opt_class();
  generic4x6Paper = [v8 generic4x6Paper];
  [generic4x6Paper paperSize];
  if (vabdd_f64(width, v10) + vabdd_f64(height, v11) < 1.0)
  {
    v15 = 1;
  }

  else
  {
    generic3_5x5Paper = [v8 generic3_5x5Paper];
    [generic3_5x5Paper paperSize];
    if (vabdd_f64(width, v13) + vabdd_f64(height, v14) >= 1.0)
    {
      genericA6Paper = [v8 genericA6Paper];
      [genericA6Paper paperSize];
      if (vabdd_f64(width, v17) + vabdd_f64(height, v18) >= 1.0)
      {
        genericPRC32KPaper = [v8 genericPRC32KPaper];
        [genericPRC32KPaper paperSize];
        v15 = vabdd_f64(width, v20) + vabdd_f64(height, v21) < 1.0;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  v22 = [self bestPaperForPageSize:v15 andContentType:v7 withPapersFromArray:{width, height}];

  return v22;
}

+ (id)bestPaperForPageSize:(CGSize)size andContentType:(int64_t)type withPapersFromArray:(id)array
{
  height = size.height;
  width = size.width;
  v148 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v122 = type & 0xFFFFFFFFFFFFFFFDLL;
  array = [MEMORY[0x277CBEB18] array];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v10 = arrayCopy;
  v11 = [v10 countByEnumeratingWithState:&v135 objects:v146 count:16];
  v119 = v10;
  if (!v11)
  {

    v13 = 0;
    v120 = 0;
    v121 = 0;
    v17 = 3.40282347e38;
    goto LABEL_47;
  }

  v12 = v11;
  v120 = 0;
  v121 = 0;
  v13 = 0;
  v14 = *v136;
  v15 = 3.40282347e38;
  v16 = 3.40282347e38;
  v17 = 3.40282347e38;
  while (2)
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v136 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v19 = *(*(&v135 + 1) + 8 * i);
      pkPaper = [v19 pkPaper];
      [v19 paperSize];
      v22 = v21;
      v24 = v23;
      if ([pkPaper isRoll])
      {
        if (width > 0.0)
        {
          [pkPaper paperSize];
          if ([pkPaper maxCutLength] == v25)
          {
            v40 = height / width;
            if (v122 == 1)
            {
              [v19 printableRect];
              v44 = v40 * v43;
              topMarginInPoints = [pkPaper topMarginInPoints];
              v42 = v44 + ([pkPaper bottomMarginInPoints] + topMarginInPoints);
            }

            else
            {
              [v19 paperSize];
              v42 = v40 * v41;
            }

            pkPaper2 = [v19 pkPaper];
            v47 = [pkPaper2 cutToLength:v42];
            [v19 _updatePKPaper:v47];

            goto LABEL_44;
          }
        }
      }

      v26 = vabdd_f64(v22, width);
      v27 = vabdd_f64(v24, height);
      v28 = v26 + v27;
      if (v26 + v27 == 0.0)
      {
        v29 = v19;

        [v29 printableRect];
        v31 = v22 == v30;
        if (v24 != v32)
        {
          v31 = 0;
        }

        v17 = 0.0;
        if (v122 != 1)
        {
          if (!v31)
          {
            goto LABEL_39;
          }

          goto LABEL_28;
        }

        if (!v31)
        {
LABEL_28:
          v13 = v29;
          goto LABEL_35;
        }

LABEL_39:
        [array addObject:v29];
        v13 = v29;
LABEL_44:

        goto LABEL_45;
      }

      v33 = v22 < width || v24 < height;
      if (v33)
      {
        if (v22 > width || v24 > height)
        {
          v36 = v120;
          v35 = v121;
          v37 = v15;
          v38 = v19;
          if (v28 >= v16)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v35 = v120;
          v38 = v121;
          v33 = v28 < v15;
          v37 = v26 + v27;
          v28 = v16;
          v36 = v19;
          if (!v33)
          {
            goto LABEL_34;
          }
        }

        v39 = v19;

        v15 = v37;
        v16 = v28;
        v120 = v36;
        v121 = v38;
LABEL_34:
        v10 = v119;
        goto LABEL_35;
      }

      if (v28 < v17)
      {
        v48 = v19;

        v17 = v28;
        v13 = v48;
        goto LABEL_44;
      }

LABEL_35:
    }

    v12 = [v10 countByEnumeratingWithState:&v135 objects:v146 count:16];
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_45:

  if (!v13 || v17 > 1.0)
  {
LABEL_47:
    v118 = array;
    v49 = v10;
    v50 = 0;
    do
    {
      v51 = (&SubstitutionPaperForPageSize_subs + 32 * v50);
      if (vabdd_f64(width, *v51) + vabdd_f64(height, v51[1]) >= 1.0)
      {
        v53 = 0;
      }

      else
      {
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v52 = v49;
        v53 = [v52 countByEnumeratingWithState:&v139 objects:v147 count:16];
        if (v53)
        {
          v54 = *v140;
          while (2)
          {
            for (j = 0; j != v53; j = j + 1)
            {
              if (*v140 != v54)
              {
                objc_enumerationMutation(v52);
              }

              v56 = *(*(&v139 + 1) + 8 * j);
              [v56 paperSize];
              if (vabdd_f64(v57, v51[2]) + vabdd_f64(v58, v51[3]) < 1.0)
              {
                v53 = v56;
                goto LABEL_60;
              }
            }

            v53 = [v52 countByEnumeratingWithState:&v139 objects:v147 count:16];
            if (v53)
            {
              continue;
            }

            break;
          }
        }

LABEL_60:
      }

      if (v50 > 4)
      {
        break;
      }

      ++v50;
    }

    while (!v53);

    if (v53)
    {
      v59 = v53;

      v17 = 0.0;
      v13 = v59;
    }

    array = v118;
    v10 = v119;
  }

  if (!v13 || v17 > 1.0)
  {
    v60 = [UIPrintPaper _defaultPaperForOutputType:0];
    [v60 paperSize];
    v62 = v61;
    v64 = v63;
    v131 = 0u;
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v65 = v10;
    v66 = [v65 countByEnumeratingWithState:&v131 objects:v145 count:16];
    if (v66)
    {
      v67 = v66;
      v68 = *v132;
      while (2)
      {
        for (k = 0; k != v67; ++k)
        {
          if (*v132 != v68)
          {
            objc_enumerationMutation(v65);
          }

          v70 = *(*(&v131 + 1) + 8 * k);
          [v70 paperSize];
          v72 = v71;
          v74 = v73;
          v75 = vabdd_f64(v71, v62) + vabdd_f64(v73, v64);
          if (v75 == 0.0)
          {
            [v70 printableRect];
            v77 = v72 == v76;
            if (v74 != v78)
            {
              v77 = 0;
            }

            if (((v122 != 1) ^ v77))
            {
              goto LABEL_81;
            }
          }

          if (v75 < 1.0)
          {
LABEL_81:
            v79 = v70;

            v13 = v79;
            goto LABEL_82;
          }
        }

        v67 = [v65 countByEnumeratingWithState:&v131 objects:v145 count:16];
        if (v67)
        {
          continue;
        }

        break;
      }

LABEL_82:
      v10 = v119;
    }

    if (!v13)
    {
      v80 = v121;
      if (!v121)
      {
        v80 = v120;
      }

      v13 = v80;
      if (!v13)
      {
        v13 = v60;
      }
    }
  }

  mediaType = [v13 mediaType];
  v82 = mediaType;
  if (v122 == 1)
  {
    if ([mediaType containsString:@"glossy"])
    {
      goto LABEL_127;
    }

    mediaType2 = [v13 mediaType];
    v100 = [mediaType2 containsString:@"matte"];

    if ((v100 & 1) == 0)
    {
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v82 = v10;
      v101 = [v82 countByEnumeratingWithState:&v123 objects:v143 count:16];
      if (v101)
      {
        v102 = v101;
        v86 = array;
        v103 = *v124;
        while (2)
        {
          for (m = 0; m != v102; ++m)
          {
            if (*v124 != v103)
            {
              objc_enumerationMutation(v82);
            }

            v89 = *(*(&v123 + 1) + 8 * m);
            if (v89 != v13)
            {
              [*(*(&v123 + 1) + 8 * m) paperSize];
              v106 = v105;
              v108 = v107;
              [v13 paperSize];
              if (v106 == v110 && v108 == v109)
              {
                mediaType3 = [v89 mediaType];
                if ([mediaType3 containsString:@"glossy"])
                {

                  goto LABEL_125;
                }

                mediaType4 = [v89 mediaType];
                v114 = [mediaType4 containsString:@"matte"];

                if (v114)
                {
                  goto LABEL_125;
                }
              }
            }
          }

          v102 = [v82 countByEnumeratingWithState:&v123 objects:v143 count:16];
          if (v102)
          {
            continue;
          }

          break;
        }

LABEL_123:
        v10 = v119;
LABEL_126:
        array = v86;
      }

LABEL_127:
    }
  }

  else
  {
    v83 = [mediaType isEqualToString:@"stationery"];

    if ((v83 & 1) == 0)
    {
      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      v82 = v10;
      v84 = [v82 countByEnumeratingWithState:&v127 objects:v144 count:16];
      if (v84)
      {
        v85 = v84;
        v86 = array;
        v87 = *v128;
LABEL_93:
        v88 = 0;
        while (1)
        {
          if (*v128 != v87)
          {
            objc_enumerationMutation(v82);
          }

          v89 = *(*(&v127 + 1) + 8 * v88);
          if (v89 != v13)
          {
            [*(*(&v127 + 1) + 8 * v88) paperSize];
            v91 = v90;
            v93 = v92;
            [v13 paperSize];
            if (v91 == v95 && v93 == v94)
            {
              mediaType5 = [v89 mediaType];
              v98 = [mediaType5 isEqualToString:@"stationery"];

              if (v98)
              {
                break;
              }
            }
          }

          if (v85 == ++v88)
          {
            v85 = [v82 countByEnumeratingWithState:&v127 objects:v144 count:16];
            if (v85)
            {
              goto LABEL_93;
            }

            goto LABEL_123;
          }
        }

LABEL_125:
        v115 = v89;

        v10 = v119;
        v82 = v119;
        v13 = v115;
        goto LABEL_126;
      }

      goto LABEL_127;
    }
  }

  v116 = v13;

  return v13;
}

+ (id)_readyPaperListForPrinter:(id)printer withDuplexMode:(int64_t)mode forContentType:(int64_t)type contentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x277D85DE8];
  printerCopy = printer;
  v11 = printerCopy;
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    [printerCopy papersForPhotoWithSize:{width, height}];
  }

  else
  {
    [printerCopy papersForDocumentWithSize:mode != 0 andDuplex:{width, height}];
  }
  v12 = ;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = [UIPrintPaper alloc];
        v21 = [(UIPrintPaper *)v20 _initWithPrintKitPaper:v19, v23];
        [array addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  return array;
}

+ (id)_readyDocumentPaperListForPrinter:(id)printer withDuplexMode:(int64_t)mode contentSize:(CGSize)size scaleUpForRoll:(BOOL)roll
{
  rollCopy = roll;
  height = size.height;
  width = size.width;
  v28 = *MEMORY[0x277D85DE8];
  printerCopy = printer;
  v11 = printerCopy;
  if (printerCopy)
  {
    v12 = [printerCopy papersForDocumentWithSize:rollCopy scaleUpOnRoll:mode != 0 andDuplex:{width, height}];
  }

  else
  {
    v12 = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        v20 = [UIPrintPaper alloc];
        v21 = [(UIPrintPaper *)v20 _initWithPrintKitPaper:v19, v23];
        [array addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  return array;
}

+ (id)_defaultPKPaperForOuptutType:(int64_t)type
{
  if (!_defaultPKPaperForOuptutType____letterCountries)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"US", @"CA", @"MX", @"CR", @"PH", @"CL", @"CO", 0}];
    v5 = _defaultPKPaperForOuptutType____letterCountries;
    _defaultPKPaperForOuptutType____letterCountries = v4;
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    if ([v7 isEqualToString:@"JP"])
    {
      [MEMORY[0x277D41098] generic3_5x5Paper];
    }

    else
    {
      [MEMORY[0x277D41098] generic4x6Paper];
    }
    genericLetterPaper = ;
  }

  else if (([_defaultPKPaperForOuptutType____letterCountries containsObject:v7] & 1) != 0 || !v7)
  {
    genericLetterPaper = [MEMORY[0x277D41098] genericLetterPaper];
  }

  else
  {
    genericLetterPaper = [MEMORY[0x277D41098] genericA4Paper];
  }

  v9 = genericLetterPaper;

  return v9;
}

+ (id)_genericPaperListForOutputType:(int64_t)type
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = v4;
  v6 = MEMORY[0x277CBEA60];
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    genericA6Paper = [v4 genericA6Paper];
    generic4x6Paper = [v5 generic4x6Paper];
    generic3_5x5Paper = [v5 generic3_5x5Paper];
    genericPRC32KPaper = [v5 genericPRC32KPaper];
    genericHagakiPaper = [v5 genericHagakiPaper];
    v12 = [v5 genericBorderlessWithName:@"na_5x7_5x7in"];
    v13 = [v5 genericBorderlessWithName:@"na_govt-letter_8x10in"];
    v14 = [v5 genericBorderlessWithName:@"om_small-photo_100x150mm"];
    v15 = [v5 genericBorderlessWithName:@"om_large-photo_200x300"];
    v16 = [v6 arrayWithObjects:{genericA6Paper, generic4x6Paper, generic3_5x5Paper, genericPRC32KPaper, genericHagakiPaper, v12, v13, v14, v15, 0}];
  }

  else
  {
    genericA6Paper = [v4 genericA4Paper];
    generic4x6Paper = [v5 genericLetterPaper];
    generic3_5x5Paper = [v5 genericLegalPaper];
    genericPRC32KPaper = [v5 genericWithName:@"na_ledger_11x17in"];
    genericHagakiPaper = [v5 genericWithName:@"iso_a3_297x420mm"];
    v12 = [v5 genericWithName:@"iso_b5_176x250mm"];
    v13 = [v5 genericWithName:@"jis_b5_182x257mm"];
    v16 = [v6 arrayWithObjects:{genericA6Paper, generic4x6Paper, generic3_5x5Paper, genericPRC32KPaper, genericHagakiPaper, v12, v13, 0}];
  }

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [[UIPrintPaper alloc] _initWithPrintKitPaper:*(*(&v25 + 1) + 8 * i)];
        [v17 addObject:v23];
      }

      v20 = [v18 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v20);
  }

  return v17;
}

+ (id)_defaultPaperListForOutputType:(int64_t)type
{
  v21 = *MEMORY[0x277D85DE8];
  if ((type & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    [MEMORY[0x277D41098] photoPapers];
  }

  else
  {
    [MEMORY[0x277D41098] documentPapers];
  }
  v4 = ;
  v5 = [UIPrintPaper _defaultPKPaperForOuptutType:type];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [UIPrintPaper alloc];
        v14 = [(UIPrintPaper *)v13 _initWithPrintKitPaper:v12, v16];
        if ([v5 isEqual:v12])
        {
          [v6 insertObject:v14 atIndex:0];
        }

        else
        {
          [v6 addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)_defaultPaperForOutputType:(int64_t)type
{
  v3 = [UIPrintPaper _defaultPKPaperForOuptutType:type];
  v4 = [[UIPrintPaper alloc] _initWithPrintKitPaper:v3];

  return v4;
}

- (id)_initWithPrintKitPaper:(id)paper
{
  paperCopy = paper;
  v8.receiver = self;
  v8.super_class = UIPrintPaper;
  v5 = [(UIPrintPaper *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIPrintPaper *)v5 setPkPaper:paperCopy];
    [(UIPrintPaper *)v6 setScalingFactor:1.0];
  }

  return v6;
}

- (void)_updatePKPaper:(id)paper
{
  paperCopy = paper;
  pkPaper = [(UIPrintPaper *)self pkPaper];

  v5 = paperCopy;
  if (pkPaper != paperCopy)
  {
    [(UIPrintPaper *)self setPkPaper:paperCopy];
    v5 = paperCopy;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  pkPaper = [(UIPrintPaper *)self pkPaper];
  pkPaper2 = [equalCopy pkPaper];

  LOBYTE(equalCopy) = [pkPaper isEqual:pkPaper2];
  return equalCopy;
}

- (CGSize)paperSize
{
  pkPaper = [(UIPrintPaper *)self pkPaper];
  [pkPaper paperSize];
  v5 = v4;
  v7 = v6;

  [(UIPrintPaper *)self scalingFactor];
  v9 = v5 / v8;
  [(UIPrintPaper *)self scalingFactor];
  v11 = v7 / v10;
  paperOrientation = [(UIPrintPaper *)self paperOrientation];
  if (paperOrientation)
  {
    v13 = v11;
  }

  else
  {
    v13 = v9;
  }

  if (paperOrientation)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  result.height = v14;
  result.width = v13;
  return result;
}

- (CGSize)unAdjustedPaperSize
{
  pkPaper = [(UIPrintPaper *)self pkPaper];
  [pkPaper paperSize];
  v5 = v4;
  v7 = v6;

  [(UIPrintPaper *)self scalingFactor];
  v9 = v5 / v8;
  [(UIPrintPaper *)self scalingFactor];
  v11 = v7 / v10;
  v12 = v9;
  result.height = v11;
  result.width = v12;
  return result;
}

- (CGRect)unAdjustedPrintableRect
{
  pkPaper = [(UIPrintPaper *)self pkPaper];
  [pkPaper imageableAreaRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)printableRect
{
  pkPaper = [(UIPrintPaper *)self pkPaper];
  [pkPaper paperSize];
  v5 = v4;
  [(UIPrintPaper *)self scalingFactor];
  v7 = v6;
  pkPaper2 = [(UIPrintPaper *)self pkPaper];
  [pkPaper2 paperSize];
  v10 = v9;
  [(UIPrintPaper *)self scalingFactor];
  v12 = v11;

  pkPaper3 = [(UIPrintPaper *)self pkPaper];
  [pkPaper3 imageableAreaRect];
  v15 = v14;
  [(UIPrintPaper *)self scalingFactor];
  v17 = v15 / v16;
  pkPaper4 = [(UIPrintPaper *)self pkPaper];
  [pkPaper4 imageableAreaRect];
  v20 = v19;
  [(UIPrintPaper *)self scalingFactor];
  v22 = v20 / v21;
  pkPaper5 = [(UIPrintPaper *)self pkPaper];
  [pkPaper5 imageableAreaRect];
  v25 = v24;
  [(UIPrintPaper *)self scalingFactor];
  v27 = v25 / v26;
  pkPaper6 = [(UIPrintPaper *)self pkPaper];
  [pkPaper6 imageableAreaRect];
  v30 = v29;
  [(UIPrintPaper *)self scalingFactor];
  v32 = v30 / v31;

  if ([(UIPrintPaper *)self paperOrientation]== 1)
  {
    v22 = v10 / v12 - v22 - v32;
    v33 = v27;
    v34 = v17;
  }

  else if ([(UIPrintPaper *)self paperOrientation]== 2)
  {
    v34 = v5 / v7 - v17 - v27;
    v33 = v27;
  }

  else
  {
    v33 = v32;
    v32 = v27;
    v34 = v22;
    v22 = v17;
  }

  v35 = v22;
  v36 = v32;
  result.size.height = v33;
  result.size.width = v36;
  result.origin.y = v34;
  result.origin.x = v35;
  return result;
}

- (CGRect)_printableRectForDuplex:(BOOL)duplex
{
  duplexCopy = duplex;
  [(UIPrintPaper *)self printableRect];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  if (duplexCopy)
  {
    [(UIPrintPaper *)self paperSize];
    v14 = v13;
    v16 = v15;
    v26.origin.x = v6;
    v26.origin.y = v8;
    v26.size.width = v10;
    v26.size.height = v12;
    MinX = CGRectGetMinX(v26);
    v27.origin.x = v6;
    v27.origin.y = v8;
    v27.size.width = v10;
    v27.size.height = v12;
    v18 = v14 - CGRectGetMaxX(v27);
    if (MinX >= v18)
    {
      v19 = MinX;
    }

    else
    {
      v19 = v18;
    }

    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    MinY = CGRectGetMinY(v28);
    v29.origin.x = v6;
    v29.origin.y = v8;
    v29.size.width = v10;
    v29.size.height = v12;
    v21 = v16 - CGRectGetMaxY(v29);
    if (MinY >= v21)
    {
      v8 = MinY;
    }

    else
    {
      v8 = v21;
    }

    v10 = v14 + v19 * -2.0;
    v12 = v16 + v8 * -2.0;
    v6 = v19;
  }

  v22 = v6;
  v23 = v8;
  v24 = v10;
  v25 = v12;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  pkPaper = [(UIPrintPaper *)self pkPaper];
  v5 = [v3 stringWithFormat:@"<UIPrintPaper:%p %@>", self, pkPaper];

  return v5;
}

- (id)_localizedName
{
  pkPaper = [(UIPrintPaper *)self pkPaper];
  localizedName = [pkPaper localizedName];

  return localizedName;
}

- (id)_localizedMediaTypeName
{
  pkPaper = [(UIPrintPaper *)self pkPaper];
  mediaTypeName = [pkPaper mediaTypeName];

  return mediaTypeName;
}

- (id)mediaType
{
  pkPaper = [(UIPrintPaper *)self pkPaper];
  mediaInfo = [pkPaper mediaInfo];
  v4 = [mediaInfo objectForKeyedSubscript:@"media-type"];

  return v4;
}

- (CGRect)printRect
{
  v2 = *MEMORY[0x277CBF3A0];
  v3 = *(MEMORY[0x277CBF3A0] + 8);
  v4 = *(MEMORY[0x277CBF3A0] + 16);
  v5 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end