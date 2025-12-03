@interface PKPaperList
+ (PKPaperList)paperListWithAttrs:(const GET_PRINTER_ATTRIBUTES_Response *)attrs translations:(id)translations;
+ (PKPaperList)paperListWithPapers:(id)papers;
+ (PKPaperList)paperListWithTXTRecord:(id)record;
+ (id)mediaDictFromAttrs:(id)attrs translations:(id)translations;
- (BOOL)hasMatchingLoadedRoll:(id)roll;
- (BOOL)isPaperReady:(id)ready;
- (NSArray)rolls;
- (PKPaperList)initWithCoder:(id)coder;
- (PKPaperList)initWithPapers:(id)papers;
- (PKPaperList)initWithParams:(const GET_PRINTER_ATTRIBUTES_Response *)params translations:(id)translations;
- (PKPaperList)initWithTXTRecord:(id)record;
- (id)adjustMargins:(id)margins forDuplex:(id)duplex;
- (id)availableRollPapersPreferBorderless:(BOOL)borderless;
- (id)conjureMediaFromTXT:(id)t;
- (id)debugDescription;
- (id)filterPapers:(id)papers usingBlock:(id)block;
- (id)filterUsingBlock:(id)block;
- (id)matchPaper:(id)paper;
- (id)matchPaper:(id)paper inList:(id)list;
- (id)matchedPaper:(id)paper preferBorderless:(BOOL)borderless withDuplexMode:(id)mode didMatch:(BOOL *)match;
- (id)paperListForDuplexMode:(id)mode;
- (id)papersForDocumentWithSize:(CGSize)size scaleUpOnRoll:(BOOL)roll andDuplex:(BOOL)duplex;
- (id)papersForPhotoWithSize:(CGSize)size;
- (id)rollReadyPaperListForDocumentWithContentSize:(CGSize)size scaleUp:(BOOL)up;
- (id)rollReadyPaperListForPhotoWithContentSize:(CGSize)size;
- (id)rollReadyPaperListWithContentSize:(CGSize)size forPhoto:(BOOL)photo;
- (id)tersePaperFrom:(id)from withMediaInfo:(id)info;
- (id)tersePaperFrom:(id)from withRequest:(id)request;
- (unint64_t)jobTypesSupported:(id)supported;
- (void)addPaperSet:(id *)set withCount:(int)count toArrays:(id *)arrays;
- (void)categorizePapers:(id)papers;
- (void)visitProperties:(Visitor *)properties;
@end

@implementation PKPaperList

+ (PKPaperList)paperListWithAttrs:(const GET_PRINTER_ATTRIBUTES_Response *)attrs translations:(id)translations
{
  translationsCopy = translations;
  v6 = [[PKPaperList alloc] initWithParams:attrs translations:translationsCopy];

  return v6;
}

