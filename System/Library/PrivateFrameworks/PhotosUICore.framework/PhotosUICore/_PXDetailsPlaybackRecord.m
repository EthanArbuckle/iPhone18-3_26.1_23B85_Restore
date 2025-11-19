@interface _PXDetailsPlaybackRecord
- (PXTileIdentifier)tileIdentifier;
- (_PXDetailsPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5;
- (int64_t)desiredPlayState;
- (void)setDesiredPlayState:(int64_t)a3;
- (void)setTileIdentifier:(PXTileIdentifier *)a3;
@end

@implementation _PXDetailsPlaybackRecord

- (void)setTileIdentifier:(PXTileIdentifier *)a3
{
  v3 = *&a3->index[1];
  *&self->_tileIdentifier.length = *&a3->length;
  *&self->_tileIdentifier.index[1] = v3;
  v5 = *&a3->index[5];
  v4 = *&a3->index[7];
  v6 = *&a3->index[3];
  self->_tileIdentifier.index[9] = a3->index[9];
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
  v2 = [(PXGridInlinePlaybackRecord *)self geometryReference];
  v3 = [v2 desiredPlayState];

  return v3 == 1;
}

- (void)setDesiredPlayState:(int64_t)a3
{
  if (a3 == 1)
  {
    [(PXGridInlinePlaybackRecord *)self bestVideoTimeRange];
    v4 = [(PXGridInlinePlaybackRecord *)self geometryReference];
    v7[0] = v7[3];
    v7[1] = v7[4];
    v7[2] = v7[5];
    [v4 setBestPlaybackTimeRange:v7];

    v5 = [(PXGridInlinePlaybackRecord *)self geometryReference];
    [v5 setDesiredPlayState:1];
  }

  else if (!a3)
  {
    v6 = [(PXGridInlinePlaybackRecord *)self geometryReference];
    [v6 setDesiredPlayState:0];
  }
}

- (_PXDetailsPlaybackRecord)initWithDisplayAsset:(id)a3 mediaProvider:(id)a4 geometryReference:(id)a5
{
  v8 = a3;
  v12.receiver = self;
  v12.super_class = _PXDetailsPlaybackRecord;
  v9 = [(PXGridInlinePlaybackRecord *)&v12 initWithDisplayAsset:v8 mediaProvider:a4 geometryReference:a5];
  v10 = v9;
  if (v9)
  {
    PXUpdateInlinePlaybackRecordForPhotoKit(v9, v8);
  }

  return v10;
}

@end