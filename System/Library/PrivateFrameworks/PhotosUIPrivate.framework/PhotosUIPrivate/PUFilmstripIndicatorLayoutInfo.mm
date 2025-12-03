@interface PUFilmstripIndicatorLayoutInfo
- (id)clone;
@end

@implementation PUFilmstripIndicatorLayoutInfo

- (id)clone
{
  v3 = [PUFilmstripIndicatorLayoutInfo alloc];
  tileIdentifier = [(PUTileLayoutInfo *)self tileIdentifier];
  [(PUTileLayoutInfo *)self center];
  v31 = v6;
  v32 = v5;
  [(PUTileLayoutInfo *)self size];
  v30 = v7;
  v9 = v8;
  [(PUTileLayoutInfo *)self alpha];
  v11 = v10;
  [(PUTileLayoutInfo *)self cornerRadius];
  v13 = v12;
  cornerCurve = [(PUTileLayoutInfo *)self cornerCurve];
  cornerMask = [(PUTileLayoutInfo *)self cornerMask];
  [(PUTileLayoutInfo *)self transform];
  [(PUTileLayoutInfo *)self zPosition];
  v17 = v16;
  [(PUTileLayoutInfo *)self contentsRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  coordinateSystem = [(PUTileLayoutInfo *)self coordinateSystem];
  v27 = [(PUTileLayoutInfo *)v3 initWithTileIdentifier:tileIdentifier center:cornerCurve size:cornerMask alpha:v33 cornerRadius:coordinateSystem cornerCurve:v32 cornerMask:v31 transform:v30 zPosition:v9 contentsRect:v11 coordinateSystem:v13, v17, v19, v21, v23, v25];

  highlightColor = [(PUFilmstripIndicatorLayoutInfo *)self highlightColor];
  [(PUFilmstripIndicatorLayoutInfo *)v27 setHighlightColor:highlightColor];

  return v27;
}

@end