- (PKPaperList)initWithParams:(const GET_PRINTER_ATTRIBUTES_Response *)params translations:(id)translations
{
  v37 = *MEMORY[0x277D85DE8];
  translationsCopy = translations;
  v35.receiver = self;
  v35.super_class = PKPaperList;
  v28 = [(PKPaperList *)&v35 init];
  if (v28)
  {
    v26 = Printd_Parameters::_get_MediaColReady(&params->var0);
    if (v26 && [v26 count])
    {
      [(PKPaperList *)v28 setHasMediaReady:1];
    }

    else
    {
      v7 = Printd_Parameters::_get_MediaColDatabase(&params->var0);

      v26 = v7;
      [(PKPaperList *)v28 setHasMediaReady:0];
    }

    if ([v26 count])
    {
      v29 = objc_opt_new();
      v30 = objc_opt_new();
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v8 = v27;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
      if (v9)
      {
        v10 = *v32;
        do
        {
          v11 = 0;
          do
          {
            if (*v32 != v10)
            {
              objc_enumerationMutation(v8);
            }

            collection = [*(*(&v31 + 1) + 8 * v11) collection];
            v13 = [PKPaperList mediaDictFromAttrs:collection translations:translationsCopy];

            v14 = [PKPaper paperWithAttributes:v13];
            v15 = v14;
            if (v14)
            {
              isRoll = [v14 isRoll];
              v17 = v29;
              if (isRoll)
              {
                v17 = v30;
              }

              v18 = v17;
              [(PKPaperList *)v18 addObject:v15];
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
        }

        while (v9);
      }

      hasMediaReady = [(PKPaperList *)v28 hasMediaReady];
      v20 = &selRef_sizeMediaTypeAndImageableCompare_;
      if (!hasMediaReady)
      {
        v20 = &selRef_sizeAndImageableCompare_;
      }

      v21 = [(PKPaperList *)v29 sortedArrayUsingSelector:*v20];
      [(PKPaperList *)v28 setPapers:v21];

      v22 = [(PKPaperList *)v30 copy];
      [(PKPaperList *)v28 setRolls:v22];

      papers = [(PKPaperList *)v28 papers];
      [(PKPaperList *)v28 categorizePapers:papers];

      v24 = v29;
    }

    else
    {
      v24 = v28;
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (PKPaperList)paperListWithPapers:(id)papers
{
  papersCopy = papers;
  v4 = [[PKPaperList alloc] initWithPapers:papersCopy];

  return v4;
}

- (PKPaperList)initWithPapers:(id)papers
{
  papersCopy = papers;
  v9.receiver = self;
  v9.super_class = PKPaperList;
  v5 = [(PKPaperList *)&v9 init];
  if (v5)
  {
    v6 = [papersCopy sortedArrayUsingSelector:sel_sizeAndImageableCompare_];
    [(PKPaperList *)v5 setPapers:v6];

    papers = [(PKPaperList *)v5 papers];
    [(PKPaperList *)v5 categorizePapers:papers];

    [(PKPaperList *)v5 setHasMediaReady:0];
    [(PKPaperList *)v5 setRolls:MEMORY[0x277CBEBF8]];
  }

  return v5;
}

+ (PKPaperList)paperListWithTXTRecord:(id)record
{
  recordCopy = record;
  v4 = [[PKPaperList alloc] initWithTXTRecord:recordCopy];

  return v4;
}

- (PKPaperList)initWithTXTRecord:(id)record
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = PKPaperList;
  v5 = [(PKPaperList *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(PKPaperList *)v5 conjureMediaFromTXT:recordCopy];
    v8 = [v7 sortedArrayUsingSelector:sel_sizeAndImageableCompare_];
    [(PKPaperList *)v6 setPapers:v8];

    papers = [(PKPaperList *)v6 papers];
    [(PKPaperList *)v6 categorizePapers:papers];

    [(PKPaperList *)v6 setHasMediaReady:0];
    [(PKPaperList *)v6 setRolls:MEMORY[0x277CBEBF8]];
  }

  return v6;
}

- (NSArray)rolls
{
  v3 = self->_rolls;
  if (!v3)
  {
    papers = [(PKPaperList *)self papers];
    v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_9];
    v3 = [papers filteredArrayUsingPredicate:v5];

    [(PKPaperList *)self setRolls:v3];
  }

  return v3;
}

+ (id)mediaDictFromAttrs:(id)attrs translations:(id)translations
{
  attrsCopy = attrs;
  translationsCopy = translations;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v8 = objc_autoreleasePoolPush();
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__PKPaperList_mediaDictFromAttrs_translations___block_invoke;
  v18 = &unk_279A92618;
  v19 = &unk_2871AC6B0;
  v9 = translationsCopy;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  [attrsCopy enumerateAttributes:&v15];

  objc_autoreleasePoolPop(v8);
  if (v9)
  {
    v11 = [v10 objectForKeyedSubscript:@"media-type"];
    if (v11)
    {
      v12 = [v9 objectForKeyedSubscript:v11];
      if (v12 || ([MEMORY[0x277CCACA8] stringWithFormat:@"media-type.%@", v11, v15, v16, v17, v18], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKeyedSubscript:", v13), v12 = objc_claimAutoreleasedReturnValue(), v13, v12))
      {
        [v10 setObject:v12 forKeyedSubscript:@"_vendor_media-type"];
      }
    }
  }

  return v10;
}

void __47__PKPaperList_mediaDictFromAttrs_translations___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [(PK_ipp_attribute_t *)v3 name];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:{-[PK_ipp_attribute_t value_tag](v3, "value_tag")}];
    v9 = [v7 containsObject:v8];

    if (!v9)
    {
LABEL_17:

      goto LABEL_18;
    }

    v10 = [(PK_ipp_attribute_t *)v3 value_tag];
    v11 = 0;
    if (v10 > 53)
    {
      if (v10 != 54 && v10 != 66 && v10 != 68)
      {
        goto LABEL_16;
      }

      v13 = ippGetIXString(v3, 0);
    }

    else
    {
      if (v10 != 33)
      {
        if (v10 != 51)
        {
          if (v10 == 52)
          {
            v12 = ippGetIXCollection(v3, 0);
            v11 = [PKPaperList mediaDictFromAttrs:v12 translations:*(a1 + 40)];

            goto LABEL_14;
          }

LABEL_16:

          goto LABEL_17;
        }

        v16 = 0;
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{ippGetIXRange(v3, 0, &v16)}];
        v15 = [MEMORY[0x277CCABB0] numberWithInt:v16];
        v17[0] = v14;
        v17[1] = v15;
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

LABEL_14:
        if (v11)
        {
          [*(a1 + 48) setObject:v11 forKeyedSubscript:v6];
        }

        goto LABEL_16;
      }

      v13 = [MEMORY[0x277CCABB0] numberWithInt:{ippGetIXInteger(v3, 0)}];
    }

    v11 = v13;
    goto LABEL_14;
  }

LABEL_18:
}

- (id)adjustMargins:(id)margins forDuplex:(id)duplex
{
  v20 = *MEMORY[0x277D85DE8];
  marginsCopy = margins;
  duplexCopy = duplex;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(marginsCopy, "count")}];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = marginsCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v15 + 1) + 8 * i) paperWithMarginsAdjustedForDuplexMode:{duplexCopy, v15}];
        [v7 addObject:v12];
      }

      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = [v7 copy];

  return v13;
}

