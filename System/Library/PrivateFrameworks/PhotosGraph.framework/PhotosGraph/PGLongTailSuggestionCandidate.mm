@interface PGLongTailSuggestionCandidate
- (BOOL)isValidBeforeKeyItemFilterWithMeNodeLocalIdentifier:(id)identifier;
- (BOOL)isValidWithMeNodeLocalIdentifier:(id)identifier;
- (PGLongTailSuggestionCandidate)initWithAsset:(id)asset score:(unint64_t)score;
@end

@implementation PGLongTailSuggestionCandidate

- (BOOL)isValidBeforeKeyItemFilterWithMeNodeLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ((-[PHAsset clsIsNonMemorable](self->_asset, "clsIsNonMemorable") & 1) != 0 || ![MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:self->_asset] || (-[PHAsset clsIsTragicFailure](self->_asset, "clsIsTragicFailure") & 1) != 0 || (-[PHAsset clsIsUtility](self->_asset, "clsIsUtility") & 1) != 0 || (-[PHAsset aspectRatio](self->_asset, "aspectRatio"), v5 >= 3.0))
  {
    v7 = 0;
  }

  else
  {
    [(PHAsset *)self->_asset aspectRatio];
    v7 = v6 > 0.333333343;
  }

  clsPeopleCount = [(PHAsset *)self->_asset clsPeopleCount];
  if (clsPeopleCount)
  {
    v9 = !v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v15 = clsPeopleCount == 0 && v7;
    if (!identifierCopy)
    {
LABEL_18:
      LOBYTE(v11) = v15;
      goto LABEL_19;
    }
  }

  else
  {
    clsConsolidatedPersonLocalIdentifiers = [(PHAsset *)self->_asset clsConsolidatedPersonLocalIdentifiers];
    v15 = [clsConsolidatedPersonLocalIdentifiers count] != 0;

    if (!identifierCopy)
    {
      goto LABEL_18;
    }
  }

  clsPeopleCount2 = [(PHAsset *)self->_asset clsPeopleCount];
  LOBYTE(v11) = (clsPeopleCount2 != 1) & v15;
  if (clsPeopleCount2 == 1 && ((v15 ^ 1) & 1) == 0)
  {
    clsPersonLocalIdentifiers = [(PHAsset *)self->_asset clsPersonLocalIdentifiers];
    firstObject = [clsPersonLocalIdentifiers firstObject];
    v11 = [firstObject isEqualToString:identifierCopy] ^ 1;
  }

LABEL_19:

  return v11;
}

- (BOOL)isValidWithMeNodeLocalIdentifier:(id)identifier
{
  v4 = [(PGLongTailSuggestionCandidate *)self isValidBeforeKeyItemFilterWithMeNodeLocalIdentifier:identifier];
  if (v4)
  {
    LOBYTE(v4) = [(PHAsset *)self->_asset clsAvoidIfPossibleAsKeyItemForMemories:0 allowGuestAsset:0]^ 1;
  }

  return v4;
}

- (PGLongTailSuggestionCandidate)initWithAsset:(id)asset score:(unint64_t)score
{
  assetCopy = asset;
  v11.receiver = self;
  v11.super_class = PGLongTailSuggestionCandidate;
  v8 = [(PGLongTailSuggestionCandidate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_asset, asset);
    v9->_score = score;
  }

  return v9;
}

@end