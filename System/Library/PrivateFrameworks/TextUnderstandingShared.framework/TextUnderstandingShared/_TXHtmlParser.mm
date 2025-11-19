@interface _TXHtmlParser
- (NSString)textContent;
- (_TXHtmlParser)initWithData:(id)a3 encoding:(unint64_t)a4;
- (_TXHtmlParser)initWithString:(id)a3;
- (_TXHtmlParser)initWithUTF8DataEnumerator:(id)a3;
- (void)dealloc;
@end

@implementation _TXHtmlParser

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
  v3.super_class = _TXHtmlParser;
  [(_TXHtmlParser *)&v3 dealloc];
}

- (_TXHtmlParser)initWithUTF8DataEnumerator:(id)a3
{
  v4 = a3;
  v60.receiver = self;
  v60.super_class = _TXHtmlParser;
  v5 = [(_TXHtmlParser *)&v60 init];
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

    sub_26EF98ECC(v6);
    v35 = v4;
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
      v39 = [v35 nextObject];
      objc_autoreleasePoolPop(v38);

      if (!v39)
      {
        break;
      }

      v61 = MEMORY[0x277D85DD0];
      v62 = 3221225472;
      v63 = sub_26EF98CC4;
      v64 = &unk_279DBB7E0;
      v65 = v6;
      v66 = &v73;
      v67 = &v69;
      v68 = v36;
      [v39 enumerateByteRangesUsingBlock:&v61];
      v36 += [v39 length];
      v37 = v39;
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
      sub_26EF987CC(v6);
    }

    v6->_renderingSuspended = 0;
    sub_26EF98A34(v6);
    quoteToEndFromPosition = v6->_quoteToEndFromPosition;
    if (quoteToEndFromPosition != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableIndexSet *)v6->_quotedRegions addIndexesInRange:quoteToEndFromPosition, v6->_plainTextLinesTotalLength - quoteToEndFromPosition];
    }

    [(NSMutableIndexSet *)v6->_quotedRegions removeIndex:v6->_plainTextLinesTotalLength - 1];
    [(NSMutableIndexSet *)v6->_tabularRegions removeIndex:v6->_plainTextLinesTotalLength - 1];
    [(NSMutableIndexSet *)v6->_sigHtmlBlockRegions removeIndex:v6->_plainTextLinesTotalLength - 1];
    MEMORY[0x274385270](v6->_parserContext);
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
    v63 = sub_26EF98B4C;
    v64 = &unk_279DBB790;
    v65 = v50;
    v66 = v51;
    v73 = MEMORY[0x277D85DD0];
    v74 = 3221225472;
    v75 = sub_26EF98BD8;
    v76 = &unk_279DBB7B8;
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

- (_TXHtmlParser)initWithData:(id)a3 encoding:(unint64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (a4 == 4 || a4 == 1)
  {
    v7 = objc_autoreleasePoolPush();
    v14[0] = v6;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v9 = [v8 objectEnumerator];

    objc_autoreleasePoolPop(v7);
    v10 = [(_TXHtmlParser *)self initWithUTF8DataEnumerator:v9];
  }

  else
  {
    v11 = [MEMORY[0x277CCACA8] _pas_stringWithDataNoCopy:v6 encoding:a4 nullTerminated:0];
    v10 = [(_TXHtmlParser *)self initWithString:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (_TXHtmlParser)initWithString:(id)a3
{
  v35[1] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v13 = 0;
    goto LABEL_16;
  }

  v5 = [a3 length];
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v13 = [MEMORY[0x277CBEBF8] objectEnumerator];
    goto LABEL_15;
  }

  CStringPtr = CFStringGetCStringPtr(a3, 0x600u);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    v9 = objc_autoreleasePoolPush();
    v10 = objc_alloc(MEMORY[0x277CBEA90]);
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = sub_26EF9A7E4;
    v29 = &unk_279DBB808;
    v30 = a3;
    v11 = [v10 initWithBytesNoCopy:v8 length:v5 deallocator:&v26];
    v35[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:1];
    v13 = [v12 objectEnumerator];

    objc_autoreleasePoolPop(v9);
LABEL_15:
    objc_autoreleasePoolPop(v6);
    goto LABEL_16;
  }

  if ([a3 fastestEncoding] == 4)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [a3 dataUsingEncoding:4];
    objc_autoreleasePoolPop(v14);
    v16 = [v15 length];
    if (v16)
    {
      v17 = v16;
      v18 = sub_26EF9A658();
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
      v28 = sub_26EF9A808;
      v29 = &unk_279DBB830;
      v32 = 0;
      v33 = v20;
      v34 = v17;
      v22 = v21;
      v30 = v22;
      v31 = v15;
      [v31 enumerateByteRangesUsingBlock:&v26];
      v13 = [v22 objectEnumerator];
    }

    else
    {
      v13 = [MEMORY[0x277CBEBF8] objectEnumerator];
    }

    goto LABEL_15;
  }

  objc_autoreleasePoolPop(v6);
  v13 = [[__TXNSStringEncodingEnumerator alloc] initWithString:a3 encoding:4 nullTerminated:0];
LABEL_16:
  v23 = [(_TXHtmlParser *)self initWithUTF8DataEnumerator:v13];

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

@end