- (BOOL)isPaperReady:(id)ready
{
  readyCopy = ready;
  if ([(PKPaperList *)self hasMediaReady])
  {
    if ([(PKPaperList *)self hasMatchingLoadedRoll:readyCopy])
    {
      v5 = 1;
    }

    else
    {
      simplexPapers = [(PKPaperList *)self simplexPapers];
      v7 = [(PKPaperList *)self matchPaper:readyCopy inList:simplexPapers];
      v5 = v7 != 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)paperListForDuplexMode:(id)mode
{
  modeCopy = mode;
  v5 = modeCopy;
  if (modeCopy && ![modeCopy isEqualToString:@"one-sided"])
  {
    duplexPapers = [(PKPaperList *)self duplexPapers];
    simplexPapers = [(PKPaperList *)self adjustMargins:duplexPapers forDuplex:v5];
  }

  else
  {
    simplexPapers = [(PKPaperList *)self simplexPapers];
  }

  return simplexPapers;
}

- (id)papersForPhotoWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  photoPapers = [(PKPaperList *)self photoPapers];
  rolls = [(PKPaperList *)self rolls];
  v8 = [rolls count];

  if (v8)
  {
    if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [(PKPaperList *)self availableRollPapersPreferBorderless:1];
    }

    else
    {
      [(PKPaperList *)self rollReadyPaperListForPhotoWithContentSize:width, height];
    }
    v10 = ;
    if ([v10 count])
    {
      photoPapers2 = [(PKPaperList *)self photoPapers];
      v12 = [photoPapers2 arrayByAddingObjectsFromArray:v10];

      photoPapers = v12;
    }
  }

  return photoPapers;
}

- (id)papersForDocumentWithSize:(CGSize)size scaleUpOnRoll:(BOOL)roll andDuplex:(BOOL)duplex
{
  rollCopy = roll;
  height = size.height;
  width = size.width;
  if (duplex)
  {
    [(PKPaperList *)self duplexPapers];
  }

  else
  {
    [(PKPaperList *)self simplexPapers];
  }
  v9 = ;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(PKPaperList *)self availableRollPapersPreferBorderless:0];
  }

  else
  {
    [(PKPaperList *)self rollReadyPaperListForDocumentWithContentSize:rollCopy scaleUp:width, height];
  }
  v11 = ;
  v12 = [v9 arrayByAddingObjectsFromArray:v11];

  return v12;
}

