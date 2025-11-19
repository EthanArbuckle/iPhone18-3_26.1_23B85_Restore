@interface CRLatticePath
- (CRLatticePath)initWithEdgeIndexes:(id)a3 lex:(double)a4 cnn:(double)a5 ngram:(double)a6 geom:(double)a7 pattern:(double)a8 total:(double)a9;
@end

@implementation CRLatticePath

- (CRLatticePath)initWithEdgeIndexes:(id)a3 lex:(double)a4 cnn:(double)a5 ngram:(double)a6 geom:(double)a7 pattern:(double)a8 total:(double)a9
{
  v17 = a3;
  v21.receiver = self;
  v21.super_class = CRLatticePath;
  v18 = [(CRLatticePath *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_edges, a3);
    v19->_lexiconScore = a4;
    v19->_cnnScore = a5;
    v19->_ngramScore = a6;
    v19->_geometryScore = a7;
    v19->_patternScore = a8;
    v19->_totalScore = a9;
  }

  return v19;
}

@end