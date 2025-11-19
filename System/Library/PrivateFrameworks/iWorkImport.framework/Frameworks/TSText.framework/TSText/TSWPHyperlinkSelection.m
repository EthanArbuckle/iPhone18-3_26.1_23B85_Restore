@interface TSWPHyperlinkSelection
+ (id)selectionWithHyperlinkField:(id)a3 rep:(id)a4;
- (TSWPHyperlinkSelection)initWithHyperlinkField:(id)a3 rep:(id)a4;
@end

@implementation TSWPHyperlinkSelection

+ (id)selectionWithHyperlinkField:(id)a3 rep:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [TSWPHyperlinkSelection alloc];
  v9 = objc_msgSend_initWithHyperlinkField_rep_(v7, v8, v6, v5);

  return v9;
}

- (TSWPHyperlinkSelection)initWithHyperlinkField:(id)a3 rep:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSWPHyperlinkSelection;
  v9 = [(TSWPHyperlinkSelection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hyperlinkField, a3);
    objc_storeStrong(&v10->_hyperlinkRep, a4);
  }

  return v10;
}

@end