- (id)matchedPaper:(id)paper preferBorderless:(BOOL)borderless withDuplexMode:(id)mode didMatch:(BOOL *)match
{
  borderlessCopy = borderless;
  paperCopy = paper;
  v11 = [mode isEqualToString:@"one-sided"];
  if ([(PKPaperList *)self hasMatchingLoadedRoll:paperCopy])
  {
    v12 = paperCopy;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  if (borderlessCopy)
  {
    photoPapers = [(PKPaperList *)self photoPapers];
    v12 = [(PKPaperList *)self matchPaper:paperCopy inList:photoPapers];
  }

  if (!v12)
  {
    if (v11)
    {
      [(PKPaperList *)self simplexPapers];
    }

    else
    {
      [(PKPaperList *)self duplexPapers];
    }
    v14 = ;
    v12 = [(PKPaperList *)self matchPaper:paperCopy inList:v14];

    if (!v12)
    {
      goto LABEL_14;
    }
  }

LABEL_7:
  if (borderlessCopy)
  {
    v15 = v12;
    [v12 isBorderless];
  }

  else
  {
LABEL_14:
    v15 = v12;
    if (!v12)
    {
      v16 = +[PKPaper genericLetterPaper];
      simplexPapers = [(PKPaperList *)self simplexPapers];
      v15 = [(PKPaperList *)self matchPaper:v16 inList:simplexPapers];

      if (!v15)
      {
        v18 = +[PKPaper genericA4Paper];
        simplexPapers2 = [(PKPaperList *)self simplexPapers];
        v15 = [(PKPaperList *)self matchPaper:v18 inList:simplexPapers2];

        if (!v15)
        {
          v15 = +[PKPaper genericLetterPaper];
        }
      }
    }
  }

  if (match)
  {
    *match = v12 != 0;
  }

  v20 = [(PKPaperList *)self tersePaperFrom:v15 withRequest:paperCopy];

  return v20;
}

- (void)addPaperSet:(id *)set withCount:(int)count toArrays:(id *)arrays
{
  if ((count - 1) <= 2)
  {
    v16 = v7;
    v17 = v6;
    v18 = v5;
    v13 = (&[PKPaperList addPaperSet:withCount:toArrays:]::paperMap + 12 * (count - 1));
    if (count == 2 && ![set[1] isBorderless])
    {
      v13 = &[PKPaperList addPaperSet:withCount:toArrays:]::paperMapAlt;
    }

    [*arrays addObject:{set[*v13], v8, v16, v17, v18, v9}];
    [arrays[1] addObject:set[v13[1]]];
    v14 = arrays[2];
    v15 = set[v13[2]];

    [v14 addObject:v15];
  }
}

- (void)categorizePapers:(id)papers
{
  v50[1] = *MEMORY[0x277D85DE8];
  v48 = 0;
  v49 = 0;
  v50[0] = 0;
  v46 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];

  v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];

  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];

  hasMediaReady = [(PKPaperList *)self hasMediaReady];
  v5 = hasMediaReady;
  v6 = &unk_2871ADC70;
  if (hasMediaReady)
  {
    v6 = &unk_2871ADC58;
  }

  v39 = v6;
  if (hasMediaReady)
  {
    v7 = &__block_literal_global_90;
  }

  else
  {
    v7 = &__block_literal_global_95;
  }

  context = objc_autoreleasePoolPush();
  v8 = v48;
  v48 = 0;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(PKPaperList *)self papers];
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v10)
  {
    v11 = *v41;
    if (v5)
    {
      v12 = &__block_literal_global_90;
    }

    else
    {
      v12 = &__block_literal_global_95;
    }

    v13 = v12[2];
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        if (!v13(v7, v15, v48))
        {
          [(PKPaperList *)self addPaperSet:&v48 withCount:v9 toArrays:&v45];
          v28 = [(PKPaperList *)self tersePaperFrom:v15 withMediaInfo:v39];
          if (v28)
          {
            v29 = [(PKPaperList *)self tersePaperFrom:v15 withMediaInfo:v39];
            v30 = v48;
            v48 = v29;

            v31 = v50[0];
            v50[0] = 0;

            v32 = v50[0];
            v33 = v49;
            v49 = v32;
            v9 = 1;
          }

          else
          {
            v9 = 0;
            v33 = v48;
            v48 = 0;
          }

          goto LABEL_24;
        }

        if (v9 >= 1)
        {
          [v15 imageableAreaRect];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          [*(&v48 + (v9 - 1)) imageableAreaRect];
          v52.origin.x = v24;
          v52.origin.y = v25;
          v52.size.width = v26;
          v52.size.height = v27;
          v51.origin.x = v17;
          v51.origin.y = v19;
          v51.size.width = v21;
          v51.size.height = v23;
          if (!CGRectEqualToRect(v51, v52))
          {
            v28 = [(PKPaperList *)self tersePaperFrom:v15 withMediaInfo:v39];
            if (v28)
            {
              if (v9 > 2)
              {
                objc_storeStrong(v50, v28);
              }

              else
              {
                objc_storeStrong(&v48 + v9, v28);
                v9 = (v9 + 1);
              }
            }

LABEL_24:
          }
        }

        ++v14;
      }

      while (v10 != v14);
      v34 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v10 = v34;
    }

    while (v34);
  }

  [(PKPaperList *)self addPaperSet:&v48 withCount:v9 toArrays:&v45];
  [(PKPaperList *)self setSimplexPapers:v46];
  [(PKPaperList *)self setDuplexPapers:v45];
  [(PKPaperList *)self setPhotoPapers:v47];
  objc_autoreleasePoolPop(context);
  for (i = 16; i != -8; i -= 8)
  {
  }

  for (j = 16; j != -8; j -= 8)
  {
  }
}

