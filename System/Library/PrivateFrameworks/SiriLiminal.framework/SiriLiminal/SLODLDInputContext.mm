@interface SLODLDInputContext
- (SLODLDInputContext)initWithInputOrigin:(id)a3 inputAnchor:(id)a4 prevTokens:(id)a5 prevEmb:(id)a6;
@end

@implementation SLODLDInputContext

- (SLODLDInputContext)initWithInputOrigin:(id)a3 inputAnchor:(id)a4 prevTokens:(id)a5 prevEmb:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = SLODLDInputContext;
  v15 = [(SLODLDInputContext *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_inputOrigin, a3);
    objc_storeStrong(&v16->_inputAnchor, a4);
    v17 = [v13 copy];
    prevTokens = v16->_prevTokens;
    v16->_prevTokens = v17;

    v19 = [v14 copy];
    prevEmb = v16->_prevEmb;
    v16->_prevEmb = v19;
  }

  return v16;
}

@end