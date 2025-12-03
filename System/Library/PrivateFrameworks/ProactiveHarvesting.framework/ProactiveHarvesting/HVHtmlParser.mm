@interface HVHtmlParser
- (HVHtmlParser)initWithData:(id)data encoding:(unint64_t)encoding;
- (HVHtmlParser)initWithString:(id)string;
- (HVHtmlParser)initWithUTF8DataEnumerator:(id)enumerator;
- (NSString)textContent;
- (uint64_t)_currentOutputLength;
- (uint64_t)_tagEnd;
- (void)_enterRegion:(uint64_t)region;
- (void)_newBlock;
- (void)_respawnParserContext;
- (void)dealloc;
@end

@implementation HVHtmlParser

- (NSString)textContent
{
  pthread_mutex_lock(&self->_plainTextContentLock);
  v3 = self->_plainTextContent;
  if (!v3)
  {
    v3 = [(NSArray *)self->_plainTextLines _pas_proxyComponentsJoinedByString:@"\n"];
    objc_storeStrong(&self->_plainTextContent, v3);
  }

  pthread_mutex_unlock(&self->_plainTextContentLock);

  return v3;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_plainTextContentLock);
  v3.receiver = self;
  v3.super_class = HVHtmlParser;
  [(HVHtmlParser *)&v3 dealloc];
}