- (id)tersePaperFrom:(id)from withRequest:(id)request
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  requestCopy = request;
  if (fromCopy)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:5];
    mediaInfo = [fromCopy mediaInfo];
    mediaInfo2 = [requestCopy mediaInfo];
    v19 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_2871ADC88];
    v9 = [mediaInfo2 objectForKeyedSubscript:@"media-type"];

    if (v9)
    {
      [v19 addObject:@"media-type"];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v19;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [mediaInfo objectForKeyedSubscript:v14];
          if (v15)
          {
            [v7 setObject:v15 forKeyedSubscript:v14];
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v16 = [PKPaper paperWithAttributes:v7];
    if ([fromCopy isRoll])
    {
      v17 = [v16 cutToPWGLength:{objc_msgSend(requestCopy, "height")}];

      v16 = v17;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)tersePaperFrom:(id)from withMediaInfo:(id)info
{
  v23 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  infoCopy = info;
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  mediaInfo = [fromCopy mediaInfo];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = infoCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [mediaInfo objectForKeyedSubscript:{v13, v18}];
        if (v14)
        {
          [v7 setObject:v14 forKeyedSubscript:v13];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if ([v9 containsObject:@"media-type"])
  {
    v15 = [mediaInfo objectForKeyedSubscript:@"_vendor_media-type"];
    [v7 setObject:v15 forKeyedSubscript:@"_vendor_media-type"];
  }

  v16 = [PKPaper paperWithAttributes:v7, v18];

  return v16;
}

- (id)rollReadyPaperListWithContentSize:(CGSize)size forPhoto:(BOOL)photo
{
  if (photo)
  {
    [(PKPaperList *)self rollReadyPaperListForPhotoWithContentSize:size.width, size.height];
  }

  else
  {
    [(PKPaperList *)self rollReadyPaperListForDocumentWithContentSize:size.width scaleUp:size.height];
  }
  v4 = ;

  return v4;
}

- (id)rollReadyPaperListForDocumentWithContentSize:(CGSize)size scaleUp:(BOOL)up
{
  height = size.height;
  width = size.width;
  v26 = *MEMORY[0x277D85DE8];
  if (up)
  {
    v7 = [(PKPaperList *)self rollReadyPaperListForPhotoWithContentSize:size.width, size.height];
    goto LABEL_23;
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  [(PKPaperList *)self availableRollPapersPreferBorderless:0];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v8 = v22 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v9)
  {
    goto LABEL_22;
  }

  v10 = *v22;
  if (width >= height)
  {
    v11 = height;
  }

  else
  {
    v11 = width;
  }

  if (width >= height)
  {
    v12 = width;
  }

  else
  {
    v12 = height;
  }

  v13 = v12;
  v14 = v11;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v22 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v16 = *(*(&v21 + 1) + 8 * i);
      [v16 paperSize];
      v18 = v14;
      if (v17 < v13)
      {
        v18 = v13;
        if (v17 < v14)
        {
          if (width <= 0.0)
          {
            continue;
          }

          v18 = vcvtpd_s64_f64(height * (v17 / width));
        }
      }

      if (v18 >= 1)
      {
        v19 = [v16 cutToLength:v18];
        [v7 addObject:v19];
      }
    }

    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  }

  while (v9);
LABEL_22:

LABEL_23:

  return v7;
}

- (id)rollReadyPaperListForPhotoWithContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v25 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  [(PKPaperList *)self availableRollPapersPreferBorderless:1];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    v10 = width / height;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        width = [v12 width];
        leftMargin = [v12 leftMargin];
        v15 = (width - (leftMargin + [v12 rightMargin]));
        v16 = [v12 cutToPWGLength:{objc_msgSend(v12, "topMargin") + objc_msgSend(v12, "bottomMargin") + vcvtmd_s64_f64(v15 / v10)}];
        [v6 addObject:v16];
        v17 = [v12 cutToPWGLength:{objc_msgSend(v12, "topMargin") + objc_msgSend(v12, "bottomMargin") + vcvtmd_s64_f64(v10 * v15)}];
        height = [v17 height];
        if (height != [v16 height])
        {
          [v6 addObject:v17];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  return v6;
}

- (id)availableRollPapersPreferBorderless:(BOOL)borderless
{
  borderlessCopy = borderless;
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  rolls = [(PKPaperList *)self rolls];
  v7 = [rolls copy];

  if (![v7 count])
  {
    goto LABEL_21;
  }

  v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_104];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v10)
  {

    v11 = 0;
    goto LABEL_20;
  }

  v11 = 0;
  v12 = *v20;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v19 + 1) + 8 * i);
      if (v11)
      {
        width = [*(*(&v19 + 1) + 8 * i) width];
        if (width == [v11 width] && (v16 = objc_msgSend(v14, "height"), v16 == objc_msgSend(v11, "height")))
        {
          if ([v14 isBorderless] != borderlessCopy)
          {
            continue;
          }

          v17 = v14;
        }

        else
        {
          [v5 addObject:v11];
          v17 = v14;
        }

        v11 = v17;
      }

      else
      {
        v11 = v14;
      }
    }

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v10);

  if (v11)
  {
    [v5 addObject:v11];
  }

