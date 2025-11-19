@interface TSAPdfTaggerTableNameContext
- (TSAPdfTaggerTableNameContext)initWithStateOfTagger:(id)a3;
@end

@implementation TSAPdfTaggerTableNameContext

- (TSAPdfTaggerTableNameContext)initWithStateOfTagger:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSAPdfTaggerTableNameContext;
  v5 = [(TSAPdfTaggerContext *)&v12 initWithStateOfTagger:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v9 = objc_msgSend_topOfContextStackWithExpectedClass_(v4, v7, v6, v8);
    tableChunkContext = v5->_tableChunkContext;
    v5->_tableChunkContext = v9;
  }

  return v5;
}

@end