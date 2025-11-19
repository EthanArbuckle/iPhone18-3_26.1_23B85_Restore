@interface WBLocalTabAttributes
- (NSDictionary)dictionaryRepresentation;
- (WBLocalTabAttributes)initWithCoder:(id)a3;
- (WBLocalTabAttributes)initWithDictionaryRepresentation:(id)a3;
- (WBLocalTabAttributes)initWithLastVisitTime:(id)a3 sessionStateData:(id)a4 ancestorTabUUIDs:(id)a5 displayingStandaloneImage:(BOOL)a6 readerViewTopScrollOffset:(double)a7 readingListBookmarkID:(int)a8 openedFromLink:(BOOL)a9 showingReader:(BOOL)a10 queuedNavigation:(id)a11 webClipIDString:(id)a12;
- (WBLocalTabAttributes)initWithVersion:(int64_t)a3 safeToLoadWebPage:(BOOL)a4 lastVisitTime:(id)a5 sessionStateData:(id)a6 ancestorTabUUIDs:(id)a7 dateClosed:(id)a8 tabIndex:(unint64_t)a9 windowUUID:(id)a10 disposable:(BOOL)a11 pinned:(BOOL)a12 pinnedPageURL:(id)a13 pinnedPageTitle:(id)a14 muted:(BOOL)a15 queuedNavigation:(id)a16 displayingStandaloneImage:(BOOL)a17 readerViewTopScrollOffset:(double)a18 readingListBookmarkID:(int)a19 openedFromLink:(BOOL)a20 showingReader:(BOOL)a21 webClipIDString:(id)a22;
- (id)copyWithZone:(_NSZone *)a3;
- (id)localAttributesWithLastVisitTime:(id)a3;
- (id)localAttributesWithLastVisitTime:(id)a3 queuedNavigation:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBLocalTabAttributes

- (WBLocalTabAttributes)initWithCoder:(id)a3
{
  v40[2] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v37 = [v3 decodeIntegerForKey:@"version"];
  v36 = [v3 decodeBoolForKey:*MEMORY[0x277D4A5A8]];
  v34 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A570]];
  v32 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5B0]];
  v4 = MEMORY[0x277CBEB98];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v33 = [v4 setWithArray:v35];
  v30 = [v3 decodeObjectOfClasses:v33 forKey:*MEMORY[0x277D4A538]];
  v29 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A540]];
  v31 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A550]];
  v28 = [v31 unsignedIntegerValue];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5C8]];
  v27 = [v3 decodeBoolForKey:*MEMORY[0x277D4A558]];
  v26 = [v3 decodeBoolForKey:*MEMORY[0x277D4A568]];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A588]];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A580]];
  v24 = [v3 decodeBoolForKey:*MEMORY[0x277D4A560]];
  v8 = MEMORY[0x277CBEB98];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v23 = [v8 setWithArray:v25];
  v9 = [v3 decodeObjectOfClasses:v23 forKey:*MEMORY[0x277D4A590]];
  v10 = [v3 decodeBoolForKey:*MEMORY[0x277D4A548]];
  [v3 decodeDoubleForKey:*MEMORY[0x277D4A598]];
  v12 = v11;
  v13 = [v3 decodeIntForKey:*MEMORY[0x277D4A5A0]];
  v14 = [v3 decodeBoolForKey:*MEMORY[0x277D4A578]];
  LOBYTE(v4) = [v3 decodeBoolForKey:*MEMORY[0x277D4A5B8]];
  v15 = [v3 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5C0]];

  BYTE1(v22) = v4;
  LOBYTE(v22) = v14;
  HIDWORD(v21) = v13;
  LOBYTE(v21) = v10;
  LOBYTE(v20) = v24;
  BYTE1(v19) = v26;
  LOBYTE(v19) = v27;
  v16 = [WBLocalTabAttributes initWithVersion:"initWithVersion:safeToLoadWebPage:lastVisitTime:sessionStateData:ancestorTabUUIDs:dateClosed:tabIndex:windowUUID:disposable:pinned:pinnedPageURL:pinnedPageTitle:muted:queuedNavigation:displayingStandaloneImage:readerViewTopScrollOffset:readingListBookmarkID:openedFromLink:showingReader:webClipIDString:" safeToLoadWebPage:v37 lastVisitTime:v36 sessionStateData:v34 ancestorTabUUIDs:v32 dateClosed:v30 tabIndex:v29 windowUUID:v12 disposable:v28 pinned:v5 pinnedPageURL:v19 pinnedPageTitle:v6 muted:v7 queuedNavigation:v20 displayingStandaloneImage:v9 readerViewTopScrollOffset:v21 readingListBookmarkID:v22 openedFromLink:v15 showingReader:? webClipIDString:?];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeInteger:1 forKey:@"version"];
  [v5 encodeBool:self->_isSafeToLoadWebPage forKey:*MEMORY[0x277D4A5A8]];
  [v5 encodeObject:self->_lastVisitTime forKey:*MEMORY[0x277D4A570]];
  [v5 encodeObject:self->_sessionStateData forKey:*MEMORY[0x277D4A5B0]];
  [v5 encodeObject:self->_ancestorTabUUIDs forKey:*MEMORY[0x277D4A538]];
  [v5 encodeObject:self->_dateClosed forKey:*MEMORY[0x277D4A540]];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tabIndex];
  [v5 encodeObject:v4 forKey:*MEMORY[0x277D4A550]];

  [v5 encodeObject:self->_windowUUID forKey:*MEMORY[0x277D4A5C8]];
  [v5 encodeBool:self->_isDisposable forKey:*MEMORY[0x277D4A558]];
  [v5 encodeBool:self->_isPinned forKey:*MEMORY[0x277D4A568]];
  [v5 encodeObject:self->_pinnedPageURL forKey:*MEMORY[0x277D4A588]];
  [v5 encodeObject:self->_pinnedPageTitle forKey:*MEMORY[0x277D4A580]];
  [v5 encodeBool:self->_isMuted forKey:*MEMORY[0x277D4A560]];
  [v5 encodeObject:self->_queuedNavigation forKey:*MEMORY[0x277D4A590]];
  [v5 encodeBool:self->_displayingStandaloneImage forKey:*MEMORY[0x277D4A548]];
  [v5 encodeDouble:*MEMORY[0x277D4A598] forKey:self->_readerViewTopScrollOffset];
  [v5 encodeInt:self->_readingListBookmarkID forKey:*MEMORY[0x277D4A5A0]];
  [v5 encodeBool:self->_openedFromLink forKey:*MEMORY[0x277D4A578]];
  [v5 encodeBool:self->_showingReader forKey:*MEMORY[0x277D4A5B8]];
  [v5 encodeBool:self->_webClipIDString != 0 forKey:*MEMORY[0x277D4A5C0]];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v4 + 11) = self->_isSafeToLoadWebPage;
  objc_storeStrong((v4 + 32), self->_lastVisitTime);
  objc_storeStrong((v4 + 40), self->_sessionStateData);
  objc_storeStrong((v4 + 48), self->_ancestorTabUUIDs);
  objc_storeStrong((v4 + 56), self->_dateClosed);
  *(v4 + 96) = self->_tabIndex;
  objc_storeStrong((v4 + 104), self->_windowUUID);
  *(v4 + 12) = self->_isDisposable;
  *(v4 + 13) = self->_isPinned;
  objc_storeStrong((v4 + 64), self->_pinnedPageURL);
  objc_storeStrong((v4 + 72), self->_pinnedPageTitle);
  *(v4 + 14) = self->_isMuted;
  objc_storeStrong((v4 + 80), self->_queuedNavigation);
  *(v4 + 8) = self->_displayingStandaloneImage;
  *(v4 + 24) = self->_readerViewTopScrollOffset;
  *(v4 + 16) = self->_readingListBookmarkID;
  *(v4 + 9) = self->_openedFromLink;
  *(v4 + 10) = self->_showingReader;
  objc_storeStrong((v4 + 88), self->_webClipIDString);
  return v4;
}

- (WBLocalTabAttributes)initWithLastVisitTime:(id)a3 sessionStateData:(id)a4 ancestorTabUUIDs:(id)a5 displayingStandaloneImage:(BOOL)a6 readerViewTopScrollOffset:(double)a7 readingListBookmarkID:(int)a8 openedFromLink:(BOOL)a9 showingReader:(BOOL)a10 queuedNavigation:(id)a11 webClipIDString:(id)a12
{
  BYTE1(v16) = a10;
  LOBYTE(v16) = a9;
  HIDWORD(v15) = a8;
  LOBYTE(v15) = a6;
  LOBYTE(v14) = 0;
  LOWORD(v13) = 0;
  return [WBLocalTabAttributes initWithVersion:"initWithVersion:safeToLoadWebPage:lastVisitTime:sessionStateData:ancestorTabUUIDs:dateClosed:tabIndex:windowUUID:disposable:pinned:pinnedPageURL:pinnedPageTitle:muted:queuedNavigation:displayingStandaloneImage:readerViewTopScrollOffset:readingListBookmarkID:openedFromLink:showingReader:webClipIDString:" safeToLoadWebPage:1 lastVisitTime:0 sessionStateData:a3 ancestorTabUUIDs:a4 dateClosed:a5 tabIndex:0 windowUUID:a7 disposable:0 pinned:0 pinnedPageURL:v13 pinnedPageTitle:0 muted:0 queuedNavigation:v14 displayingStandaloneImage:a11 readerViewTopScrollOffset:v15 readingListBookmarkID:v16 openedFromLink:a12 showingReader:? webClipIDString:?];
}

