@interface WBLocalTabAttributes
- (NSDictionary)dictionaryRepresentation;
- (WBLocalTabAttributes)initWithCoder:(id)coder;
- (WBLocalTabAttributes)initWithDictionaryRepresentation:(id)representation;
- (WBLocalTabAttributes)initWithLastVisitTime:(id)time sessionStateData:(id)data ancestorTabUUIDs:(id)ds displayingStandaloneImage:(BOOL)image readerViewTopScrollOffset:(double)offset readingListBookmarkID:(int)d openedFromLink:(BOOL)link showingReader:(BOOL)self0 queuedNavigation:(id)self1 webClipIDString:(id)self2;
- (WBLocalTabAttributes)initWithVersion:(int64_t)version safeToLoadWebPage:(BOOL)page lastVisitTime:(id)time sessionStateData:(id)data ancestorTabUUIDs:(id)ds dateClosed:(id)closed tabIndex:(unint64_t)index windowUUID:(id)self0 disposable:(BOOL)self1 pinned:(BOOL)self2 pinnedPageURL:(id)self3 pinnedPageTitle:(id)self4 muted:(BOOL)self5 queuedNavigation:(id)self6 displayingStandaloneImage:(BOOL)self7 readerViewTopScrollOffset:(double)self8 readingListBookmarkID:(int)self9 openedFromLink:(BOOL)link showingReader:(BOOL)reader webClipIDString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)localAttributesWithLastVisitTime:(id)time;
- (id)localAttributesWithLastVisitTime:(id)time queuedNavigation:(id)navigation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBLocalTabAttributes

