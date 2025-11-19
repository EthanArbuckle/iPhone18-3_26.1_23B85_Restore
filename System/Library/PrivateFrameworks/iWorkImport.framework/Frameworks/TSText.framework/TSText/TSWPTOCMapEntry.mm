@interface TSWPTOCMapEntry
- (TSWPTOCMapEntry)initWithTOCEntryStyle:(id)a3 showInTOC:(BOOL)a4;
- (id)copyWithContext:(id)a3;
@end

@implementation TSWPTOCMapEntry

- (TSWPTOCMapEntry)initWithTOCEntryStyle:(id)a3 showInTOC:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TSWPTOCMapEntry;
  v8 = [(TSWPTOCMapEntry *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tocEntryStyle, a3);
    v9->_showInTOC = a4;
  }

  return v9;
}

- (id)copyWithContext:(id)a3
{
  v4 = [TSWPTOCMapEntry alloc];
  v7 = objc_msgSend_showInTOC(self, v5, v6);
  v9 = objc_msgSend_initWithTOCEntryStyle_showInTOC_(v4, v8, 0, v7);
  v12 = objc_msgSend_tocEntryStyle(self, v10, v11);
  v13 = v9[2];
  v9[2] = v12;

  return v9;
}

@end