- (WBLocalTabAttributes)initWithVersion:(int64_t)a3 safeToLoadWebPage:(BOOL)a4 lastVisitTime:(id)a5 sessionStateData:(id)a6 ancestorTabUUIDs:(id)a7 dateClosed:(id)a8 tabIndex:(unint64_t)a9 windowUUID:(id)a10 disposable:(BOOL)a11 pinned:(BOOL)a12 pinnedPageURL:(id)a13 pinnedPageTitle:(id)a14 muted:(BOOL)a15 queuedNavigation:(id)a16 displayingStandaloneImage:(BOOL)a17 readerViewTopScrollOffset:(double)a18 readingListBookmarkID:(int)a19 openedFromLink:(BOOL)a20 showingReader:(BOOL)a21 webClipIDString:(id)a22
{
  v52 = a5;
  v27 = a6;
  v28 = a7;
  v51 = a8;
  v29 = a10;
  v50 = a13;
  v30 = a14;
  v31 = a16;
  v32 = a22;
  v53.receiver = self;
  v53.super_class = WBLocalTabAttributes;
  v33 = [(WBLocalTabAttributes *)&v53 init];
  v34 = v33;
  if (v33)
  {
    v33->_isSafeToLoadWebPage = a4;
    objc_storeStrong(&v33->_lastVisitTime, a5);
    v35 = [v27 copy];
    sessionStateData = v34->_sessionStateData;
    v34->_sessionStateData = v35;

    v37 = [v28 copy];
    ancestorTabUUIDs = v34->_ancestorTabUUIDs;
    v34->_ancestorTabUUIDs = v37;

    objc_storeStrong(&v34->_dateClosed, a8);
    v34->_tabIndex = a9;
    v39 = [v29 copy];
    windowUUID = v34->_windowUUID;
    v34->_windowUUID = v39;

    v34->_isDisposable = a11;
    v34->_isPinned = a12;
    objc_storeStrong(&v34->_pinnedPageURL, a13);
    v41 = [v30 copy];
    pinnedPageTitle = v34->_pinnedPageTitle;
    v34->_pinnedPageTitle = v41;

    v34->_isMuted = a15;
    v43 = [v31 copy];
    queuedNavigation = v34->_queuedNavigation;
    v34->_queuedNavigation = v43;

    v34->_displayingStandaloneImage = a17;
    v34->_readerViewTopScrollOffset = a18;
    v34->_readingListBookmarkID = a19;
    v34->_openedFromLink = a20;
    v34->_showingReader = a21;
    if (!a3)
    {
      v34->_isSafeToLoadWebPage = 1;
    }

    objc_storeStrong(&v34->_webClipIDString, a22);
    v45 = v34;
  }

  return v34;
}

