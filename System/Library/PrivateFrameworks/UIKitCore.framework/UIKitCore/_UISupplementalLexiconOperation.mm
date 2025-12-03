@interface _UISupplementalLexiconOperation
- (_UISupplementalLexicon)lexicon;
- (id)initAddOperationWithLexicon:(id)lexicon;
- (id)initRemoveOperationWithLexiconIdentifier:(unint64_t)identifier;
@end

@implementation _UISupplementalLexiconOperation

- (id)initAddOperationWithLexicon:(id)lexicon
{
  lexiconCopy = lexicon;
  v8.receiver = self;
  v8.super_class = _UISupplementalLexiconOperation;
  v5 = [(_UISupplementalLexiconOperation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 0;
    objc_storeWeak(&v5->_lexicon, lexiconCopy);
    v6->_lexiconIdentifier = [lexiconCopy[1] identifier];
  }

  return v6;
}

- (id)initRemoveOperationWithLexiconIdentifier:(unint64_t)identifier
{
  v5.receiver = self;
  v5.super_class = _UISupplementalLexiconOperation;
  result = [(_UISupplementalLexiconOperation *)&v5 init];
  if (result)
  {
    *(result + 1) = 1;
    *(result + 3) = identifier;
  }

  return result;
}

- (_UISupplementalLexicon)lexicon
{
  WeakRetained = objc_loadWeakRetained(&self->_lexicon);

  return WeakRetained;
}

@end