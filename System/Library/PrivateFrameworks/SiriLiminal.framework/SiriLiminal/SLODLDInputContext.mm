@interface SLODLDInputContext
- (SLODLDInputContext)initWithInputOrigin:(id)origin inputAnchor:(id)anchor prevTokens:(id)tokens prevEmb:(id)emb;
@end

@implementation SLODLDInputContext

- (SLODLDInputContext)initWithInputOrigin:(id)origin inputAnchor:(id)anchor prevTokens:(id)tokens prevEmb:(id)emb
{
  originCopy = origin;
  anchorCopy = anchor;
  tokensCopy = tokens;
  embCopy = emb;
  v22.receiver = self;
  v22.super_class = SLODLDInputContext;
  v15 = [(SLODLDInputContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_inputOrigin, origin);
    objc_storeStrong(&v16->_inputAnchor, anchor);
    v17 = [tokensCopy copy];
    prevTokens = v16->_prevTokens;
    v16->_prevTokens = v17;

    v19 = [embCopy copy];
    prevEmb = v16->_prevEmb;
    v16->_prevEmb = v19;
  }

  return v16;
}

@end