- (WBLocalTabAttributes)initWithCoder:(id)coder
{
  v40[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v37 = [coderCopy decodeIntegerForKey:@"version"];
  v36 = [coderCopy decodeBoolForKey:*MEMORY[0x277D4A5A8]];
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A570]];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5B0]];
  v4 = MEMORY[0x277CBEB98];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
  v33 = [v4 setWithArray:v35];
  v30 = [coderCopy decodeObjectOfClasses:v33 forKey:*MEMORY[0x277D4A538]];
  v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A540]];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A550]];
  unsignedIntegerValue = [v31 unsignedIntegerValue];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5C8]];
  v27 = [coderCopy decodeBoolForKey:*MEMORY[0x277D4A558]];
  v26 = [coderCopy decodeBoolForKey:*MEMORY[0x277D4A568]];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A588]];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A580]];
  v24 = [coderCopy decodeBoolForKey:*MEMORY[0x277D4A560]];
  v8 = MEMORY[0x277CBEB98];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v23 = [v8 setWithArray:v25];
  v9 = [coderCopy decodeObjectOfClasses:v23 forKey:*MEMORY[0x277D4A590]];
  v10 = [coderCopy decodeBoolForKey:*MEMORY[0x277D4A548]];
  [coderCopy decodeDoubleForKey:*MEMORY[0x277D4A598]];
  v12 = v11;
  v13 = [coderCopy decodeIntForKey:*MEMORY[0x277D4A5A0]];
  v14 = [coderCopy decodeBoolForKey:*MEMORY[0x277D4A578]];
  LOBYTE(v4) = [coderCopy decodeBoolForKey:*MEMORY[0x277D4A5B8]];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A5C0]];

  BYTE1(v22) = v4;
  LOBYTE(v22) = v14;
  HIDWORD(v21) = v13;
  LOBYTE(v21) = v10;
  LOBYTE(v20) = v24;
  BYTE1(v19) = v26;
  LOBYTE(v19) = v27;
  v16 = [WBLocalTabAttributes initWithVersion:"initWithVersion:safeToLoadWebPage:lastVisitTime:sessionStateData:ancestorTabUUIDs:dateClosed:tabIndex:windowUUID:disposable:pinned:pinnedPageURL:pinnedPageTitle:muted:queuedNavigation:displayingStandaloneImage:readerViewTopScrollOffset:readingListBookmarkID:openedFromLink:showingReader:webClipIDString:" safeToLoadWebPage:v37 lastVisitTime:v36 sessionStateData:v34 ancestorTabUUIDs:v32 dateClosed:v30 tabIndex:v29 windowUUID:v12 disposable:unsignedIntegerValue pinned:v5 pinnedPageURL:v19 pinnedPageTitle:v6 muted:v7 queuedNavigation:v20 displayingStandaloneImage:v9 readerViewTopScrollOffset:v21 readingListBookmarkID:v22 openedFromLink:v15 showingReader:? webClipIDString:?];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  [coderCopy encodeBool:self->_isSafeToLoadWebPage forKey:*MEMORY[0x277D4A5A8]];
  [coderCopy encodeObject:self->_lastVisitTime forKey:*MEMORY[0x277D4A570]];
  [coderCopy encodeObject:self->_sessionStateData forKey:*MEMORY[0x277D4A5B0]];
  [coderCopy encodeObject:self->_ancestorTabUUIDs forKey:*MEMORY[0x277D4A538]];
  [coderCopy encodeObject:self->_dateClosed forKey:*MEMORY[0x277D4A540]];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tabIndex];
  [coderCopy encodeObject:v4 forKey:*MEMORY[0x277D4A550]];

  [coderCopy encodeObject:self->_windowUUID forKey:*MEMORY[0x277D4A5C8]];
  [coderCopy encodeBool:self->_isDisposable forKey:*MEMORY[0x277D4A558]];
  [coderCopy encodeBool:self->_isPinned forKey:*MEMORY[0x277D4A568]];
  [coderCopy encodeObject:self->_pinnedPageURL forKey:*MEMORY[0x277D4A588]];
  [coderCopy encodeObject:self->_pinnedPageTitle forKey:*MEMORY[0x277D4A580]];
  [coderCopy encodeBool:self->_isMuted forKey:*MEMORY[0x277D4A560]];
  [coderCopy encodeObject:self->_queuedNavigation forKey:*MEMORY[0x277D4A590]];
  [coderCopy encodeBool:self->_displayingStandaloneImage forKey:*MEMORY[0x277D4A548]];
  [coderCopy encodeDouble:*MEMORY[0x277D4A598] forKey:self->_readerViewTopScrollOffset];
  [coderCopy encodeInt:self->_readingListBookmarkID forKey:*MEMORY[0x277D4A5A0]];
  [coderCopy encodeBool:self->_openedFromLink forKey:*MEMORY[0x277D4A578]];
  [coderCopy encodeBool:self->_showingReader forKey:*MEMORY[0x277D4A5B8]];
  [coderCopy encodeBool:self->_webClipIDString != 0 forKey:*MEMORY[0x277D4A5C0]];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (WBLocalTabAttributes)initWithLastVisitTime:(id)time sessionStateData:(id)data ancestorTabUUIDs:(id)ds displayingStandaloneImage:(BOOL)image readerViewTopScrollOffset:(double)offset readingListBookmarkID:(int)d openedFromLink:(BOOL)link showingReader:(BOOL)self0 queuedNavigation:(id)self1 webClipIDString:(id)self2
{
  BYTE1(v16) = reader;
  LOBYTE(v16) = link;
  HIDWORD(v15) = d;
  LOBYTE(v15) = image;
  LOBYTE(v14) = 0;
  LOWORD(v13) = 0;
  return [WBLocalTabAttributes initWithVersion:"initWithVersion:safeToLoadWebPage:lastVisitTime:sessionStateData:ancestorTabUUIDs:dateClosed:tabIndex:windowUUID:disposable:pinned:pinnedPageURL:pinnedPageTitle:muted:queuedNavigation:displayingStandaloneImage:readerViewTopScrollOffset:readingListBookmarkID:openedFromLink:showingReader:webClipIDString:" safeToLoadWebPage:1 lastVisitTime:0 sessionStateData:time ancestorTabUUIDs:data dateClosed:ds tabIndex:0 windowUUID:offset disposable:0 pinned:0 pinnedPageURL:v13 pinnedPageTitle:0 muted:0 queuedNavigation:v14 displayingStandaloneImage:navigation readerViewTopScrollOffset:v15 readingListBookmarkID:v16 openedFromLink:string showingReader:? webClipIDString:?];
}