LABEL_20:

LABEL_21:

  return v5;
}

uint64_t __51__PKPaperList_availableRollPapersPreferBorderless___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  LODWORD(v5) = [v6 width];
  if (v5 > [v7 width])
  {
    goto LABEL_2;
  }

  v9 = [v6 width];
  if (v9 < [v7 width])
  {
    v8 = -1;
    goto LABEL_9;
  }

  v10 = [v6 height];
  if (v10 > [v7 height])
  {
LABEL_2:
    v8 = 1;
  }

  else
  {
    v11 = [v6 height];
    if (v11 >= [v7 height])
    {
      v8 = 0;
    }

    else
    {
      v8 = -1;
    }
  }

LABEL_9:

  return v8;
}

- (id)matchPaper:(id)paper
{
  paperCopy = paper;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __26__PKPaperList_matchPaper___block_invoke;
  v8[3] = &unk_279A92680;
  v9 = paperCopy;
  v5 = paperCopy;
  v6 = [(PKPaperList *)self filterUsingBlock:v8];

  return v6;
}

uint64_t __26__PKPaperList_matchPaper___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) width];
  if (v4 == [v3 width] && (v5 = objc_msgSend(*(a1 + 32), "height"), v5 == objc_msgSend(v3, "height")))
  {
    v6 = [*(a1 + 32) mediaType];
    if ([v6 isEqualToString:&stru_28719ACE8])
    {
      v7 = 1;
    }

    else
    {
      v8 = [*(a1 + 32) mediaType];
      v9 = [v3 mediaType];
      v7 = [v8 isEqualToString:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)matchPaper:(id)paper inList:(id)list
{
  paperCopy = paper;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__PKPaperList_matchPaper_inList___block_invoke;
  v11[3] = &unk_279A92680;
  v7 = paperCopy;
  v12 = v7;
  v8 = [(PKPaperList *)self filterPapers:list usingBlock:v11];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __33__PKPaperList_matchPaper_inList___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) width];
  if (v4 == [v3 width] && (v5 = objc_msgSend(*(a1 + 32), "height"), v5 == objc_msgSend(v3, "height")))
  {
    v6 = [*(a1 + 32) mediaType];
    if ([v6 isEqualToString:&stru_28719ACE8])
    {
      v7 = 1;
    }

    else
    {
      v8 = [*(a1 + 32) mediaType];
      v9 = [v3 mediaType];
      v7 = [v8 isEqualToString:v9];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasMatchingLoadedRoll:(id)roll
{
  rollCopy = roll;
  if ([rollCopy isRoll])
  {
    rolls = [(PKPaperList *)self rolls];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __37__PKPaperList_hasMatchingLoadedRoll___block_invoke;
    v9[3] = &unk_279A926A8;
    v10 = rollCopy;
    v6 = [rolls indexOfObjectPassingTest:v9];

    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL __37__PKPaperList_hasMatchingLoadedRoll___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 width];
  v5 = v4 == [*(a1 + 32) width];

  return v5;
}

- (id)filterUsingBlock:(id)block
{
  blockCopy = block;
  papers = [(PKPaperList *)self papers];
  v6 = [(PKPaperList *)self filterPapers:papers usingBlock:blockCopy];

  return v6;
}

- (id)filterPapers:(id)papers usingBlock:(id)block
{
  papersCopy = papers;
  blockCopy = block;
  v7 = MEMORY[0x277CCAC30];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__PKPaperList_filterPapers_usingBlock___block_invoke;
  v12[3] = &unk_279A926D0;
  v8 = blockCopy;
  v13 = v8;
  v9 = [v7 predicateWithBlock:v12];
  v10 = [papersCopy filteredArrayUsingPredicate:v9];

  return v10;
}

- (unint64_t)jobTypesSupported:(id)supported
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = [supported objectForKeyedSubscript:@"kind"];
  [v10 componentsSeparatedByString:{@", "}];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = 0;
  v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 caseInsensitiveCompare:@"document"])
        {
          if ([v8 caseInsensitiveCompare:@"envelope"])
          {
            if ([v8 caseInsensitiveCompare:@"label"])
            {
              if ([v8 caseInsensitiveCompare:@"photo"])
              {
                if ([v8 caseInsensitiveCompare:@"receipt"])
                {
                  if (![v8 caseInsensitiveCompare:@"roll"])
                  {
                    v4 |= 0x20uLL;
                  }
                }

                else
                {
                  v4 |= 0x10uLL;
                }
              }

              else
              {
                v4 |= 8uLL;
              }
            }

            else
            {
              v4 |= 4uLL;
            }
          }

          else
          {
            v4 |= 2uLL;
          }
        }

        else
        {
          v4 |= 1uLL;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v4;
}

- (id)conjureMediaFromTXT:(id)t
{
  v38[2] = *MEMORY[0x277D85DE8];
  tCopy = t;
  v4 = _PKLogCategory(PKLogCategoryFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25F5FC000, v4, OS_LOG_TYPE_DEFAULT, "Defaulting to generic media size values.", buf, 2u);
  }

  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v31 = +[PKPaper genericA4Paper];
  v30 = +[PKPaper genericLetterPaper];
  v29 = +[PKPaper generic4x6Paper];
  v28 = [PKPaper genericWithName:@"na_index-4x6_4x6in"];
  v27 = +[PKPaper genericA6Paper];
  v26 = [PKPaper genericWithName:@"iso_a6_105x148mm"];
  v25 = +[PKPaper generic3_5x5Paper];
  v24 = [PKPaper genericWithName:@"oe_photo-l_3.5x5in"];
  v23 = [PKPaper genericBorderlessWithName:@"na_5x7_5x7in"];
  v22 = [PKPaper genericWithName:@"na_5x7_5x7in"];
  v21 = [PKPaper genericWithName:@"na_number-10_4.125x9.5in"];
  v20 = [PKPaper genericWithName:@"iso_dl_110x220mm"];
  v5 = [PKPaper genericWithName:@"jpn_chou3_120x235mm"];
  v6 = [PKPaper genericWithName:@"jpn_chou4_90x205mm"];
  v18 = +[PKPaper genericLegalPaper];
  v7 = [tCopy objectForKeyedSubscript:@"product"];
  v8 = [(PKPaperList *)self jobTypesSupported:tCopy];
  v9 = v8;
  if (!v8)
  {
    if (v7)
    {
      if ([v7 rangeOfString:@"Photosmart"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"Officejet") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"Deskjet") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"ENVY") != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35[0] = v31;
        v35[1] = v30;
        v35[2] = v28;
        v35[3] = v29;
        v35[4] = v26;
        v35[5] = v27;
        v35[6] = v24;
        v35[7] = v25;
        v35[8] = v22;
        v35[9] = v23;
        v35[10] = v21;
        v35[11] = v20;
        v35[12] = v5;
        v35[13] = v6;
        v35[14] = v18;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:15];
        [v17 addObjectsFromArray:v15];
        goto LABEL_24;
      }

      if ([v7 rangeOfString:@"EPSON WF"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"EPSON WorkForce") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"EPSON Stylus") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"EPSON Artisan") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v7, "rangeOfString:", @"EPSON XP") != 0x7FFFFFFFFFFFFFFFLL)
      {
        v34[0] = v31;
        v34[1] = v30;
        v34[2] = v28;
        v34[3] = v29;
        v34[4] = v26;
        v34[5] = v27;
        v34[6] = v24;
        v34[7] = v25;
        v34[8] = v22;
        v34[9] = v23;
        v34[10] = v21;
        v34[11] = v18;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:12];
        [v17 addObjectsFromArray:v15];
        goto LABEL_24;
      }
    }

    v33[0] = v30;
    v33[1] = v31;
    v33[2] = v29;
    v33[3] = v27;
    v33[4] = v25;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:5];
    [v17 addObjectsFromArray:v15];
