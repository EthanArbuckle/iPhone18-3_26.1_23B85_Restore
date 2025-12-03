@interface TSAPdfTaggerTableNameContext
- (TSAPdfTaggerTableNameContext)initWithStateOfTagger:(id)tagger;
@end

@implementation TSAPdfTaggerTableNameContext

- (TSAPdfTaggerTableNameContext)initWithStateOfTagger:(id)tagger
{
  taggerCopy = tagger;
  v12.receiver = self;
  v12.super_class = TSAPdfTaggerTableNameContext;
  v5 = [(TSAPdfTaggerContext *)&v12 initWithStateOfTagger:taggerCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_topOfContextStackWithExpectedClass_(taggerCopy, v7, v6, v8);
    tableChunkContext = v5->_tableChunkContext;
    v5->_tableChunkContext = v9;
  }

  return v5;
}

@end