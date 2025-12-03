@interface TSWPHyperlinkSelection
+ (id)selectionWithHyperlinkField:(id)field rep:(id)rep;
- (TSWPHyperlinkSelection)initWithHyperlinkField:(id)field rep:(id)rep;
@end

@implementation TSWPHyperlinkSelection

+ (id)selectionWithHyperlinkField:(id)field rep:(id)rep
{
  repCopy = rep;
  fieldCopy = field;
  v7 = [TSWPHyperlinkSelection alloc];
  v9 = objc_msgSend_initWithHyperlinkField_rep_(v7, v8, fieldCopy, repCopy);

  return v9;
}

- (TSWPHyperlinkSelection)initWithHyperlinkField:(id)field rep:(id)rep
{
  fieldCopy = field;
  repCopy = rep;
  v12.receiver = self;
  v12.super_class = TSWPHyperlinkSelection;
  v9 = [(TSWPHyperlinkSelection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_hyperlinkField, field);
    objc_storeStrong(&v10->_hyperlinkRep, rep);
  }

  return v10;
}

@end