@interface _PXDetailsPlaybackRecord
- (PXTileIdentifier)tileIdentifier;
- (_PXDetailsPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference;
- (int64_t)desiredPlayState;
- (void)setDesiredPlayState:(int64_t)state;
- (void)setTileIdentifier:(PXTileIdentifier *)identifier;
@end

@implementation _PXDetailsPlaybackRecord

- (void)setTileIdentifier:(PXTileIdentifier *)identifier
{
  v3 = *&identifier->index[1];
  *&self->_tileIdentifier.length = *&identifier->length;
  *&self->_tileIdentifier.index[1] = v3;
  v5 = *&identifier->index[5];
  v4 = *&identifier->index[7];
  v6 = *&identifier->index[3];
  self->_tileIdentifier.index[9] = identifier->index[9];
  *&self->_tileIdentifier.index[5] = v5;
  *&self->_tileIdentifier.index[7] = v4;
  *&self->_tileIdentifier.index[3] = v6;
}

- (PXTileIdentifier)tileIdentifier
{
  v3 = *&self[2].index[1];
  *&retstr->index[3] = *&self[2].length;
  *&retstr->index[5] = v3;
  *&retstr->index[7] = *&self[2].index[3];
  retstr->index[9] = self[2].index[5];
  v4 = *&self[1].index[8];
  *&retstr->length = *&self[1].index[6];
  *&retstr->index[1] = v4;
  return self;
}

- (int64_t)desiredPlayState
{
  geometryReference = [(PXGridInlinePlaybackRecord *)self geometryReference];
  desiredPlayState = [geometryReference desiredPlayState];

  return desiredPlayState == 1;
}

- (void)setDesiredPlayState:(int64_t)state
{
  if (state == 1)
  {
    [(PXGridInlinePlaybackRecord *)self bestVideoTimeRange];
    geometryReference = [(PXGridInlinePlaybackRecord *)self geometryReference];
    v7[0] = v7[3];
    v7[1] = v7[4];
    v7[2] = v7[5];
    [geometryReference setBestPlaybackTimeRange:v7];

    geometryReference2 = [(PXGridInlinePlaybackRecord *)self geometryReference];
    [geometryReference2 setDesiredPlayState:1];
  }

  else if (!state)
  {
    geometryReference3 = [(PXGridInlinePlaybackRecord *)self geometryReference];
    [geometryReference3 setDesiredPlayState:0];
  }
}

- (_PXDetailsPlaybackRecord)initWithDisplayAsset:(id)asset mediaProvider:(id)provider geometryReference:(id)reference
{
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = _PXDetailsPlaybackRecord;
  v9 = [(PXGridInlinePlaybackRecord *)&v12 initWithDisplayAsset:assetCopy mediaProvider:provider geometryReference:reference];
  v10 = v9;
  if (v9)
  {
    PXUpdateInlinePlaybackRecordForPhotoKit(v9, assetCopy);
  }

  return v10;
}

@end