LABEL_24:

    goto LABEL_25;
  }

  if (v8)
  {
    v38[0] = v31;
    v38[1] = v30;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [v17 addObjectsFromArray:v10];
  }

  if ((v9 & 8) != 0)
  {
    v37[0] = v28;
    v37[1] = v29;
    v37[2] = v26;
    v37[3] = v27;
    v37[4] = v24;
    v37[5] = v25;
    v37[6] = v22;
    v37[7] = v23;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:8];
    [v17 addObjectsFromArray:v11];
  }

  if ((v9 & 2) != 0)
  {
    v36[0] = v21;
    v36[1] = v20;
    v36[2] = v5;
    v36[3] = v6;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v17 addObjectsFromArray:v12];
  }

  v13 = [tCopy objectForKeyedSubscript:@"papermax"];
  v14 = [v13 caseInsensitiveCompare:@"legal-A4"] == 0;

  if (!v14)
  {
    [v17 addObject:v18];
  }

LABEL_25:

  return v17;
}

- (PKPaperList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKPaperList;
  v5 = [(PKPaperList *)&v8 init];
  v6 = v5;
  if (v5)
  {
    DecodeVisitor::visitProperties(v5, coderCopy);
  }

  return v6;
}

- (void)visitProperties:(Visitor *)properties
{
  (*(properties->var0 + 2))(properties, a2);
  (*(properties->var0 + 3))(properties, @"hasMediaReady", &self->_hasMediaReady);
  (*(properties->var0 + 23))(properties, @"papers", &self->_papers);
  (*(properties->var0 + 23))(properties, @"simplexPapers", &self->_simplexPapers);
  (*(properties->var0 + 23))(properties, @"duplexPapers", &self->_duplexPapers);
  (*(properties->var0 + 23))(properties, @"photoPapers", &self->_photoPapers);
  (*(properties->var0 + 23))(properties, @"rolls", &self->_rolls);
  v5 = *(properties->var0 + 24);

  v5(properties);
}

- (id)debugDescription
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__3;
  v9 = __Block_byref_object_dispose__3;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__PKPaperList_debugDescription__block_invoke;
  v4[3] = &unk_279A92508;
  v4[4] = self;
  v4[5] = &v5;
  DescVisitor::visitProperties(self, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __31__PKPaperList_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CCACA8];
  v10 = [*(a1 + 32) description];
  v5 = (*(*a2 + 208))(a2);
  v6 = (*(*a2 + 200))(a2);
  v7 = [v4 stringWithFormat:@"%@ Encoded classes: %@, properties %@", v10, v5, v6];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

@end