- (WBLocalTabAttributes)initWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v33 = [v3 safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A538]];
  v32 = [v3 safari_stringForKey:*MEMORY[0x277D4A5C8]];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [v3 safari_stringForKey:*MEMORY[0x277D4A588]];
  v26 = [v4 URLWithString:v5];

  v34 = [v3 safari_numberForKey:@"version"];
  v24 = [v34 integerValue];
  v31 = [v3 safari_BOOLForKey:*MEMORY[0x277D4A5A8]];
  v29 = [v3 safari_dateForKey:*MEMORY[0x277D4A570]];
  v28 = [v3 safari_dataForKey:*MEMORY[0x277D4A5B0]];
  v27 = [v3 safari_dateForKey:*MEMORY[0x277D4A540]];
  v30 = [v3 safari_numberForKey:*MEMORY[0x277D4A550]];
  v25 = [v30 unsignedIntegerValue];
  v23 = [v3 safari_BOOLForKey:*MEMORY[0x277D4A558]];
  v22 = [v3 safari_BOOLForKey:*MEMORY[0x277D4A568]];
  v6 = [v3 safari_stringForKey:*MEMORY[0x277D4A580]];
  v20 = [v3 safari_BOOLForKey:*MEMORY[0x277D4A560]];
  v7 = [v3 safari_dictionaryForKey:*MEMORY[0x277D4A590]];
  v8 = [v3 safari_BOOLForKey:*MEMORY[0x277D4A548]];
  v21 = [v3 safari_numberForKey:*MEMORY[0x277D4A598]];
  [v21 doubleValue];
  v10 = v9;
  v11 = [v3 safari_numberForKey:*MEMORY[0x277D4A5A0]];
  v12 = [v11 intValue];
  LOBYTE(v4) = [v3 safari_BOOLForKey:*MEMORY[0x277D4A578]];
  v13 = [v3 safari_BOOLForKey:*MEMORY[0x277D4A5B8]];
  v14 = [v3 safari_stringForKey:*MEMORY[0x277D4A5C0]];

  BYTE1(v19) = v13;
  LOBYTE(v19) = v4;
  HIDWORD(v18) = v12;
  LOBYTE(v18) = v8;
  LOBYTE(v17) = v20;
  BYTE1(v16) = v22;
  LOBYTE(v16) = v23;
  v36 = [WBLocalTabAttributes initWithVersion:"initWithVersion:safeToLoadWebPage:lastVisitTime:sessionStateData:ancestorTabUUIDs:dateClosed:tabIndex:windowUUID:disposable:pinned:pinnedPageURL:pinnedPageTitle:muted:queuedNavigation:displayingStandaloneImage:readerViewTopScrollOffset:readingListBookmarkID:openedFromLink:showingReader:webClipIDString:" safeToLoadWebPage:v24 lastVisitTime:v31 sessionStateData:v29 ancestorTabUUIDs:v28 dateClosed:v33 tabIndex:v27 windowUUID:v10 disposable:v25 pinned:v32 pinnedPageURL:v16 pinnedPageTitle:v26 muted:v6 queuedNavigation:v17 displayingStandaloneImage:v7 readerViewTopScrollOffset:v18 readingListBookmarkID:v19 openedFromLink:v14 showingReader:? webClipIDString:?];

  return v36;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:&unk_288269688 forKeyedSubscript:@"version"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSafeToLoadWebPage];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277D4A5A8]];

  lastVisitTime = self->_lastVisitTime;
  if (lastVisitTime)
  {
    [v3 setObject:lastVisitTime forKeyedSubscript:*MEMORY[0x277D4A570]];
  }

  if ([(NSData *)self->_sessionStateData length])
  {
    [v3 setObject:self->_sessionStateData forKeyedSubscript:*MEMORY[0x277D4A5B0]];
  }

  [v3 setObject:self->_ancestorTabUUIDs forKeyedSubscript:*MEMORY[0x277D4A538]];
  [v3 setObject:self->_dateClosed forKeyedSubscript:*MEMORY[0x277D4A540]];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tabIndex];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277D4A550]];

  windowUUID = self->_windowUUID;
  if (windowUUID)
  {
    [v3 setObject:windowUUID forKeyedSubscript:*MEMORY[0x277D4A5C8]];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDisposable];
  [v3 setObject:v8 forKeyedSubscript:*MEMORY[0x277D4A558]];

  if (self->_isPinned)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v9 forKeyedSubscript:*MEMORY[0x277D4A568]];
  }

  pinnedPageURL = self->_pinnedPageURL;
  if (pinnedPageURL)
  {
    v11 = [(NSURL *)pinnedPageURL safari_originalDataAsString];
    [v3 setObject:v11 forKeyedSubscript:*MEMORY[0x277D4A588]];
  }

  pinnedPageTitle = self->_pinnedPageTitle;
  if (pinnedPageTitle)
  {
    [v3 setObject:pinnedPageTitle forKeyedSubscript:*MEMORY[0x277D4A580]];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMuted];
  [v3 setObject:v13 forKeyedSubscript:*MEMORY[0x277D4A560]];

  queuedNavigation = self->_queuedNavigation;
  if (queuedNavigation)
  {
    [v3 setObject:queuedNavigation forKeyedSubscript:*MEMORY[0x277D4A590]];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_displayingStandaloneImage];
  [v3 setObject:v15 forKeyedSubscript:*MEMORY[0x277D4A548]];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_readerViewTopScrollOffset];
  [v3 setObject:v16 forKeyedSubscript:*MEMORY[0x277D4A598]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_readingListBookmarkID];
  [v3 setObject:v17 forKeyedSubscript:*MEMORY[0x277D4A5A0]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_openedFromLink];
  [v3 setObject:v18 forKeyedSubscript:*MEMORY[0x277D4A578]];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_showingReader];
  [v3 setObject:v19 forKeyedSubscript:*MEMORY[0x277D4A5B8]];

  webClipIDString = self->_webClipIDString;
  if (webClipIDString)
  {
    [v3 setObject:webClipIDString forKeyedSubscript:*MEMORY[0x277D4A5C0]];
  }

  return v3;
}

- (id)localAttributesWithLastVisitTime:(id)a3
{
  v4 = a3;
  v5 = [(WBLocalTabAttributes *)self copy];
  v6 = v5[4];
  v5[4] = v4;

  return v5;
}

- (id)localAttributesWithLastVisitTime:(id)a3 queuedNavigation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WBLocalTabAttributes *)self copy];
  v9 = v8[4];
  v8[4] = v6;
  v10 = v6;

  v11 = [v7 copy];
  v12 = v8[10];
  v8[10] = v11;

  return v8;
}

@end