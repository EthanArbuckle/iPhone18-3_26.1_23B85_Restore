@interface TSAPdfTaggerTableChunkContext
- (TSAPdfTaggerTableChunkContext)initWithStateOfTagger:(id)a3 tableChunk:(id)a4;
@end

@implementation TSAPdfTaggerTableChunkContext

- (TSAPdfTaggerTableChunkContext)initWithStateOfTagger:(id)a3 tableChunk:(id)a4
{
  v7 = a4;
  v18.receiver = self;
  v18.super_class = TSAPdfTaggerTableChunkContext;
  v8 = [(TSAPdfTaggerContext *)&v18 initWithStateOfTagger:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_tableChunkRep, a4);
    v9->_multispace = 0;
    v13 = objc_msgSend_tableLayout(v7, v10, v11, v12);
    v14 = TSTLayoutGetRepeatHeaderColumnsSpace();

    if (v14 || (TSTLayoutGetRepeatHeaderRowsSpace(), v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (TSTLayoutGetRepeatHeaderCornerSpace(), v16 = objc_claimAutoreleasedReturnValue(), v16, v16))
    {
      v9->_multispace = 1;
    }

    v9->_firstSpace = 1;
  }

  return v9;
}

@end