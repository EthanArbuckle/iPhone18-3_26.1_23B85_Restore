@interface PXExploreParsingState
- (void)prepareWithMetrics:(id)a3;
@end

@implementation PXExploreParsingState

- (void)prepareWithMetrics:(id)a3
{
  v10 = a3;
  v4 = ([v10 allowHeaders] & 1) != 0 || (objc_msgSend(v10, "layoutType") == 2 || objc_msgSend(v10, "layoutType") == 4 || objc_msgSend(v10, "layoutType") == 5 || objc_msgSend(v10, "layoutType") == 6) && objc_msgSend(v10, "layoutSubtype") != 3;
  [(PXExploreParsingState *)self setParseLocation:0];
  [v10 buildingBlockAspectRatio];
  v6 = v5;
  v7 = 1.0;
  if (v6 > 0.0)
  {
    [v10 buildingBlockAspectRatio];
  }

  [(PXExploreParsingState *)self setBuildingBlockAspectRatio:v7];
  if (v4)
  {
    v8 = 0;
  }

  else if ([v10 layoutSubtype] == 3 && (v9 = objc_msgSend(v10, "layoutType"), v9 <= 6))
  {
    v8 = qword_1A5381B18[v9];
  }

  else
  {
    v8 = 1;
  }

  [(PXExploreParsingState *)self setNextRowType:v8];
  [(PXExploreParsingState *)self setNextHeroSide:0];
  self->_canIgnoreNextHeroSide = 1;
  [(PXExploreParsingState *)self setNumberOfConsecutiveMediumHeroRows:0];
  -[PXExploreParsingState setEffectiveLargeHeroDensity:](self, "setEffectiveLargeHeroDensity:", [v10 largeHeroDensity]);
  [(PXExploreParsingState *)self setNumberOfColumnsOverride:0];
  [(PXExploreParsingState *)self setLastHeroRowTag:0];
}

@end