- (HVHtmlParser)initWithUTF8DataEnumerator:(id)enumerator
{
  enumeratorCopy = enumerator;
  v60.receiver = self;
  v60.super_class = HVHtmlParser;
  v5 = [(HVHtmlParser *)&v60 init];
  v6 = v5;
  if (v5)
  {
    v5->_depth = 0;
    v7 = objc_opt_new();
    depthsWithActiveRegions = v6->_depthsWithActiveRegions;
    v6->_depthsWithActiveRegions = v7;

    v9 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    activeRegions = v6->_activeRegions;
    v6->_activeRegions = v9;

    v11 = objc_opt_new();
    activeRegionStartPositionStack = v6->_activeRegionStartPositionStack;
    v6->_activeRegionStartPositionStack = v11;

    v13 = objc_opt_new();
    activeRegionIndexSetStack = v6->_activeRegionIndexSetStack;
    v6->_activeRegionIndexSetStack = v13;

    v6->_preBlockDepth = 0;
    v15 = objc_opt_new();
    quotedRegions = v6->_quotedRegions;
    v6->_quotedRegions = v15;

    v17 = objc_opt_new();
    tabularRegions = v6->_tabularRegions;
    v6->_tabularRegions = v17;

    v19 = objc_opt_new();
    sigHtmlBlockRegions = v6->_sigHtmlBlockRegions;
    v6->_sigHtmlBlockRegions = v19;

    v21 = objc_opt_new();
    mutablePlainTextLines = v6->_mutablePlainTextLines;
    v6->_mutablePlainTextLines = v21;

    v6->_currentLineIsCollapsed = 1;
    v23 = objc_opt_new();
    currentLineData = v6->_currentLineData;
    v6->_currentLineData = v23;

    v6->_renderingSuspended = 0;
    v6->_quoteToEndFromPosition = 0x7FFFFFFFFFFFFFFFLL;
    v6->_parserContext = 0;
    v25 = objc_opt_new();
    appleAnchorHrefs = v6->_appleAnchorHrefs;
    v6->_appleAnchorHrefs = v25;

    v27 = objc_opt_new();
    hyperlinkDepths = v6->_hyperlinkDepths;
    v6->_hyperlinkDepths = v27;

    v29 = objc_opt_new();
    partialHyperlinks = v6->_partialHyperlinks;
    v6->_partialHyperlinks = v29;

    v31 = objc_opt_new();
    hyperlinkURLs = v6->_hyperlinkURLs;
    v6->_hyperlinkURLs = v31;

    Mutable = CFArrayCreateMutable(0, 0, 0);
    hyperlinkRanges = v6->_hyperlinkRanges;
    v6->_hyperlinkRanges = Mutable;

    [(HVHtmlParser *)v6 _respawnParserContext];
    v35 = enumeratorCopy;
    v36 = 0;
    v37 = 0;
    v73 = 0;
    v74 = &v73;
    v75 = 0x2020000000;
    LODWORD(v76) = 0;
    v69 = 0;
    v70 = &v69;
    v71 = 0x2020000000;
    v72 = 0;
    while (1)
    {
      v38 = objc_autoreleasePoolPush();
      nextObject = [v35 nextObject];
      objc_autoreleasePoolPop(v38);

      if (!nextObject)
      {
        break;
      }

      v61 = MEMORY[0x277D85DD0];
      v62 = 3221225472;
      v63 = __43__HVHtmlParser__consumeHtmlDataEnumerator___block_invoke;
      v64 = &unk_278969BF8;
      v65 = v6;
      v66 = &v73;
      v67 = &v69;
      v68 = v36;
      [nextObject enumerateByteRangesUsingBlock:&v61];
      v36 += [nextObject length];
      v37 = nextObject;
    }

    if (v70[3] < v36)
    {
      v6->_chunkStart = "";
      v6->_chunkLength = 0;
      htmlParseChunk(v6->_parserContext, "", 0, 1);
    }

    _Block_object_dispose(&v69, 8);
    _Block_object_dispose(&v73, 8);

    while (v6->_depth)
    {
      [(HVHtmlParser *)v6 _tagEnd];
    }

    v6->_renderingSuspended = 0;
    [(HVHtmlParser *)v6 _newBlock];
    quoteToEndFromPosition = v6->_quoteToEndFromPosition;
    if (quoteToEndFromPosition != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableIndexSet *)v6->_quotedRegions addIndexesInRange:quoteToEndFromPosition, v6->_plainTextLinesTotalLength - quoteToEndFromPosition];
    }

    [(NSMutableIndexSet *)v6->_quotedRegions removeIndex:v6->_plainTextLinesTotalLength - 1];
    [(NSMutableIndexSet *)v6->_tabularRegions removeIndex:v6->_plainTextLinesTotalLength - 1];
    [(NSMutableIndexSet *)v6->_sigHtmlBlockRegions removeIndex:v6->_plainTextLinesTotalLength - 1];
    MEMORY[0x238381BB0](v6->_parserContext);
    v6->_parserContext = 0;
    v41 = [(NSMutableArray *)v6->_mutablePlainTextLines copy];
    plainTextLines = v6->_plainTextLines;
    v6->_plainTextLines = v41;

    v43 = v6->_mutablePlainTextLines;
    v6->_mutablePlainTextLines = 0;

    v44 = v6->_activeRegions;
    v6->_activeRegions = 0;

    v45 = v6->_activeRegionStartPositionStack;
    v6->_activeRegionStartPositionStack = 0;

    v46 = v6->_activeRegionIndexSetStack;
    v6->_activeRegionIndexSetStack = 0;

    v47 = v6->_currentLineData;
    v6->_currentLineData = 0;

    v48 = v6->_hyperlinkDepths;
    v6->_hyperlinkDepths = 0;

    v49 = v6->_partialHyperlinks;
    v6->_partialHyperlinks = 0;

    v50 = [(NSMutableArray *)v6->_hyperlinkURLs copy];
    v51 = [(NSMutableArray *)v6->_hyperlinkRanges copy];
    v52 = v6->_hyperlinkURLs;
    v6->_hyperlinkURLs = 0;

    v53 = v6->_hyperlinkRanges;
    v6->_hyperlinkRanges = 0;

    v54 = MEMORY[0x277CBEA60];
    v61 = MEMORY[0x277D85DD0];
    v62 = 3221225472;
    v63 = __30__HVHtmlParser__endProcessing__block_invoke;
    v64 = &unk_278969BA8;
    v65 = v50;
    v66 = v51;
    v73 = MEMORY[0x277D85DD0];
    v74 = 3221225472;
    v75 = __30__HVHtmlParser__endProcessing__block_invoke_2;
    v76 = &unk_278969BD0;
    v77 = v65;
    v55 = v65;
    v56 = v51;
    v57 = [v54 _pas_proxyArrayUsingObjectAtIndexBlock:&v61 andCountBlock:&v73];
    hyperlinks = v6->_hyperlinks;
    v6->_hyperlinks = v57;

    pthread_mutex_init(&v6->_plainTextContentLock, 0);
  }

  return v6;
}

