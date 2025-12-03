@interface CRLatticePath
- (CRLatticePath)initWithEdgeIndexes:(id)indexes lex:(double)lex cnn:(double)cnn ngram:(double)ngram geom:(double)geom pattern:(double)pattern total:(double)total;
@end

@implementation CRLatticePath

- (CRLatticePath)initWithEdgeIndexes:(id)indexes lex:(double)lex cnn:(double)cnn ngram:(double)ngram geom:(double)geom pattern:(double)pattern total:(double)total
{
  indexesCopy = indexes;
  v21.receiver = self;
  v21.super_class = CRLatticePath;
  v18 = [(CRLatticePath *)&v21 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_edges, indexes);
    v19->_lexiconScore = lex;
    v19->_cnnScore = cnn;
    v19->_ngramScore = ngram;
    v19->_geometryScore = geom;
    v19->_patternScore = pattern;
    v19->_totalScore = total;
  }

  return v19;
}

@end