- (WBLocalTabAttributes)initWithVersion:(int64_t)version safeToLoadWebPage:(BOOL)page lastVisitTime:(id)time sessionStateData:(id)data ancestorTabUUIDs:(id)ds dateClosed:(id)closed tabIndex:(unint64_t)index windowUUID:(id)self0 disposable:(BOOL)self1 pinned:(BOOL)self2 pinnedPageURL:(id)self3 pinnedPageTitle:(id)self4 muted:(BOOL)self5 queuedNavigation:(id)self6 displayingStandaloneImage:(BOOL)self7 readerViewTopScrollOffset:(double)self8 readingListBookmarkID:(int)self9 openedFromLink:(BOOL)link showingReader:(BOOL)reader webClipIDString:(id)string
{
  timeCopy = time;
  dataCopy = data;
  dsCopy = ds;
  closedCopy = closed;
  dCopy = d;
  lCopy = l;
  titleCopy = title;
  navigationCopy = navigation;
  stringCopy = string;
  v53.receiver = self;
  v53.super_class = WBLocalTabAttributes;
  v33 = [(WBLocalTabAttributes *)&v53 init];
  v34 = v33;
  if (v33)
  {
    v33->_isSafeToLoadWebPage = page;
    objc_storeStrong(&v33->_lastVisitTime, time);
    v35 = [dataCopy copy];
    sessionStateData = v34->_sessionStateData;
    v34->_sessionStateData = v35;

    v37 = [dsCopy copy];
    ancestorTabUUIDs = v34->_ancestorTabUUIDs;
    v34->_ancestorTabUUIDs = v37;

    objc_storeStrong(&v34->_dateClosed, closed);
    v34->_tabIndex = index;
    v39 = [dCopy copy];
    windowUUID = v34->_windowUUID;
    v34->_windowUUID = v39;

    v34->_isDisposable = disposable;
    v34->_isPinned = pinned;
    objc_storeStrong(&v34->_pinnedPageURL, l);
    v41 = [titleCopy copy];
    pinnedPageTitle = v34->_pinnedPageTitle;
    v34->_pinnedPageTitle = v41;

    v34->_isMuted = muted;
    v43 = [navigationCopy copy];
    queuedNavigation = v34->_queuedNavigation;
    v34->_queuedNavigation = v43;

    v34->_displayingStandaloneImage = image;
    v34->_readerViewTopScrollOffset = offset;
    v34->_readingListBookmarkID = iD;
    v34->_openedFromLink = link;
    v34->_showingReader = reader;
    if (!version)
    {
      v34->_isSafeToLoadWebPage = 1;
    }

    objc_storeStrong(&v34->_webClipIDString, string);
    v45 = v34;
  }

  return v34;
}