- (uint64_t)_tagEnd
{
  v29 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    if ([*(result + 240) containsIndex:*(result + 184)])
    {
      lastObject = [*(v1 + 248) lastObject];
      _currentOutputLength = [(HVHtmlParser *)v1 _currentOutputLength];
      v30.location = [lastObject range];
      v31.location = _currentOutputLength;
      v31.length = 0;
      v4 = NSUnionRange(v30, v31);
      v5 = [HVHtmlParserHyperlink alloc];
      v6 = [lastObject url];
      v7 = [(HVHtmlParserHyperlink *)v5 initWithURL:v6 range:v4.location, v4.length];
      range = [(HVHtmlParserHyperlink *)v7 range];
      if (HIDWORD(range))
      {
        v10 = 0;
      }

      else
      {
        v10 = HIDWORD(v9) == 0;
      }

      if (v10)
      {
        CFArrayAppendValue(*(v1 + 264), (range | (v9 << 32)));
        v11 = *(v1 + 256);
        v12 = [(HVHtmlParserHyperlink *)v7 url];
        [v11 addObject:v12];
      }

      [*(v1 + 248) removeLastObject];
      [*(v1 + 240) removeIndex:*(v1 + 184)];
    }

    result = [*(v1 + 192) containsIndex:*(v1 + 184)];
    if (result)
    {
      lastObject2 = [*(v1 + 208) lastObject];
      unsignedIntegerValue = [lastObject2 unsignedIntegerValue];

      v15 = *(v1 + 112);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      lastObject3 = [*(v1 + 216) lastObject];
      v17 = [lastObject3 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = v15 - unsignedIntegerValue;
        v20 = *v25;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v25 != v20)
            {
              objc_enumerationMutation(lastObject3);
            }

            v22 = *(*(&v24 + 1) + 8 * i);
            [v22 addIndexesInRange:{unsignedIntegerValue, v19}];
            [*(v1 + 200) removeObject:v22];
          }

          v18 = [lastObject3 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v18);
      }

      [*(v1 + 192) removeIndex:*(v1 + 184)];
      [*(v1 + 208) removeLastObject];
      result = [*(v1 + 216) removeLastObject];
    }

    --*(v1 + 184);
  }

  v23 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_newBlock
{
  if (self)
  {
    if ([*(self + 128) length])
    {
      v2 = objc_autoreleasePoolPush();
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:*(self + 128) encoding:4];
      if (v3)
      {
        if ((*(self + 145) & 1) == 0)
        {
          v6 = v3;
          v4 = _PASCollapseWhitespaceAndStrip();

          v3 = v4;
        }

        v7 = v3;
        if ([(__CFString *)v3 length])
        {
          *(self + 120) = 0;
        }
      }

      else
      {
        v7 = &stru_28474C1D0;
      }

      objc_autoreleasePoolPop(v2);
    }

    else
    {
      v7 = &stru_28474C1D0;
    }

    if ((*(self + 120) & 1) == 0)
    {
      [*(self + 24) addObject:v7];
      v5 = *(self + 112) + [(__CFString *)v7 length];
      *(self + 120) = 1;
      *(self + 112) = v5 + 1;
    }

    [*(self + 128) setLength:0];
  }
}

HVHtmlParserHyperlink *__30__HVHtmlParser__endProcessing__block_invoke(uint64_t a1, CFIndex a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 40), a2);
  v6 = [[HVHtmlParserHyperlink alloc] initWithURL:v4 range:ValueAtIndex, HIDWORD(ValueAtIndex)];

  return v6;
}

