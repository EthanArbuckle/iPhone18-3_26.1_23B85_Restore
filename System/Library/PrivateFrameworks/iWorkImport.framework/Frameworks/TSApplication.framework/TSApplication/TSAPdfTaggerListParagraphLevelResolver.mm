@interface TSAPdfTaggerListParagraphLevelResolver
- (int)levelOfCurrentParagraph:(id *)paragraph;
@end

@implementation TSAPdfTaggerListParagraphLevelResolver

- (int)levelOfCurrentParagraph:(id *)paragraph
{
  v5 = objc_msgSend_tagger(self, a2, paragraph, v3);
  v9 = objc_msgSend_topmostColumnContext(v5, v6, v7, v8);

  v13 = objc_msgSend_paragraphEnumerator(v9, v10, v11, v12);
  v14 = TSWPParagraphEnumerator::paragraphStyle(v13, 0);
  if ((objc_msgSend_isHeadingStyle_headingIndex_(TSAPdfTagger, v15, v14, 0) & 1) != 0 || !TSWPParagraphEnumerator::paragraphHasListLabel(v13))
  {
    v16 = -1;
  }

  else
  {
    v16 = TSWPParagraphEnumerator::paragraphLevel(v13);
    *paragraph = TSWPParagraphEnumerator::paragraphListStyle(v13);
  }

  return v16;
}

@end