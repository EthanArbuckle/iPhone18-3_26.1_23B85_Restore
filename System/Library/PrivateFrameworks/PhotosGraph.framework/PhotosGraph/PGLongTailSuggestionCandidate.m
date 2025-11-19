@interface PGLongTailSuggestionCandidate
- (BOOL)isValidBeforeKeyItemFilterWithMeNodeLocalIdentifier:(id)a3;
- (BOOL)isValidWithMeNodeLocalIdentifier:(id)a3;
- (PGLongTailSuggestionCandidate)initWithAsset:(id)a3 score:(unint64_t)a4;
@end

@implementation PGLongTailSuggestionCandidate

- (BOOL)isValidBeforeKeyItemFilterWithMeNodeLocalIdentifier:(id)a3
{
  v4 = a3;
  if ((-[PHAsset clsIsNonMemorable](self->_asset, "clsIsNonMemorable") & 1) != 0 || ![MEMORY[0x277D3C7C0] assetIsSafeForWidgetDisplay:self->_asset] || (-[PHAsset clsIsTragicFailure](self->_asset, "clsIsTragicFailure") & 1) != 0 || (-[PHAsset clsIsUtility](self->_asset, "clsIsUtility") & 1) != 0 || (-[PHAsset aspectRatio](self->_asset, "aspectRatio"), v5 >= 3.0))
  {
    v7 = 0;
  }

  else
  {
    [(PHAsset *)self->_asset aspectRatio];
    v7 = v6 > 0.333333343;
  }

  v8 = [(PHAsset *)self->_asset clsPeopleCount];
  if (v8)
  {
    v9 = !v7;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v15 = v8 == 0 && v7;
    if (!v4)
    {
LABEL_18:
      LOBYTE(v11) = v15;
      goto LABEL_19;
    }
  }

  else
  {
    v14 = [(PHAsset *)self->_asset clsConsolidatedPersonLocalIdentifiers];
    v15 = [v14 count] != 0;

    if (!v4)
    {
      goto LABEL_18;
    }
  }

  v10 = [(PHAsset *)self->_asset clsPeopleCount];
  LOBYTE(v11) = (v10 != 1) & v15;
  if (v10 == 1 && ((v15 ^ 1) & 1) == 0)
  {
    v12 = [(PHAsset *)self->_asset clsPersonLocalIdentifiers];
    v13 = [v12 firstObject];
    v11 = [v13 isEqualToString:v4] ^ 1;
  }

LABEL_19:

  return v11;
}

- (BOOL)isValidWithMeNodeLocalIdentifier:(id)a3
{
  v4 = [(PGLongTailSuggestionCandidate *)self isValidBeforeKeyItemFilterWithMeNodeLocalIdentifier:a3];
  if (v4)
  {
    LOBYTE(v4) = [(PHAsset *)self->_asset clsAvoidIfPossibleAsKeyItemForMemories:0 allowGuestAsset:0]^ 1;
  }

  return v4;
}

- (PGLongTailSuggestionCandidate)initWithAsset:(id)a3 score:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PGLongTailSuggestionCandidate;
  v8 = [(PGLongTailSuggestionCandidate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_asset, a3);
    v9->_score = a4;
  }

  return v9;
}

@end