- (WBLocalTabAttributes)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v33 = [representationCopy safari_arrayContainingObjectsOfClass:objc_opt_class() forKey:*MEMORY[0x277D4A538]];
  v32 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A5C8]];
  v4 = MEMORY[0x277CBEBC0];
  v5 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A588]];
  v26 = [v4 URLWithString:v5];

  v34 = [representationCopy safari_numberForKey:@"version"];
  integerValue = [v34 integerValue];
  v31 = [representationCopy safari_BOOLForKey:*MEMORY[0x277D4A5A8]];
  v29 = [representationCopy safari_dateForKey:*MEMORY[0x277D4A570]];
  v28 = [representationCopy safari_dataForKey:*MEMORY[0x277D4A5B0]];
  v27 = [representationCopy safari_dateForKey:*MEMORY[0x277D4A540]];
  v30 = [representationCopy safari_numberForKey:*MEMORY[0x277D4A550]];
  unsignedIntegerValue = [v30 unsignedIntegerValue];
  v23 = [representationCopy safari_BOOLForKey:*MEMORY[0x277D4A558]];
  v22 = [representationCopy safari_BOOLForKey:*MEMORY[0x277D4A568]];
  v6 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A580]];
  v20 = [representationCopy safari_BOOLForKey:*MEMORY[0x277D4A560]];
  v7 = [representationCopy safari_dictionaryForKey:*MEMORY[0x277D4A590]];
  v8 = [representationCopy safari_BOOLForKey:*MEMORY[0x277D4A548]];
  v21 = [representationCopy safari_numberForKey:*MEMORY[0x277D4A598]];
  [v21 doubleValue];
  v10 = v9;
  v11 = [representationCopy safari_numberForKey:*MEMORY[0x277D4A5A0]];
  intValue = [v11 intValue];
  LOBYTE(v4) = [representationCopy safari_BOOLForKey:*MEMORY[0x277D4A578]];
  v13 = [representationCopy safari_BOOLForKey:*MEMORY[0x277D4A5B8]];
  v14 = [representationCopy safari_stringForKey:*MEMORY[0x277D4A5C0]];

  BYTE1(v19) = v13;
  LOBYTE(v19) = v4;
  HIDWORD(v18) = intValue;
  LOBYTE(v18) = v8;
  LOBYTE(v17) = v20;
  BYTE1(v16) = v22;
  LOBYTE(v16) = v23;
  v36 = [WBLocalTabAttributes initWithVersion:"initWithVersion:safeToLoadWebPage:lastVisitTime:sessionStateData:ancestorTabUUIDs:dateClosed:tabIndex:windowUUID:disposable:pinned:pinnedPageURL:pinnedPageTitle:muted:queuedNavigation:displayingStandaloneImage:readerViewTopScrollOffset:readingListBookmarkID:openedFromLink:showingReader:webClipIDString:" safeToLoadWebPage:integerValue lastVisitTime:v31 sessionStateData:v29 ancestorTabUUIDs:v28 dateClosed:v33 tabIndex:v27 windowUUID:v10 disposable:unsignedIntegerValue pinned:v32 pinnedPageURL:v16 pinnedPageTitle:v26 muted:v6 queuedNavigation:v17 displayingStandaloneImage:v7 readerViewTopScrollOffset:v18 readingListBookmarkID:v19 openedFromLink:v14 showingReader:? webClipIDString:?];

  return v36;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_288269688 forKeyedSubscript:@"version"];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_isSafeToLoadWebPage];
  [dictionary setObject:v4 forKeyedSubscript:*MEMORY[0x277D4A5A8]];

  lastVisitTime = self->_lastVisitTime;
  if (lastVisitTime)
  {
    [dictionary setObject:lastVisitTime forKeyedSubscript:*MEMORY[0x277D4A570]];
  }

  if ([(NSData *)self->_sessionStateData length])
  {
    [dictionary setObject:self->_sessionStateData forKeyedSubscript:*MEMORY[0x277D4A5B0]];
  }

  [dictionary setObject:self->_ancestorTabUUIDs forKeyedSubscript:*MEMORY[0x277D4A538]];
  [dictionary setObject:self->_dateClosed forKeyedSubscript:*MEMORY[0x277D4A540]];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tabIndex];
  [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x277D4A550]];

  windowUUID = self->_windowUUID;
  if (windowUUID)
  {
    [dictionary setObject:windowUUID forKeyedSubscript:*MEMORY[0x277D4A5C8]];
  }

  v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_isDisposable];
  [dictionary setObject:v8 forKeyedSubscript:*MEMORY[0x277D4A558]];

  if (self->_isPinned)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x277D4A568]];
  }

  pinnedPageURL = self->_pinnedPageURL;
  if (pinnedPageURL)
  {
    safari_originalDataAsString = [(NSURL *)pinnedPageURL safari_originalDataAsString];
    [dictionary setObject:safari_originalDataAsString forKeyedSubscript:*MEMORY[0x277D4A588]];
  }

  pinnedPageTitle = self->_pinnedPageTitle;
  if (pinnedPageTitle)
  {
    [dictionary setObject:pinnedPageTitle forKeyedSubscript:*MEMORY[0x277D4A580]];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isMuted];
  [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277D4A560]];

  queuedNavigation = self->_queuedNavigation;
  if (queuedNavigation)
  {
    [dictionary setObject:queuedNavigation forKeyedSubscript:*MEMORY[0x277D4A590]];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_displayingStandaloneImage];
  [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277D4A548]];

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_readerViewTopScrollOffset];
  [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x277D4A598]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_readingListBookmarkID];
  [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277D4A5A0]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:self->_openedFromLink];
  [dictionary setObject:v18 forKeyedSubscript:*MEMORY[0x277D4A578]];

  v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_showingReader];
  [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277D4A5B8]];

  webClipIDString = self->_webClipIDString;
  if (webClipIDString)
  {
    [dictionary setObject:webClipIDString forKeyedSubscript:*MEMORY[0x277D4A5C0]];
  }

  return dictionary;
}

- (id)localAttributesWithLastVisitTime:(id)time
{
  timeCopy = time;
  v5 = [(WBLocalTabAttributes *)self copy];
  v6 = v5[4];
  v5[4] = timeCopy;

  return v5;
}

- (id)localAttributesWithLastVisitTime:(id)time queuedNavigation:(id)navigation
{
  timeCopy = time;
  navigationCopy = navigation;
  v8 = [(WBLocalTabAttributes *)self copy];
  v9 = v8[4];
  v8[4] = timeCopy;
  v10 = timeCopy;

  v11 = [navigationCopy copy];
  v12 = v8[10];
  v8[10] = v11;

  return v8;
}

@end