- (uint64_t)_currentOutputLength
{
  v2 = *(self + 112);
  if ([*(self + 128) length])
  {
    v3 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:*(self + 128) encoding:4 nullTerminated:0];
    if (v3)
    {
      v4 = v3;
      if (![v3 length] || (*(self + 145) & 1) != 0)
      {
        v6 = v4;
      }

      else
      {
        v5 = [v4 characterAtIndex:{objc_msgSend(v4, "length") - 1}];
        v6 = _PASCollapseWhitespaceAndStrip();

        v2 += [v6 length];
        if ([v6 length] && objc_msgSend(v6, "characterAtIndex:", objc_msgSend(v6, "length") - 1) != v5)
        {
          ++v2;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v2;
}

unint64_t __43__HVHtmlParser__consumeHtmlDataEnumerator___block_invoke(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    v9 = a4 - 1;
    while (1)
    {
      v10 = *(*(v6[5] + 8) + 24);
      v11 = *(a2 + v8);
      if (v10 > 3)
      {
        if (v10 > 5)
        {
          if (v10 == 6)
          {
            result = (v11 & 0x80000000) != 0 ? __maskrune(*(a2 + v8), 0x4000uLL) : *(MEMORY[0x277D85DE0] + 4 * v11 + 60) & 0x4000u;
            v10 = v11 == 62 ? 7 : 0;
            if (result)
            {
              v10 = 6;
            }
          }
        }

        else
        {
          v15 = (v11 & 0xFFFFFFDF) == 0x4D ? 5 : 0;
          v16 = (v11 & 0xFFFFFFDF) == 0x4C ? 6 : 0;
          v10 = v10 == 4 ? v15 : v16;
        }
      }

      else
      {
        if ((v11 & 0xFFFFFFDF) == 0x48)
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        v13 = 4 * ((v11 & 0xFFFFFFDF) == 84);
        if (v10 == 2)
        {
          v13 = v12;
        }

        v14 = v11 == 60;
        if (v10)
        {
          v14 = 2 * (v11 == 47);
        }

        v10 = v10 <= 1 ? v14 : v13;
      }

      *(*(v6[5] + 8) + 24) = v10;
      v17 = *(v6[5] + 8);
      v18 = *(v17 + 24);
      if (v18 == 7)
      {
        break;
      }

      if (v8 == v9 || (v8 - v7) > 0x7CF)
      {
        goto LABEL_35;
      }

      ++v8;
LABEL_42:
      if (v8 == a4)
      {
        return result;
      }
    }

    *(v17 + 24) = 0;
LABEL_35:
    *(v6[4] + 176) = v6[7] + v7;
    *(v6[4] + 8) = a2 + v7;
    *(v6[4] + 16) = ++v8 - v7;
    v19 = v6[4];
    v20 = *(v19 + 16);
    if (v20 >> 31)
    {
      __assert_rtn("[HVHtmlParser _consumeHtmlDataEnumerator:]_block_invoke", "HVHtmlParser.m", 348, "_chunkLength <= INT_MAX");
    }

    result = htmlParseChunk(*(v19 + 136), *(v19 + 8), v20, v18 == 7);
    if (v18 == 7)
    {
      result = [(HVHtmlParser *)v6[4] _respawnParserContext];
      *(*(v6[6] + 8) + 24) = v8;
    }

    v7 = v8;
    goto LABEL_42;
  }

  return result;
}

- (void)_respawnParserContext
{
  if (user_data)
  {
    v1 = user_data;
    if (user_data[17])
    {
      MEMORY[0x238381BB0]();
    }

    PushParserCtxt = htmlCreatePushParserCtxt(&unforwardSAXHandlerStruct, v1, 0, 0, 0, XML_CHAR_ENCODING_UTF8);
    v1[17] = PushParserCtxt;

    return htmlCtxtUseOptions(PushParserCtxt, 2164993);
  }

  return user_data;
}

- (void)_enterRegion:(uint64_t)region
{
  v8 = a2;
  if (([*(region + 200) containsObject:?] & 1) == 0)
  {
    if (([*(region + 192) containsIndex:*(region + 184)] & 1) == 0)
    {
      [*(region + 192) addIndex:*(region + 184)];
      v3 = *(region + 208);
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(region + 112)];
      [v3 addObject:v4];

      v5 = *(region + 216);
      v6 = objc_opt_new();
      [v5 addObject:v6];
    }

    [*(region + 200) addObject:v8];
    lastObject = [*(region + 216) lastObject];
    [lastObject addObject:v8];
  }
}

- (HVHtmlParser)initWithData:(id)data encoding:(unint64_t)encoding
{
  v14[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (encoding == 4 || encoding == 1)
  {
    v7 = objc_autoreleasePoolPush();
    v14[0] = dataCopy;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    objectEnumerator = [v8 objectEnumerator];

    objc_autoreleasePoolPop(v7);
    v10 = [(HVHtmlParser *)self initWithUTF8DataEnumerator:objectEnumerator];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:dataCopy encoding:encoding nullTerminated:0];
    v10 = [(HVHtmlParser *)self initWithString:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HVHtmlParser)initWithString:(id)string
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (!string)
  {
    objectEnumerator = 0;
    goto LABEL_16;
  }

  v5 = [string length];
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    objectEnumerator = [MEMORY[0x277CBEBF8] objectEnumerator];
    goto LABEL_15;
  }

  CStringPtr = CFStringGetCStringPtr(string, 0x600u);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __70__NSString_HVNSString__hv_dataEnumeratorUsingEncoding_nullTerminated___block_invoke_2;
    v29 = &unk_278969AE0;
    stringCopy = string;
    v11 = [v10 initWithBytesNoCopy:v8 length:v5 deallocator:&v26];
    v35[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    objectEnumerator = [v12 objectEnumerator];

    objc_autoreleasePoolPop(v9);
LABEL_15:
    objc_autoreleasePoolPop(v6);
    goto LABEL_16;
  }

  if ([string fastestEncoding] == 4)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [string dataUsingEncoding:4];
    objc_autoreleasePoolPop(v14);
    v16 = [v15 length];
    if (v16)
    {
      v17 = v16;
      v18 = nullByteData();
      v19 = [v15 rangeOfData:v18 options:0 range:{v17 - 1, 1}];

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = v17;
      }

      else
      {
        v20 = v17 - 1;
      }

      v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __70__NSString_HVNSString__hv_dataEnumeratorUsingEncoding_nullTerminated___block_invoke_3;
      v29 = &unk_278969B08;
      v32 = 0;
      v33 = v20;
      v34 = v17;
      v22 = v21;
      stringCopy = v22;
      v31 = v15;
      [v31 enumerateByteRangesUsingBlock:&v26];
      objectEnumerator = [v22 objectEnumerator];
    }

    else
    {
      objectEnumerator = [MEMORY[0x277CBEBF8] objectEnumerator];
    }

    goto LABEL_15;
  }

  objc_autoreleasePoolPop(v6);
  objectEnumerator = [[_HVNSStringEncodingEnumerator alloc] initWithString:string encoding:4 nullTerminated:0];
LABEL_16:
  v23 = [(HVHtmlParser *)self initWithUTF8DataEnumerator:objectEnumerator];

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end