@interface TSAPdfTaggerContext
- (TSAPdfTaggerContext)initWithStateOfTagger:(id)a3;
@end

@implementation TSAPdfTaggerContext

- (TSAPdfTaggerContext)initWithStateOfTagger:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TSAPdfTaggerContext;
  v8 = [(TSAPdfTaggerContext *)&v12 init];
  if (v8)
  {
    v9 = objc_msgSend_state(v4, v5, v6, v7);
    taggerState = v8->_taggerState;
    v8->_taggerState = v9;
  }

  return v8;
}

@end