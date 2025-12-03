@interface PXExploreLayoutGenerator
- ($340E233F617FB3D5D9EFCE5A6F22D754)presentedItemLocationForItemAtIndex:(SEL)index;
- (BOOL)_isShortRowNextFollowedByLargeHero;
- (BOOL)_parseFourColumnLayoutWithOptions:(unint64_t)options;
- (BOOL)_parseSevenColumnLayoutWithOptions:(unint64_t)options;
- (BOOL)_parseSixColumnLayoutWithOptions:(unint64_t)options;
- (BOOL)_parseThreeColumnLayoutWithOptions:(unint64_t)options;
- (BOOL)canReorderItemsAcrossRows;
- (BOOL)isAcceptableLargeHeroNextItemAtIndex:(int64_t)index;
- (BOOL)nextInputItems:(unint64_t)items;
- (BOOL)nextItems:(int64_t)items areAll:(unint64_t)all;
- (BOOL)nextItems:(int64_t)items isAny:(unint64_t)any;
- (BOOL)parseFourColumnGroupWithShortRowFollowedByLargeHero;
- (BOOL)parseFourColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items;
- (BOOL)parseMacLayout;
- (BOOL)parsePadLandscapeLayout;
- (BOOL)parsePhoneLandscapeLayout;
- (BOOL)parseSevenColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options;
- (BOOL)parseSixColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options;
- (BOOL)parseThreeColumnGroupWithFiveItems;
- (BOOL)parseThreeColumnGroupWithShortRowFollowedByLargeHero;
- (BOOL)parseThreeColumnGroupWithThreeItemsFollowedByOneItemAllowingLargeHeroAtEnd:(BOOL)end;
- (BOOL)parseThreeColumnMediumHeroRowWithPano;
- (BOOL)parseThreeColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items;
- (BOOL)parseThreeColumnShortRowWithPano;
- (BOOL)prepareNextItems:(int64_t)items withLargeHeroIndex:(int64_t)index;
- (CGRect)presentedRectForItemAtIndex:(int64_t)index;
- (CGSize)_cellSizeForNumberOfColumns:(int64_t)columns;
- (CGSize)_estimatedSizeForColumns:(int64_t)columns headerRows:(int64_t)rows averageItemsPerBlock:(double)block averageRowsPerBlock:(double)perBlock withOptions:(unint64_t)options;
- (CGSize)_estimatedSizeForFourColumnLayoutWithOptions:(unint64_t)options;
- (CGSize)_estimatedSizeForSevenColumnLayoutWithOptions:(unint64_t)options;
- (CGSize)_estimatedSizeForSixColumnLayoutWithOptions:(unint64_t)options;
- (CGSize)_estimatedSizeForThreeColumnLayoutWithOptions:(unint64_t)options;
- (CGSize)buildingBlockSize;
- (CGSize)estimatedSize;
- (CGSize)estimatedSizeForPadLandscape;
- (CGSize)estimatedSizeForPadPortrait;
- (CGSize)estimatedSizeForPhoneLandscape;
- (CGSize)estimatedSizeForPhonePortrait;
- (CGSize)headerItemSize;
- (CGSize)minHeroItemsSize;
- (CGSize)minimumItemSize;
- (CGSize)size;
- (NSString)diagnosticDescription;
- (PXExploreLayoutGenerator)initWithMetrics:(id)metrics;
- (_PXCornerSpriteIndexes)cornerSpriteIndexes;
- (double)_buildingBlockAspectRatioForNumberOfColumns:(int64_t)columns options:(unint64_t)options;
- (double)score:(int64_t)score forNextItemAtIndex:(int64_t)index;
- (id)presentedItemsBetweenItem:(int64_t)item andItem:(int64_t)andItem;
- (id)presentedItemsInRect:(CGRect)rect;
- (int64_t)indexWithinNextItems:(int64_t)items having:(int64_t)having keyIndex:(int64_t)index;
- (int64_t)itemIndexForItem:(int64_t)item inDirection:(unint64_t)direction;
- (int64_t)itemIndexForPresentedItemIndex:(int64_t)index;
- (int64_t)numberOf:(unint64_t)of withinNextItems:(int64_t)items;
- (int64_t)numberOfItemsInFourColumnMediumHeroRowForNumberOfRemainingItems:(int64_t)items;
- (int64_t)numberOfItemsInSevenColumnHeroRowForNumberOfRemainingItems:(int64_t)items;
- (int64_t)numberOfItemsInSevenColumnShortRowForNumberOfRemainingItems:(int64_t)items;
- (int64_t)numberOfItemsInSixColumnHeroRowForNumberOfRemainingItems:(int64_t)items rowOptions:(unint64_t *)options;
- (int64_t)numberOfItemsInSixColumnShortRowForNumberOfRemainingItems:(int64_t)items;
- (int64_t)numberOfRemainingItems;
- (int64_t)preferredRowTypeAfterRowWithType:(int64_t)type;
- (int64_t)presentedNumberOfColumnsAtRow:(int64_t)row;
- (int64_t)presentedNumberOfRows;
- (unint64_t)attributesForNextItemAtIndex:(int64_t)index;
- (void)_addThreeItemsToSixColumnRowWithHeroItemType:(int64_t)type options:(unint64_t)options rowType:(int64_t *)rowType;
- (void)_addTwoItemsForThreeColumnRowPreferringTallVariant:(BOOL)variant;
- (void)_parseFourColumnHeroRowWithType:(int64_t)type heroItemType:(int64_t)itemType numberOfItems:(int64_t)items;
- (void)_parseFourColumnShortRowWithNumberOfItems:(int64_t)items;
- (void)_parseSevenColumnHeroRowWithNumberOfItems:(int64_t)items heroItemType:(int64_t)type subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options;
- (void)_parseSevenColumnShortRowWithNumberOfItems:(int64_t)items;
- (void)_parseSixColumnHeroRowWithNumberOfItems:(int64_t)items heroItemType:(int64_t)type subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options;
- (void)_parseSixColumnShortRowWithNumberOfItems:(int64_t)items;
- (void)_parseThreeColumnHeaderRowWithNumberOfItems:(int64_t)items;
- (void)_parseThreeColumnMediumHeroRowWithNumberOfItems:(int64_t)items;
- (void)_parseThreeColumnShortRowWithNumberOfItems:(int64_t)items;
- (void)_prepareIfNeeded;
- (void)addFullWidthItemWithType:(int64_t)type atRow:(int64_t)row aspectRatio:(double)ratio;
- (void)addLocalItemWithType:(int64_t)type atColumn:(int64_t)column row:(int64_t)row columnSpan:(int64_t)span rowSpan:(int64_t)rowSpan;
- (void)beginRowWithNumberOfColumns:(int64_t)columns;
- (void)dealloc;
- (void)endFullWidthRowWithType:(int64_t)type aspectRatio:(double)ratio;
- (void)endRowWithType:(int64_t)type;
- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind;
- (void)getLowestAspectRatio:(double *)ratio highestAspectRatio:(double *)aspectRatio forNextItems:(int64_t)items;
- (void)invalidate;
- (void)moveNextItemAtIndex:(int64_t)index toIndex:(int64_t)toIndex;
- (void)reorderNextItems:(int64_t)items usingMapping:(id)mapping;
- (void)setBuildingBlockColumnSpan:(int64_t)span rowSpan:(int64_t)rowSpan withNumberOfColumns:(int64_t)columns;
- (void)sortNextItems:(int64_t)items withItemAtIndex:(int64_t)index having:(int64_t)having;
@end

@implementation PXExploreLayoutGenerator

- (double)_buildingBlockAspectRatioForNumberOfColumns:(int64_t)columns options:(unint64_t)options
{
  optionsCopy = options;
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  [metrics buildingBlockAspectRatio];
  if (v7 > 0.0)
  {
    [metrics buildingBlockAspectRatio];
LABEL_3:
    v9 = v8;
    goto LABEL_10;
  }

  v9 = 1.0;
  if (optionsCopy)
  {
    goto LABEL_10;
  }

  if ((optionsCopy & 4) != 0)
  {
    v8 = PXExploreLayoutCellPreferredAspectRatio([metrics layoutType], objc_msgSend(metrics, "layoutSubtype"));
    goto LABEL_3;
  }

  [metrics referenceSize];
  v11 = v10;
  v13 = v12;
  if ((optionsCopy & 2) == 0)
  {
    [metrics safeAreaInsets];
    v15 = v14;
    [metrics safeAreaInsets];
    v13 = v13 - (v15 + v16);
  }

  v17 = round(v13 / (v11 / columns / PXExploreLayoutCellPreferredAspectRatio([metrics layoutType], objc_msgSend(metrics, "layoutSubtype"))));
  [metrics interitemSpacing];
  v9 = v11 / -(v18 - (v13 + v18) / v17 * columns);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v9 = 1.0;
  }

LABEL_10:

  return v9;
}

- (BOOL)_parseSevenColumnLayoutWithOptions:(unint64_t)options
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  [(PXExploreLayoutGenerator *)self _buildingBlockAspectRatioForNumberOfColumns:7 options:options];
  [localState setBuildingBlockAspectRatio:?];
  [localState setEffectiveLargeHeroDensity:0];
  [(PXExploreLayoutGenerator *)self setBuildingBlockColumnSpan:1 rowSpan:1 withNumberOfColumns:7];
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  if (numberOfRemainingItems >= 1)
  {
    numberOfRemainingItems2 = numberOfRemainingItems;
    v8 = 0;
    while (1)
    {
      nextRowType = [localState nextRowType];
      if ([(PXExploreLayoutGenerator *)self canUseSingleSevenColumnHeroRowForNumberOfRemainingItems:numberOfRemainingItems2]&& nextRowType == 1)
      {
        nextRowType = 2;
      }

      if ((nextRowType - 2) >= 2)
      {
        if (nextRowType != 1 || ![(PXExploreLayoutGenerator *)self parseSevenColumnRowWithType:1 numberOfItems:[(PXExploreLayoutGenerator *)self numberOfItemsInSevenColumnShortRowForNumberOfRemainingItems:numberOfRemainingItems2] options:0])
        {
          goto LABEL_13;
        }
      }

      else if (![(PXExploreLayoutGenerator *)self parseSevenColumnRowWithType:nextRowType numberOfItems:[(PXExploreLayoutGenerator *)self numberOfItemsInSevenColumnHeroRowForNumberOfRemainingItems:numberOfRemainingItems2] options:0])
      {
        goto LABEL_13;
      }

      numberOfRemainingItems2 = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
      v8 = 1;
      if (numberOfRemainingItems2 <= 0)
      {
        goto LABEL_13;
      }
    }
  }

  v8 = 0;
LABEL_13:

  return v8 & 1;
}

- (BOOL)_parseSixColumnLayoutWithOptions:(unint64_t)options
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  [(PXExploreLayoutGenerator *)self _buildingBlockAspectRatioForNumberOfColumns:6 options:options];
  [localState setBuildingBlockAspectRatio:?];
  [localState setEffectiveLargeHeroDensity:0];
  [(PXExploreLayoutGenerator *)self setBuildingBlockColumnSpan:1 rowSpan:1 withNumberOfColumns:6];
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  if (numberOfRemainingItems >= 1)
  {
    numberOfRemainingItems2 = numberOfRemainingItems;
    v8 = 0;
    while (1)
    {
      nextRowType = [localState nextRowType];
      v10 = nextRowType;
      if ((nextRowType - 2) < 2)
      {
        v17 = 0;
        v13 = [(PXExploreLayoutGenerator *)self numberOfItemsInSixColumnHeroRowForNumberOfRemainingItems:numberOfRemainingItems2 rowOptions:&v17];
        if (![(PXExploreLayoutGenerator *)self parseSixColumnRowWithType:v10 numberOfItems:v13 options:v17])
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (nextRowType == 1)
        {
          v14 = [(PXExploreLayoutGenerator *)self numberOfItemsInSixColumnShortRowForNumberOfRemainingItems:numberOfRemainingItems2];
          selfCopy2 = self;
        }

        else
        {
          if (nextRowType)
          {
            goto LABEL_25;
          }

          v11 = 0;
          v12 = 3;
          switch(numberOfRemainingItems2)
          {
            case 1:
            case 2:
            case 5:
              goto LABEL_17;
            case 4:
            case 7:
            case 8:
            case 11:
              v11 = 2;
              goto LABEL_16;
            case 6:
              v11 = 4;
              goto LABEL_8;
            case 10:
            case 19:
            case 23:
            case 26:
            case 28:
              v11 = 4;
LABEL_16:
              numberOfRemainingItems2 = 4;
              goto LABEL_17;
            case 14:
              goto LABEL_22;
            case 17:
              v12 = 4;
LABEL_22:
              if (![(PXExploreLayoutGenerator *)self parseSixColumnRowWithType:0 numberOfItems:4 subsequentShortRowItems:v12 options:2])
              {
                goto LABEL_25;
              }

              selfCopy2 = self;
              v14 = v12;
              break;
            default:
              v11 = 0;
LABEL_8:
              numberOfRemainingItems2 = 3;
LABEL_17:
              if ([(PXExploreLayoutGenerator *)self parseSixColumnRowWithType:0 numberOfItems:numberOfRemainingItems2 subsequentShortRowItems:0 options:v11])
              {
                goto LABEL_18;
              }

              goto LABEL_25;
          }
        }

        if (![(PXExploreLayoutGenerator *)selfCopy2 parseSixColumnRowWithType:1 numberOfItems:v14 options:0])
        {
          goto LABEL_25;
        }
      }

LABEL_18:
      numberOfRemainingItems2 = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
      v8 = 1;
      if (numberOfRemainingItems2 <= 0)
      {
        goto LABEL_25;
      }
    }
  }

  v8 = 0;
LABEL_25:

  return v8 & 1;
}

- (BOOL)_parseFourColumnLayoutWithOptions:(unint64_t)options
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  [(PXExploreLayoutGenerator *)self _buildingBlockAspectRatioForNumberOfColumns:4 options:options];
  [localState setBuildingBlockAspectRatio:?];
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  allowHeaders = [metrics allowHeaders];

  v9 = numberOfRemainingItems + (allowHeaders ^ 1u);
  if (v9 <= 24)
  {
    [localState setEffectiveLargeHeroDensity:0];
  }

  if (v9 > 0xE || ((1 << v9) & 0x449C) == 0)
  {
    selfCopy2 = self;
    v12 = 1;
    v13 = 1;
    v14 = 4;
  }

  else
  {
    [localState setNumberOfColumnsOverride:3];
    selfCopy2 = self;
    v12 = 4;
    v13 = 3;
    v14 = 12;
  }

  [(PXExploreLayoutGenerator *)selfCopy2 setBuildingBlockColumnSpan:v12 rowSpan:v13 withNumberOfColumns:v14];
  numberOfRemainingItems2 = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  if (numberOfRemainingItems2 >= 1)
  {
    numberOfRemainingItems3 = numberOfRemainingItems2;
    v17 = 0;
    while (1)
    {
      nextRowType = [localState nextRowType];
      if (nextRowType > 1)
      {
        if (nextRowType == 2)
        {
          v21 = [(PXExploreLayoutGenerator *)self numberOfItemsInFourColumnMediumHeroRowForNumberOfRemainingItems:numberOfRemainingItems3];
          selfCopy9 = self;
          v20 = 2;
          goto LABEL_37;
        }

        if (nextRowType != 3)
        {
          goto LABEL_43;
        }

        if (numberOfRemainingItems3 > 5)
        {
          if ((numberOfRemainingItems3 - 6) < 2)
          {
LABEL_30:
            selfCopy9 = self;
            v20 = 2;
LABEL_31:
            v21 = 3;
            goto LABEL_37;
          }
        }

        else
        {
          switch(numberOfRemainingItems3)
          {
            case 2:
              selfCopy9 = self;
              v20 = 2;
              v21 = 2;
              goto LABEL_37;
            case 3:
              goto LABEL_30;
            case 4:
              selfCopy9 = self;
              v20 = 2;
              v21 = 4;
              goto LABEL_37;
          }
        }

        if (![(PXExploreLayoutGenerator *)self parseFourColumnRowWithType:3 numberOfItems:1])
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (!nextRowType)
        {
          selfCopy9 = self;
          v20 = 0;
          if (numberOfRemainingItems3 > 3)
          {
            v21 = 1;
          }

          else
          {
            v21 = numberOfRemainingItems3;
          }

          goto LABEL_37;
        }

        if (nextRowType != 1)
        {
          goto LABEL_43;
        }

        if (![(PXExploreLayoutGenerator *)self parseFourColumnGroupWithShortRowFollowedByLargeHero])
        {
          if ((numberOfRemainingItems3 == 6 || (numberOfRemainingItems3 & 0x7FFFFFFFFFFFFFFBLL) == 9) && [localState numberOfColumnsOverride] == 3)
          {
            selfCopy9 = self;
            v20 = 1;
            goto LABEL_31;
          }

          if (numberOfRemainingItems3 >= 4)
          {
            v21 = 4;
          }

          else
          {
            v21 = numberOfRemainingItems3;
          }

          selfCopy9 = self;
          v20 = 1;
LABEL_37:
          if (![(PXExploreLayoutGenerator *)selfCopy9 parseFourColumnRowWithType:v20 numberOfItems:v21])
          {
            goto LABEL_43;
          }
        }
      }

      numberOfRemainingItems3 = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
      v17 = 1;
      if (numberOfRemainingItems3 < 1)
      {
        goto LABEL_43;
      }
    }
  }

  v17 = 0;
LABEL_43:

  return v17 & 1;
}

- (BOOL)_parseThreeColumnLayoutWithOptions:(unint64_t)options
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  [(PXExploreLayoutGenerator *)self _buildingBlockAspectRatioForNumberOfColumns:3 options:options];
  [localState setBuildingBlockAspectRatio:?];
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  if (numberOfRemainingItems <= 19)
  {
    [localState setEffectiveLargeHeroDensity:0];
  }

  [(PXExploreLayoutGenerator *)self setBuildingBlockColumnSpan:1 rowSpan:1 withNumberOfColumns:3];
  numberOfRemainingItems2 = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  if (numberOfRemainingItems2 >= 1)
  {
    numberOfRemainingItems3 = numberOfRemainingItems2;
    v9 = 0;
    while (1)
    {
      nextRowType = [localState nextRowType];
      if (nextRowType > 1)
      {
        if (nextRowType == 2)
        {
          if ([(PXExploreLayoutGenerator *)self nextItems:3 isAny:2])
          {
            LOBYTE(v11) = [(PXExploreLayoutGenerator *)self parseThreeColumnMediumHeroRowWithPano];
            goto LABEL_46;
          }

          if (numberOfRemainingItems3 == 4)
          {
            if (![(PXExploreLayoutGenerator *)self nextItems:4 isAny:2])
            {
              LOBYTE(v11) = [(PXExploreLayoutGenerator *)self parseThreeColumnGroupWithThreeItemsFollowedByOneItemAllowingLargeHeroAtEnd:0];
              goto LABEL_46;
            }

            v16 = 3;
          }

          else
          {
            if (numberOfRemainingItems3 >= 3)
            {
              v16 = 3;
            }

            else
            {
              v16 = numberOfRemainingItems3;
            }

            if ((numberOfRemainingItems3 - 5) <= 1)
            {
              if ([(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
              {
                if (([localState didMoveBestItemOutOfPreviousShortRowIntoHeroRow] & 1) == 0 && !-[PXExploreLayoutGenerator nextItems:isAny:](self, "nextItems:isAny:", numberOfRemainingItems3, 2))
                {
                  v17 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:numberOfRemainingItems3 having:0 keyIndex:0];
                  if (v17 >= 3)
                  {
                    [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v17 toIndex:2];
                  }
                }
              }
            }
          }

          selfCopy4 = self;
          v14 = 2;
          v15 = v16;
          goto LABEL_45;
        }

        if (nextRowType != 3)
        {
          goto LABEL_69;
        }

        if (numberOfRemainingItems3 == 2 && ![(PXExploreLayoutGenerator *)self nextInputItems:1, 2, 0])
        {
          selfCopy4 = self;
          v14 = 2;
          v15 = 2;
LABEL_45:
          LOBYTE(v11) = [(PXExploreLayoutGenerator *)selfCopy4 parseThreeColumnRowWithType:v14 numberOfItems:v15];
LABEL_46:
          if (!v11)
          {
            goto LABEL_69;
          }

          goto LABEL_47;
        }

        if (![(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:3 numberOfItems:1])
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (!nextRowType)
        {
          if (numberOfRemainingItems3 == 2)
          {
            v12 = [(PXExploreLayoutGenerator *)self nextInputItems:1, 2, 0];
            v11 = [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:0 numberOfItems:1];
            if (v12)
            {
              goto LABEL_46;
            }

            if (!v11)
            {
              goto LABEL_69;
            }

            selfCopy4 = self;
            v14 = 3;
          }

          else
          {
            selfCopy4 = self;
            v14 = 0;
          }

          v15 = 1;
          goto LABEL_45;
        }

        if (nextRowType != 1)
        {
          goto LABEL_69;
        }

        if (![(PXExploreLayoutGenerator *)self parseThreeColumnGroupWithShortRowFollowedByLargeHero])
        {
          if ([(PXExploreLayoutGenerator *)self nextItems:3 isAny:2])
          {
            LOBYTE(v11) = [(PXExploreLayoutGenerator *)self parseThreeColumnShortRowWithPano];
            goto LABEL_46;
          }

          parseLocation = [localState parseLocation];
          if (numberOfRemainingItems3 <= 3)
          {
            if (numberOfRemainingItems3 != 2)
            {
              goto LABEL_61;
            }

            if (numberOfRemainingItems != 3)
            {
              numberOfRemainingItems3 = 2;
              goto LABEL_61;
            }

            selfCopy6 = self;
            v21 = 2;
            v22 = 2;
LABEL_62:
            [(PXExploreLayoutGenerator *)selfCopy6 parseThreeColumnRowWithType:v21 numberOfItems:v22];
          }

          else
          {
            if (numberOfRemainingItems3 > 6)
            {
              if (numberOfRemainingItems3 != 7 && numberOfRemainingItems3 != 10)
              {
                goto LABEL_56;
              }
            }

            else if (numberOfRemainingItems3 != 4)
            {
              if (numberOfRemainingItems3 == 5)
              {
                if (![(PXExploreLayoutGenerator *)self nextItems:5 isAny:2])
                {
                  [(PXExploreLayoutGenerator *)self parseThreeColumnGroupWithFiveItems];
                  goto LABEL_63;
                }

LABEL_60:
                numberOfRemainingItems3 = 3;
LABEL_61:
                selfCopy6 = self;
                v21 = 1;
                v22 = numberOfRemainingItems3;
                goto LABEL_62;
              }

LABEL_56:
              if (![(PXExploreLayoutGenerator *)self nextItems:6 isAny:2])
              {
                if ([(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
                {
                  v19 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:6 having:0 keyIndex:5];
                  if (v19 <= 2)
                  {
                    [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v19 toIndex:3];
                    [localState setDidMoveBestItemOutOfPreviousShortRowIntoHeroRow:1];
                  }
                }
              }

              goto LABEL_60;
            }

            if ([(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 0x20000, 2, 0])
            {
              goto LABEL_60;
            }

            [(PXExploreLayoutGenerator *)self parseThreeColumnGroupWithThreeItemsFollowedByOneItemAllowingLargeHeroAtEnd:(numberOfRemainingItems & 0xFFFFFFFFFFFFFFFELL) == 4];
          }

LABEL_63:
          if ([localState parseLocation] <= parseLocation)
          {
            goto LABEL_69;
          }
        }
      }

LABEL_47:
      numberOfRemainingItems3 = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
      v9 = 1;
      if (numberOfRemainingItems3 < 1)
      {
        goto LABEL_69;
      }
    }
  }

  v9 = 0;
LABEL_69:

  return v9 & 1;
}

- (BOOL)parseMacLayout
{
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  layoutSubtype = [metrics layoutSubtype];

  if (layoutSubtype == 3)
  {

    return [(PXExploreLayoutGenerator *)self _parseSevenColumnLayoutWithOptions:4];
  }

  else
  {

    return [(PXExploreLayoutGenerator *)self _parseSixColumnLayoutWithOptions:4];
  }
}

- (BOOL)parsePadLandscapeLayout
{
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  layoutSubtype = [metrics layoutSubtype];

  if (layoutSubtype == 3)
  {

    return [(PXExploreLayoutGenerator *)self _parseSevenColumnLayoutWithOptions:2];
  }

  else
  {

    return [(PXExploreLayoutGenerator *)self _parseSixColumnLayoutWithOptions:2];
  }
}

- (BOOL)parsePhoneLandscapeLayout
{
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  layoutSubtype = [metrics layoutSubtype];

  if (layoutSubtype == 3)
  {

    return [(PXExploreLayoutGenerator *)self _parseSevenColumnLayoutWithOptions:2];
  }

  else
  {

    return [(PXExploreLayoutGenerator *)self _parseSixColumnLayoutWithOptions:2];
  }
}

- (CGSize)_estimatedSizeForColumns:(int64_t)columns headerRows:(int64_t)rows averageItemsPerBlock:(double)block averageRowsPerBlock:(double)perBlock withOptions:(unint64_t)options
{
  optionsCopy = options;
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  [metrics referenceSize];
  v15 = v14;

  itemCount = [(PXExploreLayoutGenerator *)self itemCount];
  metrics2 = [(PXExploreLayoutGenerator *)self metrics];
  [metrics2 buildingBlockAspectRatio];
  if (v18 <= 0.0)
  {
    v20 = 1.0;
    if ((optionsCopy & 1) == 0)
    {
      metrics3 = [(PXExploreLayoutGenerator *)self metrics];
      layoutType = [metrics3 layoutType];
      metrics4 = [(PXExploreLayoutGenerator *)self metrics];
      v20 = PXExploreLayoutCellPreferredAspectRatio(layoutType, [metrics4 layoutSubtype]);
    }
  }

  else
  {
    [metrics2 buildingBlockAspectRatio];
    v20 = v19;
  }

  v24 = v15;
  v25 = v15 / columns / v20 * (rows + ((columns + itemCount - 2) / columns) / block * perBlock);
  result.height = v25;
  result.width = v24;
  return result;
}

- (CGSize)_estimatedSizeForSevenColumnLayoutWithOptions:(unint64_t)options
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForColumns:7 headerRows:3 averageItemsPerBlock:options averageRowsPerBlock:12.0 withOptions:4.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_estimatedSizeForSixColumnLayoutWithOptions:(unint64_t)options
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForColumns:6 headerRows:3 averageItemsPerBlock:options averageRowsPerBlock:9.0 withOptions:4.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_estimatedSizeForFourColumnLayoutWithOptions:(unint64_t)options
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForColumns:4 headerRows:3 averageItemsPerBlock:options averageRowsPerBlock:4.0 withOptions:2.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_estimatedSizeForThreeColumnLayoutWithOptions:(unint64_t)options
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForColumns:3 headerRows:3 averageItemsPerBlock:options averageRowsPerBlock:3.0 withOptions:1.5];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)estimatedSizeForPadLandscape
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForSixColumnLayoutWithOptions:2];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)estimatedSizeForPadPortrait
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForFourColumnLayoutWithOptions:2];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)estimatedSizeForPhoneLandscape
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForSixColumnLayoutWithOptions:2];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)estimatedSizeForPhonePortrait
{
  [(PXExploreLayoutGenerator *)self _estimatedSizeForThreeColumnLayoutWithOptions:1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)presentedItemsBetweenItem:(int64_t)item andItem:(int64_t)andItem
{
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (self->_isPrepared)
  {
    v8 = item & ~(item >> 63);
    itemCount = [(PXExploreLayoutGenerator *)self itemCount];
    if (itemCount - 1 < andItem)
    {
      andItem = itemCount - 1;
    }

    [(PXExploreLayoutGenerator *)self presentedRectForItemAtIndex:v8];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(PXExploreLayoutGenerator *)self presentedRectForItemAtIndex:andItem];
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    MaxX = CGRectGetMaxX(v37);
    v38.origin.x = v11;
    v38.origin.y = v13;
    v38.size.width = v15;
    v38.size.height = v17;
    MinX = CGRectGetMinX(v38);
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    MaxY = CGRectGetMaxY(v39);
    v40.origin.x = v11;
    v40.origin.y = v13;
    v40.size.width = v15;
    v40.size.height = v17;
    MinY = CGRectGetMinY(v40);
    v24 = MaxX;
    if (MaxX > MinX && MaxY > MinY)
    {
      inputItemInfos = self->_inputItemInfos;
      var1 = inputItemInfos[v8].var1;
      v28 = inputItemInfos[andItem].var1;
      v29 = var1 - v28;
      if (var1 >= v28)
      {
        if (var1 > v28)
        {
          v32 = v28;
          do
          {
            [v7 addIndex:{self->_inputItemInfos[v32++].var0, MinY, v24, *&MinX}];
            --v29;
          }

          while (v29);
        }
      }

      else
      {
        v30 = v28 - var1;
        v31 = var1;
        do
        {
          [v7 addIndex:{self->_inputItemInfos[v31++].var0, MinY, v24, *&MinX}];
          --v30;
        }

        while (v30);
      }
    }
  }

  return v7;
}

- (id)presentedItemsInRect:(CGRect)rect
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  if (self->_isPrepared)
  {
    PXDistanceBetweenPoints();
  }

  return v4;
}

- ($340E233F617FB3D5D9EFCE5A6F22D754)presentedItemLocationForItemAtIndex:(SEL)index
{
  *retstr = *PXLayoutItemLocationNull;
  if (LOBYTE(self[3].var2) == 1)
  {
    selfCopy = self;
    if (a4 < 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:index object:selfCopy file:@"PXExploreLayoutGenerator.m" lineNumber:962 description:{@"Invalid parameter not satisfying: %@", @"index >= 0"}];
    }

    if (selfCopy[1].var2 <= a4)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:index object:selfCopy file:@"PXExploreLayoutGenerator.m" lineNumber:963 description:{@"Invalid parameter not satisfying: %@", @"index < _capacity"}];
    }

    v8 = (selfCopy[2].var2 + 32 * a4);
    v9 = v8[1];
    *&retstr->var0 = *v8;
    *&retstr->var2 = v9;
  }

  return self;
}

- (CGRect)presentedRectForItemAtIndex:(int64_t)index
{
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  v8 = *(MEMORY[0x1E695F050] + 24);
  if (index != 0x7FFFFFFFFFFFFFFFLL && self->_isPrepared)
  {
    v11 = v3;
    v12 = v4;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    [(PXExploreLayoutGenerator *)self getGeometries:v9 inRange:index withKind:1, 0];
    PXRectWithCenterAndSize();
  }

  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (int64_t)presentedNumberOfColumnsAtRow:(int64_t)row
{
  if (!self->_isPrepared)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (row < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"row >= 0"}];
  }

  if (self->_rowCount <= row)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:943 description:{@"Invalid parameter not satisfying: %@", @"row < _rowCount"}];
  }

  return self->_outputNumberOfColumnsAtRow[row];
}

- (int64_t)presentedNumberOfRows
{
  if (self->_isPrepared)
  {
    return self->_row;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (int64_t)itemIndexForItem:(int64_t)item inDirection:(unint64_t)direction
{
  if (direction - 7 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:917 description:@"Only next/previous directions are supported"];
  }

  if (self->_isPrepared)
  {
    v7 = self->_outputItemIndexToParseLocation[item];
    if (direction == 6 && v7 > 0)
    {
      v8 = -40;
      return *(&self->_inputItemInfos[v7].var0 + v8);
    }

    if (direction == 5 && v7 < self->_capacity - 1)
    {
      v8 = 40;
      return *(&self->_inputItemInfos[v7].var0 + v8);
    }
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

- (int64_t)itemIndexForPresentedItemIndex:(int64_t)index
{
  if (!self->_isPrepared)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (index < 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:909 description:{@"Invalid parameter not satisfying: %@", @"presentedItem >= 0"}];
  }

  if (self->_capacity <= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:910 description:{@"Invalid parameter not satisfying: %@", @"presentedItem < _capacity"}];
  }

  return self->_inputItemInfos[index].var0;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v10.receiver = self;
  v10.super_class = PXExploreLayoutGenerator;
  diagnosticDescription = [(PXExploreLayoutGenerator *)&v10 diagnosticDescription];
  localState = [(PXExploreLayoutGenerator *)self localState];
  v6 = [v3 initWithFormat:@"<%@\n\tparsed=%li\n", diagnosticDescription, objc_msgSend(localState, "parseLocation")];

  if (self->_count >= 1)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      [v6 appendFormat:@"\t%li w=%0.2f ar=%0.2f attr=0x%lx\n", self->_inputItemInfos[v7].var0, *&self->_inputItemInfos[v7].var3, *&self->_inputItemInfos[v7].var4, self->_inputItemInfos[v7].var2];
      ++v8;
      ++v7;
    }

    while (v8 < self->_count);
  }

  [v6 appendString:@">"];

  return v6;
}

- (_PXCornerSpriteIndexes)cornerSpriteIndexes
{
  [(PXExploreLayoutGenerator *)self _prepareIfNeeded];
  v3 = *&self->_cornerSpriteIndexes.topLeft;
  v4 = *&self->_cornerSpriteIndexes.bottomLeft;
  result.bottomLeft = v4;
  result.bottomRight = HIDWORD(v4);
  result.topLeft = v3;
  result.topRight = HIDWORD(v3);
  return result;
}

- (unint64_t)attributesForNextItemAtIndex:(int64_t)index
{
  inputItemInfos = self->_inputItemInfos;
  localState = [(PXExploreLayoutGenerator *)self localState];
  var2 = inputItemInfos[[localState parseLocation] + index].var2;

  return var2;
}

- (void)getLowestAspectRatio:(double *)ratio highestAspectRatio:(double *)aspectRatio forNextItems:(int64_t)items
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];

  if (items < 1)
  {
    v13 = 1.79769313e308;
    v12 = -1.79769313e308;
    if (ratio)
    {
LABEL_9:
      *ratio = v13;
    }
  }

  else
  {
    p_var4 = &self->_inputItemInfos[parseLocation].var4;
    v12 = -1.79769313e308;
    v13 = 1.79769313e308;
    do
    {
      v14 = *p_var4;
      p_var4 += 5;
      v15 = v14;
      if (v13 >= v14)
      {
        v13 = v15;
      }

      if (v12 < v15)
      {
        v12 = v15;
      }

      --items;
    }

    while (items);
    if (ratio)
    {
      goto LABEL_9;
    }
  }

  if (aspectRatio)
  {
    *aspectRatio = v12;
  }
}

- (double)score:(int64_t)score forNextItemAtIndex:(int64_t)index
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  v9 = [localState parseLocation] + index;

  if (v9 >= self->_count)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:837 description:{@"score index out of bounds %li, count: %li", v9, self->_count}];
  }

  v10 = &self->_inputItemInfos[v9];
  v11 = *&v10->var2;
  v30 = *&v10->var0;
  v31 = v11;
  var4 = v10->var4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __53__PXExploreLayoutGenerator_score_forNextItemAtIndex___block_invoke;
  aBlock[3] = &__block_descriptor_72_e5_d8__0l;
  v29 = var4;
  v27 = v30;
  v28 = v11;
  v12 = _Block_copy(aBlock);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __53__PXExploreLayoutGenerator_score_forNextItemAtIndex___block_invoke_2;
  v22[3] = &__block_descriptor_72_e5_d8__0l;
  v23 = v30;
  v24 = v31;
  v25 = var4;
  v13 = _Block_copy(v22);
  v14 = v13;
  if (score <= 1)
  {
    if (score)
    {
      if (score != 1)
      {
        goto LABEL_16;
      }

      v17 = (*(v13 + 2))(v13);
    }

    else
    {
      v17 = v12[2](v12);
    }

    v16 = v17;
    goto LABEL_15;
  }

  if (score == 2)
  {
    v16 = -(*(v13 + 2))(v13);
    goto LABEL_15;
  }

  if (score == 3)
  {
    v18 = (*(v13 + 2))(v13);
    v16 = v18 + v12[2](v12);
    goto LABEL_15;
  }

  if (score != 4)
  {
LABEL_16:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:861 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v15 = (*(v13 + 2))(v13);
  v16 = v12[2](v12) - v15;
LABEL_15:

  return v16;
}

- (BOOL)isAcceptableLargeHeroNextItemAtIndex:(int64_t)index
{
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  acceptableLargeHeroPredicate = [metrics acceptableLargeHeroPredicate];

  if (acceptableLargeHeroPredicate)
  {
    inputItemInfos = self->_inputItemInfos;
    localState = [(PXExploreLayoutGenerator *)self localState];
    var0 = inputItemInfos[[localState parseLocation] + index].var0;

    itemLayoutInfoBlock = [(PXExploreLayoutGenerator *)self itemLayoutInfoBlock];
    v11 = itemLayoutInfoBlock[2](itemLayoutInfoBlock, var0);

    v12 = (acceptableLargeHeroPredicate)[2](acceptableLargeHeroPredicate, v11);
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)prepareNextItems:(int64_t)items withLargeHeroIndex:(int64_t)index
{
  selfCopy = self;
  LOBYTE(self) = 0;
  if (items >= 1 && index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [PXExploreLayoutGenerator indexWithinNextItems:selfCopy having:"indexWithinNextItems:having:keyIndex:" keyIndex:?];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      LOBYTE(self) = 0;
    }

    else
    {
      v7 = v6;
      LODWORD(self) = [(PXExploreLayoutGenerator *)selfCopy isAcceptableLargeHeroNextItemAtIndex:v6];
      if (self)
      {
        if ([(PXExploreLayoutGenerator *)selfCopy canReorderItemsAcrossRows])
        {
          [(PXExploreLayoutGenerator *)selfCopy moveNextItemAtIndex:v7 toIndex:index];
        }

        LOBYTE(self) = 1;
      }
    }
  }

  return self;
}

- (int64_t)indexWithinNextItems:(int64_t)items having:(int64_t)having keyIndex:(int64_t)index
{
  if (items < 1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = 0;
  v9 = -index;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v11 = -1.79769313e308;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    [(PXExploreLayoutGenerator *)self score:having forNextItemAtIndex:v8];
    v14 = v9 + v8;
    if (v9 + v8 < 0)
    {
      v14 = -v14;
    }

    if (v13 > v11 || (v13 == v11 ? (v15 = v14 < v10) : (v15 = 0), v15))
    {
      v12 = v8;
      v10 = v14;
      v11 = v13;
    }

    ++v8;
  }

  while (items != v8);
  return v12;
}

- (void)reorderNextItems:(int64_t)items usingMapping:(id)mapping
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = mapping;
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];

  if (items >= 1)
  {
    v8 = parseLocation;
    memcpy(v15 - ((40 * items + 15) & 0xFFFFFFFFFFFFFFF0), &self->_inputItemInfos[parseLocation], 40 * items);
    v9 = 0;
    do
    {
      v10 = (*(v15[0] + 16))(v15[0], v9);
      v11 = &self->_inputItemInfos[v8];
      v12 = (&v15[5 * v10] - ((40 * items + 15) & 0xFFFFFFFFFFFFFFF0));
      v11->var4 = v12[4];
      v13 = *(v12 + 1);
      *&v11->var0 = *v12;
      *&v11->var2 = v13;
      ++v9;
      ++v8;
    }

    while (items != v9);
  }

  v14 = v15[0];
}

- (void)moveNextItemAtIndex:(int64_t)index toIndex:(int64_t)toIndex
{
  if (index != toIndex)
  {
    localState = [(PXExploreLayoutGenerator *)self localState];
    parseLocation = [localState parseLocation];

    v10 = parseLocation + index;
    v11 = parseLocation + toIndex;
    count = self->_count;
    if (parseLocation + index >= count)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:765 description:{@"out of bounds info fromIndex: %li, count: %li", parseLocation + index, self->_count}];

      count = self->_count;
    }

    if (v11 >= count)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:766 description:{@"out of bounds info toIndex: %li, count: %li", parseLocation + toIndex, self->_count}];
    }

    v13 = &self->_inputItemInfos[v10];
    v27 = *&v13->var0;
    v28 = *&v13->var2;
    var4 = v13->var4;
    if (toIndex <= index)
    {
      if (index > toIndex)
      {
        v21 = v10;
        do
        {
          v22 = &self->_inputItemInfos[v21];
          v23 = *&v22[-1].var2;
          *&v22->var0 = *&v22[-1].var0;
          *&v22->var2 = v23;
          v22->var4 = v22[-1].var4;
          --v10;
          --v21;
        }

        while (v10 > v11);
      }
    }

    else
    {
      v14 = 40 * (parseLocation + index) + 40;
      v15 = v10;
      do
      {
        inputItemInfos = self->_inputItemInfos;
        v17 = &inputItemInfos[v15];
        ++v10;
        v18 = inputItemInfos + v14;
        v19 = *v18;
        v20 = *(v18 + 1);
        v17->var4 = *(v18 + 4);
        *&v17->var0 = v19;
        *&v17->var2 = v20;
        v14 += 40;
        ++v15;
      }

      while (v10 < v11);
    }

    v24 = &self->_inputItemInfos[v11];
    *&v24->var0 = v27;
    *&v24->var2 = v28;
    v24->var4 = var4;
  }
}

- (void)sortNextItems:(int64_t)items withItemAtIndex:(int64_t)index having:(int64_t)having
{
  if (items <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:751 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  v9 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:items having:having keyIndex:index];
  if (v9 != index && v9 != 0x7FFFFFFFFFFFFFFFLL)
  {

    [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v9 toIndex:index];
  }
}

- (int64_t)numberOf:(unint64_t)of withinNextItems:(int64_t)items
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];

  itemsCopy = self->_count - parseLocation;
  if (itemsCopy >= items)
  {
    itemsCopy = items;
  }

  if (itemsCopy < 1)
  {
    return 0;
  }

  result = 0;
  p_var2 = &self->_inputItemInfos[parseLocation].var2;
  do
  {
    v12 = *p_var2;
    p_var2 += 5;
    if ((of & ~v12) == 0)
    {
      ++result;
    }

    --itemsCopy;
  }

  while (itemsCopy);
  return result;
}

- (BOOL)nextItems:(int64_t)items isAny:(unint64_t)any
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];

  itemsCopy = self->_count - parseLocation;
  if (itemsCopy >= items)
  {
    itemsCopy = items;
  }

  if (itemsCopy < 1)
  {
    return 0;
  }

  inputItemInfos = self->_inputItemInfos;
  if ((any & ~inputItemInfos[parseLocation].var2) == 0)
  {
    return 1;
  }

  v12 = 0;
  p_var2 = &inputItemInfos[parseLocation + 1].var2;
  while (itemsCopy - 1 != v12)
  {
    v14 = *p_var2;
    p_var2 += 5;
    ++v12;
    if ((any & ~v14) == 0)
    {
      return v12 < itemsCopy;
    }
  }

  v12 = itemsCopy;
  return v12 < itemsCopy;
}

- (BOOL)nextItems:(int64_t)items areAll:(unint64_t)all
{
  if (!items)
  {
    return 0;
  }

  itemsCopy = items;
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];

  if (parseLocation + itemsCopy > self->_count)
  {
    return 0;
  }

  if (itemsCopy < 1)
  {
    return 1;
  }

  p_var2 = &self->_inputItemInfos[parseLocation].var2;
  while (1)
  {
    v11 = *p_var2;
    p_var2 += 5;
    result = (v11 & all) == all;
    if ((v11 & all) != all)
    {
      break;
    }

    if (!--itemsCopy)
    {
      return 1;
    }
  }

  return result;
}

- (BOOL)nextInputItems:(unint64_t)items
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  parseLocation = [localState parseLocation];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__PXExploreLayoutGenerator_nextInputItems___block_invoke;
  aBlock[3] = &unk_1E77368A0;
  aBlock[4] = self;
  aBlock[5] = &v18;
  aBlock[6] = &v14;
  v6 = _Block_copy(aBlock);
  v7 = v6;
  if (items && (v6[2])(v6, items))
  {
    v12 = &v22;
    do
    {
      v8 = v12++;
    }

    while (*v8 && (v7[2](v7) & 1) != 0);
  }

  v9 = v19[3];
  if (v9 <= [localState parseLocation])
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v10 & 1;
}

uint64_t __43__PXExploreLayoutGenerator_nextInputItems___block_invoke(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  v4 = *(v3 + 24);
  v5 = *(v2 + 40);
  if ((a2 & 0x10000) == 0)
  {
    if (v4 >= v5 || (a2 & ~*(*(v2 + 56) + 40 * v4 + 16)) != 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    *(v3 + 24) = v4 + 1;
    return 1;
  }

  if (v4 >= v5)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = 0;
  *(*(a1[6] + 8) + 24) = 0;
  return v6;
}

- (void)setBuildingBlockColumnSpan:(int64_t)span rowSpan:(int64_t)rowSpan withNumberOfColumns:(int64_t)columns
{
  [(PXExploreLayoutGenerator *)self _cellSizeForNumberOfColumns:columns];
  v10 = -(self->_intercellSpacing.height - rowSpan * (v9 + self->_intercellSpacing.height));
  self->_buildingBlockSize.width = -(self->_intercellSpacing.width - span * (v8 + self->_intercellSpacing.width));
  self->_buildingBlockSize.height = v10;
}

- (int64_t)preferredRowTypeAfterRowWithType:(int64_t)type
{
  if (type > 1)
  {
    return type == 2 || type == 3;
  }

  else if (type)
  {
    if (type == 1)
    {
      localState = [(PXExploreLayoutGenerator *)self localState];
      effectiveLargeHeroDensity = [localState effectiveLargeHeroDensity];
      if (effectiveLargeHeroDensity == 1)
      {
        if ([localState numberOfConsecutiveMediumHeroRows] >= 3)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (effectiveLargeHeroDensity != 3)
        {
          if (effectiveLargeHeroDensity != 2 || [localState numberOfConsecutiveMediumHeroRows] <= 1)
          {
            goto LABEL_17;
          }

LABEL_15:
          v5 = 3;
LABEL_18:

          return v5;
        }

        if ([localState numberOfConsecutiveMediumHeroRows] > 0)
        {
          goto LABEL_15;
        }
      }

LABEL_17:
      v5 = 2;
      goto LABEL_18;
    }

    return 0;
  }

  else
  {
    return 1;
  }
}

- (void)endFullWidthRowWithType:(int64_t)type aspectRatio:(double)ratio
{
  if (self->_localNumberOfColumns == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:591 description:@"current row doesn't exists"];
  }

  self->_rowCount = self->_localNumberOfRows + self->_row;
  _PXGArrayCapacityResizeToCount();
}

- (void)addFullWidthItemWithType:(int64_t)type atRow:(int64_t)row aspectRatio:(double)ratio
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  if (self->_localNumberOfColumns == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:532 description:@"current row doesn't exists"];
  }

  parseLocation = [localState parseLocation];
  if (parseLocation >= self->_count)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:542 description:{@"out of bounds %li", self->_count}];
  }

  self->_inputItemInfos[parseLocation].var1 = parseLocation;
  PXRectGetCenter();
}

- (void)endRowWithType:(int64_t)type
{
  if (self->_localNumberOfColumns == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:493 description:@"current row doesn't exists"];
  }

  self->_rowCount = self->_localNumberOfRows + self->_row;
  _PXGArrayCapacityResizeToCount();
}

- (void)addLocalItemWithType:(int64_t)type atColumn:(int64_t)column row:(int64_t)row columnSpan:(int64_t)span rowSpan:(int64_t)rowSpan
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  if (self->_localNumberOfColumns == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:434 description:@"current row doesn't exists"];
  }

  parseLocation = [localState parseLocation];
  if (parseLocation >= self->_count)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:445 description:{@"out of bounds %li", self->_count}];
  }

  self->_inputItemInfos[parseLocation].var1 = parseLocation;
  PXRectGetCenter();
}

- (CGSize)_cellSizeForNumberOfColumns:(int64_t)columns
{
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  [metrics referenceSize];
  v7 = v6;

  columnsCopy = columns;
  v9 = (v7 + self->_intercellSpacing.width) / columns - self->_intercellSpacing.width;
  localState = [(PXExploreLayoutGenerator *)self localState];
  [localState buildingBlockAspectRatio];
  v12 = (v7 / v11 + self->_intercellSpacing.height) / columnsCopy - self->_intercellSpacing.height;

  v13 = v9;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)beginRowWithNumberOfColumns:(int64_t)columns
{
  if (self->_localNumberOfColumns != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:416 description:@"current row already exists"];
  }

  self->_localNumberOfColumns = columns;
  self->_localNumberOfRows = 0;
  [(PXExploreLayoutGenerator *)self _cellSizeForNumberOfColumns:columns];
  self->_cellSize.width = v5;
  self->_cellSize.height = v6;
}

- (BOOL)canReorderItemsAcrossRows
{
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  reorderingTolerance = [metrics reorderingTolerance];

  return reorderingTolerance == 0;
}

- (int64_t)numberOfRemainingItems
{
  count = self->_count;
  localState = [(PXExploreLayoutGenerator *)self localState];
  v4 = count - [localState parseLocation];

  return v4;
}

- (void)_prepareIfNeeded
{
  v52 = *MEMORY[0x1E69E9840];
  if (!self->_isPrepared)
  {
    self->_isPrepared = 1;
    itemCount = [(PXExploreLayoutGenerator *)self itemCount];
    self->_count = itemCount;
    if (itemCount)
    {
      v43 = a2;
      capacity = self->_capacity;
      if (itemCount > capacity)
      {
        if (capacity)
        {
          do
          {
            capacity *= 2;
            self->_capacity = capacity;
          }

          while (capacity < self->_count);
        }

        else
        {
          self->_capacity = itemCount;
        }

        _PXGArrayResize();
      }

      metrics = [(PXExploreLayoutGenerator *)self metrics];
      [metrics buildingBlockAspectRatio];
      v8 = v7;
      itemLayoutInfoBlock = [(PXExploreLayoutGenerator *)self itemLayoutInfoBlock];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __44__PXExploreLayoutGenerator__prepareIfNeeded__block_invoke;
      aBlock[3] = &unk_1E7736878;
      v45 = itemLayoutInfoBlock;
      v47 = v45;
      v48 = v8;
      v10 = _Block_copy(aBlock);
      keyItemIndex = [(PXExploreLayoutGenerator *)self keyItemIndex];
      if (keyItemIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (self->_count >= 1)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = &self->_inputItemInfos[v12];
            v10[2](buf, v10, v13);
            v15 = *buf;
            v16 = v50;
            v14->var4 = v51;
            *&v14->var0 = v15;
            *&v14->var2 = v16;
            ++v13;
            ++v12;
          }

          while (v13 < self->_count);
        }
      }

      else
      {
        v17 = keyItemIndex;
        inputItemInfos = self->_inputItemInfos;
        v10[2](buf, v10, keyItemIndex);
        v19 = *buf;
        v20 = v50;
        inputItemInfos->var4 = v51;
        *&inputItemInfos->var0 = v19;
        *&inputItemInfos->var2 = v20;
        if (v17 >= 1)
        {
          v21 = 0;
          v22 = 1;
          do
          {
            v23 = v21 + 1;
            v24 = &self->_inputItemInfos[v22];
            (v10[2])(buf, v10);
            v25 = *buf;
            v26 = v50;
            v24->var4 = v51;
            *&v24->var0 = v25;
            *&v24->var2 = v26;
            ++v22;
            v21 = v23;
          }

          while (v17 != v23);
        }

        v27 = v17 + 1;
        if (v17 + 1 < self->_count)
        {
          v28 = 40 * v17 + 40;
          do
          {
            v29 = (&self->_inputItemInfos->var0 + v28);
            v10[2](buf, v10, v27);
            v30 = *buf;
            v31 = v50;
            v29[4] = v51;
            *v29 = v30;
            *(v29 + 1) = v31;
            ++v27;
            v28 += 40;
          }

          while (v27 < self->_count);
        }
      }

      metrics2 = [(PXExploreLayoutGenerator *)self metrics];
      [metrics2 padding];
      v34 = v33;
      metrics3 = [(PXExploreLayoutGenerator *)self metrics];
      [metrics3 padding];
      self->_origin.x = v34;
      self->_origin.y = v36;

      self->_row = 0;
      self->_localNumberOfColumns = 0x7FFFFFFFFFFFFFFFLL;
      [metrics interitemSpacing];
      self->_intercellSpacing.width = v37;
      self->_intercellSpacing.height = v37;
      [metrics referenceSize];
      self->_contentSize.width = v38;
      self->_contentSize.height = 0.0;
      self->_cornerSpriteIndexes = *off_1E7721FF8;
      v39 = *off_1E7722230;
      self->_headerItemSize = *off_1E7722230;
      self->_minHeroItemsSize = v39;
      self->_minimumItemSize = v39;
      self->_buildingBlockSize = v39;
      localState = [(PXExploreLayoutGenerator *)self localState];
      [localState prepareWithMetrics:metrics];

      layoutType = [metrics layoutType];
      if (layoutType <= 2)
      {
        switch(layoutType)
        {
          case 1:
            [(PXExploreLayoutGenerator *)self parsePhonePortraitLayout];
            break;
          case 2:
            [(PXExploreLayoutGenerator *)self parsePhoneLandscapeLayout];
            break;
          case 0:
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v44 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:392 description:@"Code which should be unreachable has been reached"];

            abort();
        }
      }

      else
      {
        switch(layoutType)
        {
          case 3:
            [(PXExploreLayoutGenerator *)self parsePadPortraitLayout];
            break;
          case 4:
            [(PXExploreLayoutGenerator *)self parsePadLandscapeLayout];
            break;
          case 5:
            [(PXExploreLayoutGenerator *)self parseMacLayout];
            break;
        }
      }

      if ([(PXExploreLayoutGenerator *)self numberOfRemainingItems])
      {
        PXAssertGetLog();
      }
    }
  }
}

void __44__PXExploreLayoutGenerator__prepareIfNeeded__block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = (*(*(a1 + 32) + 16))();
  v7 = v6;
  v8 = *(a1 + 40);
  if (v8 == 0.0)
  {
    [v6 size];
    PXSizeGetAspectRatio();
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__PXExploreLayoutGenerator__prepareIfNeeded__block_invoke_2;
  aBlock[3] = &unk_1E7736850;
  aBlock[4] = &v12;
  v9 = _Block_copy(aBlock);
  v9[2](v9, 1, 1);
  v9[2](v9, 2, v8 >= 2.0);
  v9[2](v9, 4, v8 < 0.99009901);
  v9[2](v9, 8, v8 > 1.01);
  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = v13[3];
  [v7 weight];
  *(a3 + 24) = v10;
  *(a3 + 32) = v8;

  _Block_object_dispose(&v12, 8);
}

uint64_t __44__PXExploreLayoutGenerator__prepareIfNeeded__block_invoke_2(uint64_t result, uint64_t a2, int a3)
{
  v3 = a2 << 16;
  if (a3)
  {
    v3 = a2;
  }

  *(*(*(result + 32) + 8) + 24) |= v3;
  return result;
}

- (void)getGeometries:(_PXLayoutGeometry *)geometries inRange:(_NSRange)range withKind:(int64_t)kind
{
  if (!kind)
  {
    length = range.length;
    location = range.location;
    itemCount = [(PXExploreLayoutGenerator *)self itemCount];
    v11 = itemCount;
    v12 = location < itemCount || length == 0;
    if (!v12 || location + length > itemCount)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v24.location = location;
      v24.length = length;
      v23 = NSStringFromRange(v24);
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:272 description:{@"range %@ out of bounds (0..<%li)", v23, v11}];
    }

    [(PXExploreLayoutGenerator *)self _prepareIfNeeded];
    if (length)
    {
      v13 = location;
      do
      {
        v14 = &self->_outputGeometries[v13];
        v16 = *&v14->var6.origin.y;
        v15 = *&v14->var6.size.height;
        height = v14->var7.height;
        *&geometries->var5 = *&v14->var5;
        v18 = *&v14->var1.y;
        *&geometries->var0 = *&v14->var0;
        *&geometries->var1.y = v18;
        v19 = *&v14->var2.height;
        v20 = *&v14->var3.b;
        v21 = *&v14->var3.ty;
        *&geometries->var3.d = *&v14->var3.d;
        *&geometries->var3.ty = v21;
        *&geometries->var2.height = v19;
        *&geometries->var3.b = v20;
        geometries->var7.height = height;
        *&geometries->var6.origin.y = v16;
        *&geometries->var6.size.height = v15;
        geometries->var5 = 0;
        ++v13;
        ++geometries;
        --length;
      }

      while (length);
    }
  }
}

- (CGSize)buildingBlockSize
{
  [(PXExploreLayoutGenerator *)self _prepareIfNeeded];
  width = self->_buildingBlockSize.width;
  height = self->_buildingBlockSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minimumItemSize
{
  [(PXExploreLayoutGenerator *)self _prepareIfNeeded];
  width = self->_minimumItemSize.width;
  height = self->_minimumItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)minHeroItemsSize
{
  [(PXExploreLayoutGenerator *)self _prepareIfNeeded];
  width = self->_minHeroItemsSize.width;
  height = self->_minHeroItemsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)headerItemSize
{
  [(PXExploreLayoutGenerator *)self _prepareIfNeeded];
  width = self->_headerItemSize.width;
  height = self->_headerItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)size
{
  [(PXExploreLayoutGenerator *)self _prepareIfNeeded];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)estimatedSize
{
  v4 = *MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  layoutType = [metrics layoutType];

  if (layoutType <= 2)
  {
    switch(layoutType)
    {
      case 1:
        [(PXExploreLayoutGenerator *)self estimatedSizeForPhonePortrait];
        goto LABEL_10;
      case 2:
        [(PXExploreLayoutGenerator *)self estimatedSizeForPhoneLandscape];
        goto LABEL_10;
      case 0:
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXExploreLayoutGenerator.m" lineNumber:233 description:@"Code which should be unreachable has been reached"];

        abort();
    }
  }

  else
  {
    if ((layoutType - 4) < 2)
    {
      [(PXExploreLayoutGenerator *)self estimatedSizeForPadLandscape];
LABEL_10:
      v4 = v8;
      v5 = v9;
      goto LABEL_11;
    }

    if (layoutType == 3)
    {
      [(PXExploreLayoutGenerator *)self estimatedSizeForPadPortrait];
      goto LABEL_10;
    }
  }

LABEL_11:
  v10 = v4;
  v11 = v5;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = PXExploreLayoutGenerator;
  [(PXExploreLayoutGenerator *)&v3 invalidate];
  self->_isPrepared = 0;
}

- (void)dealloc
{
  free(self->_inputItemInfos);
  free(self->_outputGeometries);
  free(self->_outputItemIndexToParseLocation);
  free(self->_outputItemLocations);
  free(self->_outputNumberOfColumnsAtRow);
  v3.receiver = self;
  v3.super_class = PXExploreLayoutGenerator;
  [(PXExploreLayoutGenerator *)&v3 dealloc];
}

- (PXExploreLayoutGenerator)initWithMetrics:(id)metrics
{
  v7.receiver = self;
  v7.super_class = PXExploreLayoutGenerator;
  v3 = [(PXExploreLayoutGenerator *)&v7 initWithMetrics:metrics];
  if (v3)
  {
    v4 = objc_alloc_init(PXExploreParsingState);
    localState = v3->_localState;
    v3->_localState = v4;
  }

  return v3;
}

- (void)_parseSevenColumnShortRowWithNumberOfItems:(int64_t)items
{
  items = [(PXExploreLayoutGenerator *)self numberOfItemsInSevenColumnHeroRowForNumberOfRemainingItems:[(PXExploreLayoutGenerator *)self numberOfRemainingItems]- items];
  if (items >= 1)
  {
    v6 = items;
    localState = [(PXExploreLayoutGenerator *)self localState];
    if ([localState didMoveBestItemOutOfNextShortRow])
    {
    }

    else
    {
      canReorderItemsAcrossRows = [(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows];

      if (canReorderItemsAcrossRows)
      {
        v9 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:v6 + items having:0 keyIndex:v6 + items - 1];
        if (v9 < items)
        {
          [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v9 toIndex:items];
        }
      }
    }
  }

  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
  if (items == 7)
  {
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:1 rowSpan:1];
    selfCopy2 = self;
    v11 = 1;
    v12 = 1;
  }

  else
  {
    if (items != 6)
    {
      PXAssertGetLog();
    }

    selfCopy2 = self;
    v11 = 0;
    v12 = 2;
  }

  [(PXExploreLayoutGenerator *)selfCopy2 addLocalItemWithType:0 atColumn:v11 row:0 columnSpan:v12 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self endRowWithType:1];
}

- (void)_parseSevenColumnHeroRowWithNumberOfItems:(int64_t)items heroItemType:(int64_t)type subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options
{
  rowItemsCopy = rowItems;
  v24 = *MEMORY[0x1E69E9840];
  v10 = [(PXExploreLayoutGenerator *)self localState:items];
  if (!rowItemsCopy)
  {
    rowItemsCopy = [(PXExploreLayoutGenerator *)self numberOfItemsInSevenColumnShortRowForNumberOfRemainingItems:[(PXExploreLayoutGenerator *)self numberOfRemainingItems]- items];
  }

  if (rowItemsCopy >= 1)
  {
    if ([(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
    {
      v11 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:rowItemsCopy + items having:0 keyIndex:0];
      if (v11 >= items)
      {
        [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v11 toIndex:items - 1];
        [v10 setDidMoveBestItemOutOfNextShortRow:1];
      }
    }
  }

  if (items <= 10)
  {
    if ((items - 1) < 8)
    {
      goto LABEL_9;
    }

    if (items != 9)
    {
      if (items == 10)
      {
LABEL_9:
        [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
        v12 = 0;
        do
        {
          [PXExploreLayoutGenerator addLocalItemWithType:"addLocalItemWithType:atColumn:row:columnSpan:rowSpan:" atColumn:0 row:v12 % 7 columnSpan:? rowSpan:?];
          ++v12;
        }

        while (items != v12);
        goto LABEL_47;
      }

LABEL_43:
      PXAssertGetLog();
    }

    [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:3 rowSpan:2];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:1 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:1 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:1 columnSpan:1 rowSpan:1];
    selfCopy5 = self;
    typeCopy2 = 0;
    v16 = 6;
    v17 = 1;
    goto LABEL_45;
  }

  if (items <= 13)
  {
    if ((items - 12) >= 2)
    {
      if (items != 11)
      {
        goto LABEL_43;
      }

      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
      if (!rowItemsCopy)
      {
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:2 rowSpan:2];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __121__PXExploreLayoutGenerator_Rows___parseSevenColumnHeroRowWithNumberOfItems_heroItemType_subsequentShortRowItems_options___block_invoke;
        aBlock[3] = &unk_1E7748D18;
        aBlock[4] = self;
        v22 = _Block_copy(aBlock);
        v22[2](v22, 0);
        v22[2](v22, 1);

        goto LABEL_47;
      }

      [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:3 rowSpan:2];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:1 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:2 columnSpan:1 rowSpan:1];
    }

    else
    {
      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:2];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:1 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:1 columnSpan:1 rowSpan:1];
      if (items == 12)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:2 columnSpan:v18 rowSpan:1];
      if (items != 13)
      {
        goto LABEL_39;
      }
    }

    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:2 columnSpan:1 rowSpan:1];
LABEL_39:
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:2 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:2 columnSpan:1 rowSpan:1];
    selfCopy5 = self;
    typeCopy2 = type;
    v16 = 4;
    v17 = 1;
    v20 = 3;
LABEL_40:
    v21 = 2;
LABEL_46:
    [(PXExploreLayoutGenerator *)selfCopy5 addLocalItemWithType:typeCopy2 atColumn:v16 row:v17 columnSpan:v20 rowSpan:v21];
    goto LABEL_47;
  }

  if ((items - 14) < 2)
  {
    [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:2 rowSpan:2];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:1 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:1 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:1 columnSpan:1 rowSpan:1];
    if (items == 14)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:2 columnSpan:v19 rowSpan:1];
    if (items == 15)
    {
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:2 columnSpan:1 rowSpan:1];
    }

    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:2 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:2 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:2 columnSpan:1 rowSpan:1];
    selfCopy5 = self;
    typeCopy2 = type;
    v16 = 5;
    v17 = 1;
    v20 = 2;
    goto LABEL_40;
  }

  if ((items - 18) >= 2)
  {
    if (items != 23)
    {
      goto LABEL_43;
    }

    [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:2 rowSpan:2];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:1 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:1 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:1 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:5 row:1 columnSpan:2 rowSpan:2];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:2 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:2 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:2 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:3 row:2 columnSpan:2 rowSpan:2];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:3 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:3 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:3 columnSpan:2 rowSpan:2];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:3 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:4 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:4 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:4 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:4 columnSpan:1 rowSpan:1];
    selfCopy5 = self;
    typeCopy2 = 0;
    v16 = 6;
    v17 = 4;
    goto LABEL_45;
  }

  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:7];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:2 rowSpan:2];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:6 row:0 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:1 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:3 row:1 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:1 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:5 row:1 columnSpan:2 rowSpan:2];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:2 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:2 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:3 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:3 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:2 row:2 columnSpan:2 rowSpan:2];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:2 columnSpan:1 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:3 columnSpan:1 rowSpan:1];
  if (items == 18)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:3 columnSpan:v13 rowSpan:1];
  if (items == 19)
  {
    selfCopy5 = self;
    typeCopy2 = 0;
    v16 = 6;
    v17 = 3;
LABEL_45:
    v20 = 1;
    v21 = 1;
    goto LABEL_46;
  }

LABEL_47:
  [(PXExploreLayoutGenerator *)self endRowWithType:2];
  [v10 setLastHeroRowTag:0];
}

uint64_t __121__PXExploreLayoutGenerator_Rows___parseSevenColumnHeroRowWithNumberOfItems_heroItemType_subsequentShortRowItems_options___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addLocalItemWithType:0 atColumn:2 row:a2 columnSpan:1 rowSpan:1];
  [*(a1 + 32) addLocalItemWithType:0 atColumn:3 row:a2 columnSpan:1 rowSpan:1];
  [*(a1 + 32) addLocalItemWithType:0 atColumn:4 row:a2 columnSpan:1 rowSpan:1];
  [*(a1 + 32) addLocalItemWithType:0 atColumn:5 row:a2 columnSpan:1 rowSpan:1];
  v4 = *(a1 + 32);

  return [v4 addLocalItemWithType:0 atColumn:6 row:a2 columnSpan:1 rowSpan:1];
}

- (BOOL)parseSevenColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];
  if ((type - 2) < 2)
  {
    selfCopy2 = self;
    itemsCopy2 = items;
    v16 = 1;
    rowItemsCopy2 = rowItems;
    optionsCopy = options;
    goto LABEL_6;
  }

  if (type == 1)
  {
    [(PXExploreLayoutGenerator *)self _parseSevenColumnShortRowWithNumberOfItems:items];
    goto LABEL_8;
  }

  if (!type)
  {
    optionsCopy = options | 1;
    selfCopy2 = self;
    itemsCopy2 = items;
    v16 = 2;
    rowItemsCopy2 = rowItems;
LABEL_6:
    [(PXExploreLayoutGenerator *)selfCopy2 _parseSevenColumnHeroRowWithNumberOfItems:itemsCopy2 heroItemType:v16 subsequentShortRowItems:rowItemsCopy2 options:optionsCopy];
  }

LABEL_8:
  v18 = [localState parseLocation] > parseLocation;

  return v18;
}

- (int64_t)numberOfItemsInSevenColumnHeroRowForNumberOfRemainingItems:(int64_t)items
{
  if (items > 0x26)
  {
    return 23;
  }

  else
  {
    return qword_1A5383640[items];
  }
}

- (int64_t)numberOfItemsInSevenColumnShortRowForNumberOfRemainingItems:(int64_t)items
{
  if (items > 0x19)
  {
    return 7;
  }

  result = items;
  if (((1 << items) & 0x3224000) != 0)
  {
    return 6;
  }

  if (((1 << items) & 0x41) == 0)
  {
    return 7;
  }

  return result;
}

- (void)_parseSixColumnShortRowWithNumberOfItems:(int64_t)items
{
  v5 = [(PXExploreLayoutGenerator *)self numberOfItemsInSixColumnHeroRowForNumberOfRemainingItems:[(PXExploreLayoutGenerator *)self numberOfRemainingItems]- items rowOptions:0];
  if (v5 >= 1)
  {
    v6 = v5;
    localState = [(PXExploreLayoutGenerator *)self localState];
    if ([localState didMoveBestItemOutOfNextShortRow])
    {
    }

    else
    {
      canReorderItemsAcrossRows = [(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows];

      if (canReorderItemsAcrossRows)
      {
        v9 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:v6 + items having:0 keyIndex:v6 + items - 1];
        if (v9 < items)
        {
          [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v9 toIndex:items];
        }
      }
    }
  }

  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:6];
  if (items == 6)
  {
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
    selfCopy2 = self;
    v14 = 3;
    v15 = 1;
    goto LABEL_13;
  }

  if (items == 4)
  {
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:1];
    selfCopy2 = self;
    v14 = 2;
    v15 = 2;
LABEL_13:
    [(PXExploreLayoutGenerator *)selfCopy2 addLocalItemWithType:0 atColumn:v14 row:0 columnSpan:v15 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
    selfCopy4 = self;
    v11 = 5;
    v12 = 1;
    goto LABEL_14;
  }

  if (items != 3)
  {
    PXAssertGetLog();
  }

  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:1];
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:2 rowSpan:1];
  selfCopy4 = self;
  v11 = 4;
  v12 = 2;
LABEL_14:
  [(PXExploreLayoutGenerator *)selfCopy4 addLocalItemWithType:0 atColumn:v11 row:0 columnSpan:v12 rowSpan:1];
  [(PXExploreLayoutGenerator *)self endRowWithType:1];
}

- (void)_addThreeItemsToSixColumnRowWithHeroItemType:(int64_t)type options:(unint64_t)options rowType:(int64_t *)rowType
{
  v10 = 0;
  v69[3] = *MEMORY[0x1E69E9840];
  v11 = -1.79769313e308;
  v12 = 1.79769313e308;
  do
  {
    [(PXExploreLayoutGenerator *)self score:0 forNextItemAtIndex:v10];
    v14 = v13;
    v15 = [(PXExploreLayoutGenerator *)self attributesForNextItemAtIndex:v10];
    v16 = (v15 >> 3) & 1;
    if ((v15 & 4) != 0)
    {
      v16 = 2;
    }

    if (v14 < v12)
    {
      v12 = v14;
    }

    if (v14 >= v11)
    {
      v11 = v14;
    }

    *&v69[v10] = v14;
    v68[v10++] = v16;
  }

  while (v10 != 3);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke;
  aBlock[3] = &unk_1E77488E8;
  aBlock[4] = self;
  aBlock[5] = a2;
  v17 = _Block_copy(aBlock);
  v61 = 0;
  v62 = &v61;
  v63 = 0x3810000000;
  v64 = &unk_1A561E057;
  v66 = 0;
  v65 = xmmword_1A5383628;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v60[3] = 0x8000000000000001;
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_2;
  v50[3] = &unk_1E7748938;
  v18 = v17;
  v55 = v69;
  v56 = v12;
  v57 = v11;
  v59 = options & 1;
  optionsCopy = options;
  v51 = v18;
  v52 = v60;
  v53 = &v61;
  v54 = v68;
  v19 = _Block_copy(v50);
  localState = [(PXExploreLayoutGenerator *)self localState];
  canIgnoreNextHeroSide = [localState canIgnoreNextHeroSide];
  if (type == 2)
  {
    v22 = 0;
  }

  else
  {
    v22 = canIgnoreNextHeroSide;
  }

  metrics = [(PXExploreLayoutGenerator *)self metrics];
  v24 = [metrics layoutSubtype] != 1;

  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v44 = __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_4;
  v45 = &unk_1E7748960;
  v25 = localState;
  v46 = v25;
  v48 = v22;
  v49 = v24;
  v26 = v19;
  v47 = v26;
  v27 = v43;
  __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_4(v27, 0);
  v44(v27, 1);

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_5;
  v40[3] = &unk_1E7748988;
  v28 = v18;
  v41 = v28;
  v42 = &v61;
  [(PXExploreLayoutGenerator *)self reorderNextItems:3 usingMapping:v40];
  v29 = v62;
  v30 = v62[5];
  if (v30 <= 1)
  {
    if (v30)
    {
      if (v30 != 1)
      {
        goto LABEL_32;
      }

      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:12];
      v29 = v62;
      v31 = v62[4];
      if (v31 == 1)
      {
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:4 rowSpan:3];
        v34 = 4;
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:3 columnSpan:4 rowSpan:3];
        v33 = 0;
        v35 = 6;
        v32 = 8;
      }

      else
      {
        if (v31)
        {
          goto LABEL_32;
        }

        [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:8 rowSpan:6];
        v32 = 4;
        v33 = 3;
        v34 = 8;
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:8 row:0 columnSpan:4 rowSpan:3];
        type = 0;
        v35 = 3;
      }

      goto LABEL_31;
    }

    [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:6];
    v29 = v62;
    v36 = v62[4];
    if (v36 != 1)
    {
      if (v36)
      {
        goto LABEL_32;
      }

      [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:4 rowSpan:3];
      v32 = 2;
      v33 = 1;
      v34 = 4;
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:2 rowSpan:1];
      type = 0;
      v35 = 2;
      goto LABEL_31;
    }

    v38 = 2;
    v39 = 1;
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:1];
    goto LABEL_30;
  }

  if (v30 != 2)
  {
    if (v30 != 3)
    {
      goto LABEL_32;
    }

    [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:6];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:3];
    v35 = 3;
    v32 = 2;
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:2 rowSpan:3];
    type = 0;
    v33 = 0;
    v34 = 4;
    goto LABEL_31;
  }

  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:6];
  v29 = v62;
  v37 = v62[4];
  if (v37 == 1)
  {
    v39 = 2;
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:2];
    v38 = 1;
LABEL_30:
    v34 = 2;
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:v39 columnSpan:2 rowSpan:v38];
    v33 = 0;
    v35 = 3;
    v32 = 4;
    goto LABEL_31;
  }

  if (v37)
  {
    goto LABEL_32;
  }

  [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:4 rowSpan:3];
  v33 = 2;
  v34 = 4;
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:2 rowSpan:2];
  type = 0;
  v35 = 1;
  v32 = 2;
LABEL_31:
  [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:v34 row:v33 columnSpan:v32 rowSpan:v35];
  v29 = v62;
LABEL_32:
  [v25 setNextHeroSide:v29[4]];
  if (rowType)
  {
    *rowType = v62[5];
  }

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(&v61, 8);
}

void __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = 0;
  v47[0] = &v46;
  v47[1] = 0x2020000000;
  v47[2] = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v36 = 0;
  v37[0] = &v36;
  v37[1] = 0x2020000000;
  v37[2] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_3;
  aBlock[3] = &unk_1E7748910;
  v27 = *(a1 + 32);
  v28 = &v42;
  v8 = *(a1 + 72);
  v33 = *(a1 + 56);
  v34 = v8;
  v35 = *(a1 + 96);
  v29 = &v38;
  v30 = &v46;
  v31 = &v36;
  v32 = a4;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v11 = *(v9 + 2);
        if (a2)
        {
          v11(v9, 0, 0, 1);
          v10[2](v10, 1, 0, 1);
          v10[2](v10, 2, 0, 2);
          v12 = 0;
          v13 = 1;
        }

        else
        {
          v11(v9, 0, 0, 2);
          v10[2](v10, 1, 0, 1);
          v12 = 1;
          v13 = 2;
          v10[2](v10, 2, 0, 1);
        }

        if (*(*(a1 + 56) + 8 * v12) == *(*(a1 + 56) + 8 * v13))
        {
          v14 = v37;
          v15 = 2;
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    v16 = *(v9 + 2);
    if (a2)
    {
      v16(v9, 0, 1, 0);
      v10[2](v10, 1, 0, 1);
LABEL_14:
      v10[2](v10, 2, 0, 2);
      goto LABEL_22;
    }

    v16(v9, 0, 0, 2);
    v18 = 1;
    v10[2](v10, 1, 1, 0);
    v19 = 0;
    goto LABEL_21;
  }

  if (a3 == 2)
  {
    v17 = *(v9 + 2);
    if (a2)
    {
      v17(v9, 0, 0, 1);
      v10[2](v10, 1, 1, 0);
      goto LABEL_14;
    }

    v17(v9, 0, 0, 2);
    v19 = 1;
    v10[2](v10, 1, 0, 1);
    v18 = 0;
LABEL_21:
    v10[2](v10, 2, v19, v18);
    a2 = 0;
    goto LABEL_22;
  }

  if (a3 == 3)
  {
    (*(v9 + 2))(v9, 0, 2, 1);
    v10[2](v10, 1, 2, 1);
    v10[2](v10, 2, 2, 1);
    a2 = PXFlippedExploreHeroSide(a2);
    if (*(a1 + 96) == 1)
    {
      v14 = v47;
      v15 = 1;
LABEL_18:
      *(*v14 + 24) += v15;
    }
  }

LABEL_22:
  v20 = *(a1 + 88);
  v21 = (v20 >> 1) & 1;
  if (a3 == 2)
  {
    LODWORD(v21) = 0;
  }

  v22 = (v20 >> 2) & 1;
  if (!a3)
  {
    LODWORD(v22) = 0;
  }

  v23 = (a4 == 0) | (10 * (((v22 | v21 | (10 * (*(v37[0] + 24) + 10 * (v39[3] + 10 * (10 * (3 - *(v47[0] + 24)) - v43[3]))))) + 3000) ^ 1));
  v24 = *(*(a1 + 40) + 8);
  if (v23 > *(v24 + 24))
  {
    *(v24 + 24) = v23;
    v25 = *(*(a1 + 48) + 8);
    v25[4] = a2;
    v25[5] = a3;
    v25[6] = a4;
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
}

uint64_t __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) nextHeroSide];
  if (result == a2 || *(a1 + 48) == 1)
  {
    for (i = 0; i != 6; ++i)
    {
      if (!i || *(a1 + 49) == 1)
      {
        for (j = 0; j != 4; ++j)
        {
          if (j == 3)
          {
            result = [*(a1 + 32) lastHeroRowTag];
            if (result == 3)
            {
              break;
            }
          }

          result = (*(*(a1 + 40) + 16))();
        }
      }
    }
  }

  return result;
}

uint64_t __95__PXExploreLayoutGenerator_Rows___addThreeItemsToSixColumnRowWithHeroItemType_options_rowType___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (a3 == 1)
  {
    if (*(*(a1 + 80) + 8 * result) != 1)
    {
LABEL_4:
      ++*(*(*(a1 + 40) + 8) + 24);
    }
  }

  else if (a3 == 2 && *(*(a1 + 80) + 8 * result) != 2)
  {
    goto LABEL_4;
  }

  if (a4 != 2)
  {
    if (a4 != 1 || *(*(a1 + 88) + 8 * result) <= *(a1 + 96))
    {
      goto LABEL_20;
    }

    v9 = 48;
    goto LABEL_19;
  }

  v10 = *(*(a1 + 88) + 8 * result);
  if (v10 > *(a1 + 96))
  {
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 24);
    if (v10 == *(a1 + 104))
    {
      v13 = v12 + 3;
    }

    else
    {
      v13 = v12 + 1;
    }

    *(v11 + 24) = v13;
  }

  if (*(a1 + 112) == 1 && result != a2)
  {
    v9 = 56;
LABEL_19:
    ++*(*(*(a1 + v9) + 8) + 24);
  }

LABEL_20:
  if (*(*(a1 + 80) + 8 * result) == a3)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
  }

  return result;
}

- (void)_parseSixColumnHeroRowWithNumberOfItems:(int64_t)items heroItemType:(int64_t)type subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options
{
  v29 = *MEMORY[0x1E69E9840];
  localState = [(PXExploreLayoutGenerator *)self localState];
  v28 = 0;
  nextHeroSide = [localState nextHeroSide];
  if (!rowItems)
  {
    rowItems = [(PXExploreLayoutGenerator *)self numberOfItemsInSixColumnShortRowForNumberOfRemainingItems:[(PXExploreLayoutGenerator *)self numberOfRemainingItems]- items];
  }

  if (rowItems >= 1)
  {
    if ([(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
    {
      v13 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:rowItems + items having:0 keyIndex:0];
      if (v13 >= items)
      {
        [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v13 toIndex:items - 1];
        [localState setDidMoveBestItemOutOfNextShortRow:1];
      }
    }
  }

  if (items <= 2)
  {
    if (items == 1)
    {
      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:6];
      selfCopy8 = self;
      typeCopy2 = type;
      v18 = 0;
      v19 = 0;
      v20 = 6;
LABEL_50:
      v21 = 3;
      goto LABEL_51;
    }

    if (items != 2)
    {
LABEL_27:
      PXAssertGetLog();
    }

    if (type == 2)
    {
      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:2];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:2 atColumn:0 row:0 columnSpan:1 rowSpan:1];
      selfCopy8 = self;
      typeCopy2 = 1;
      v18 = 1;
      v19 = 0;
LABEL_25:
      v20 = 1;
      v21 = 1;
      goto LABEL_51;
    }

    [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:6];
    if (nextHeroSide != 1)
    {
      if (nextHeroSide)
      {
        goto LABEL_52;
      }

      if ((options & 1) == 0)
      {
        [(PXExploreLayoutGenerator *)self sortNextItems:2 withItemAtIndex:0 having:0];
      }

      [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:4 rowSpan:3];
      selfCopy8 = self;
      typeCopy2 = 0;
      v18 = 4;
      v19 = 0;
      v20 = 2;
      goto LABEL_50;
    }

    if ((options & 1) == 0)
    {
      [(PXExploreLayoutGenerator *)self sortNextItems:2 withItemAtIndex:1 having:0];
    }

    selfCopy9 = self;
    v23 = 0;
    v24 = 0;
    v25 = 2;
    v26 = 3;
LABEL_49:
    [(PXExploreLayoutGenerator *)selfCopy9 addLocalItemWithType:0 atColumn:v23 row:v24 columnSpan:v25 rowSpan:v26];
    selfCopy8 = self;
    typeCopy2 = type;
    v18 = 2;
    v19 = 0;
    v20 = 4;
    goto LABEL_50;
  }

  if (items == 3)
  {
    [(PXExploreLayoutGenerator *)self _addThreeItemsToSixColumnRowWithHeroItemType:type options:options rowType:&v28];
    goto LABEL_52;
  }

  if (items == 4)
  {
    [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:6];
    if ((options & 4) != 0)
    {
      if (nextHeroSide != 1)
      {
        if (nextHeroSide)
        {
          goto LABEL_52;
        }

        if ((options & 1) == 0)
        {
          [(PXExploreLayoutGenerator *)self sortNextItems:4 withItemAtIndex:0 having:0];
        }

        [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:4 rowSpan:3];
        [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:2 having:0];
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:1 rowSpan:1];
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:5 row:0 columnSpan:1 rowSpan:1];
        selfCopy8 = self;
        typeCopy2 = 0;
        v18 = 4;
        v19 = 1;
        v20 = 2;
        v21 = 2;
LABEL_51:
        [(PXExploreLayoutGenerator *)selfCopy8 addLocalItemWithType:typeCopy2 atColumn:v18 row:v19 columnSpan:v20 rowSpan:v21];
        goto LABEL_52;
      }

      if ((options & 1) == 0)
      {
        [(PXExploreLayoutGenerator *)self sortNextItems:4 withItemAtIndex:3 having:0];
      }

      [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:2 having:0];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:0 columnSpan:1 rowSpan:1];
      selfCopy9 = self;
      v23 = 0;
      v24 = 1;
      v25 = 2;
      v26 = 2;
    }

    else
    {
      if (nextHeroSide != 1)
      {
        if (nextHeroSide)
        {
          goto LABEL_52;
        }

        if ((options & 1) == 0)
        {
          [(PXExploreLayoutGenerator *)self sortNextItems:4 withItemAtIndex:0 having:0];
        }

        [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:4 rowSpan:3];
        [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:0 having:0];
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:2 rowSpan:2];
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:2 columnSpan:1 rowSpan:1];
        selfCopy8 = self;
        typeCopy2 = 0;
        v18 = 5;
        v19 = 2;
        goto LABEL_25;
      }

      if ((options & 1) == 0)
      {
        [(PXExploreLayoutGenerator *)self sortNextItems:4 withItemAtIndex:3 having:0];
      }

      [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:0 having:0];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:2];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:2 columnSpan:1 rowSpan:1];
      selfCopy9 = self;
      v23 = 1;
      v24 = 2;
      v25 = 1;
      v26 = 1;
    }

    goto LABEL_49;
  }

  if (items != 5)
  {
    goto LABEL_27;
  }

  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:12];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __119__PXExploreLayoutGenerator_Rows___parseSixColumnHeroRowWithNumberOfItems_heroItemType_subsequentShortRowItems_options___block_invoke;
  v27[3] = &unk_1E7748D18;
  v27[4] = self;
  v14 = _Block_copy(v27);
  v15 = v14;
  if (nextHeroSide == 1)
  {
    (*(v14 + 2))(v14, 0);
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:4 row:0 columnSpan:8 rowSpan:6];
  }

  else if (!nextHeroSide)
  {
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:type atColumn:0 row:0 columnSpan:8 rowSpan:6];
    v15[2](v15, 8);
  }

LABEL_52:
  [(PXExploreLayoutGenerator *)self endRowWithType:2];
  [localState setLastHeroRowTag:v28];
}

uint64_t __119__PXExploreLayoutGenerator_Rows___parseSixColumnHeroRowWithNumberOfItems_heroItemType_subsequentShortRowItems_options___block_invoke(uint64_t a1, uint64_t a2)
{
  if (([*(a1 + 32) nextItems:4 isAny:8] & 1) == 0 && objc_msgSend(*(a1 + 32), "numberOf:withinNextItems:", 4, 4) >= 1)
  {
    [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 row:0 columnSpan:2 rowSpan:3];
    [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 + 2 row:0 columnSpan:2 rowSpan:3];
    [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 row:3 columnSpan:2 rowSpan:3];
    v4 = *(a1 + 32);
    v5 = a2 + 2;
    v6 = 3;
    v7 = 3;
    goto LABEL_10;
  }

  if ([*(a1 + 32) numberOf:8 withinNextItems:4] == 1 && objc_msgSend(*(a1 + 32), "numberOf:withinNextItems:", 4, 4) >= 2)
  {
    [*(a1 + 32) sortNextItems:4 withItemAtIndex:0 having:1];
    v8 = *(a1 + 32);
    if (a2)
    {
      [v8 addLocalItemWithType:0 atColumn:a2 row:0 columnSpan:4 rowSpan:2];
      [*(a1 + 32) sortNextItems:3 withItemAtIndex:2 having:2];
      [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 row:2 columnSpan:2 rowSpan:2];
      [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 row:4 columnSpan:2 rowSpan:2];
      v4 = *(a1 + 32);
      v5 = a2 + 2;
      v6 = 2;
      v7 = 4;
      goto LABEL_10;
    }

    [v8 addLocalItemWithType:0 atColumn:0 row:0 columnSpan:4 rowSpan:2];
    [*(a1 + 32) sortNextItems:3 withItemAtIndex:0 having:2];
    [*(a1 + 32) addLocalItemWithType:0 atColumn:0 row:2 columnSpan:2 rowSpan:4];
    [*(a1 + 32) addLocalItemWithType:0 atColumn:2 row:2 columnSpan:2 rowSpan:2];
    v4 = *(a1 + 32);
    v5 = 2;
  }

  else
  {
    [*(a1 + 32) sortNextItems:4 withItemAtIndex:0 having:1];
    [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 row:0 columnSpan:4 rowSpan:2];
    [*(a1 + 32) sortNextItems:3 withItemAtIndex:1 having:2];
    [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 row:2 columnSpan:4 rowSpan:2];
    [*(a1 + 32) addLocalItemWithType:0 atColumn:a2 row:4 columnSpan:2 rowSpan:2];
    v4 = *(a1 + 32);
    v5 = a2 + 2;
  }

  v6 = 4;
  v7 = 2;
LABEL_10:

  return [v4 addLocalItemWithType:0 atColumn:v5 row:v6 columnSpan:2 rowSpan:v7];
}

- (BOOL)parseSixColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items subsequentShortRowItems:(int64_t)rowItems options:(unint64_t)options
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];
  if ((type - 2) < 2)
  {
    selfCopy2 = self;
    itemsCopy2 = items;
    v16 = 1;
    rowItemsCopy2 = rowItems;
    optionsCopy = options;
    goto LABEL_6;
  }

  if (type == 1)
  {
    [(PXExploreLayoutGenerator *)self _parseSixColumnShortRowWithNumberOfItems:items];
    goto LABEL_8;
  }

  if (!type)
  {
    optionsCopy = options | 1;
    selfCopy2 = self;
    itemsCopy2 = items;
    v16 = 2;
    rowItemsCopy2 = rowItems;
LABEL_6:
    [(PXExploreLayoutGenerator *)selfCopy2 _parseSixColumnHeroRowWithNumberOfItems:itemsCopy2 heroItemType:v16 subsequentShortRowItems:rowItemsCopy2 options:optionsCopy];
  }

LABEL_8:
  v18 = [localState parseLocation] > parseLocation;

  return v18;
}

- (int64_t)numberOfItemsInSixColumnHeroRowForNumberOfRemainingItems:(int64_t)items rowOptions:(unint64_t *)options
{
  itemsCopy = items;
  switch(items)
  {
    case 0:
      goto LABEL_9;
    case 1:
    case 5:
      itemsCopy = 0;
LABEL_9:
      if (options)
      {
        goto LABEL_10;
      }

      return items;
    case 2:
      PXAssertGetLog();
    case 4:
    case 7:
    case 8:
    case 11:
    case 14:
    case 17:
      itemsCopy = 2;
      items = 4;
      if (!options)
      {
        return items;
      }

      goto LABEL_10;
    case 10:
    case 23:
    case 26:
    case 28:
      items = 4;
      itemsCopy = 4;
      if (!options)
      {
        return items;
      }

      goto LABEL_10;
    default:
      itemsCopy = 0;
      items = 3;
      if (!options)
      {
        return items;
      }

LABEL_10:
      *options = itemsCopy;
      return items;
  }
}

- (int64_t)numberOfItemsInSixColumnShortRowForNumberOfRemainingItems:(int64_t)items
{
  v5 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  switch(items)
  {
    case 0:
    case 4:
      return itemsCopy;
    case 1:
    case 2:
      PXAssertGetLog();
    case 3:
    case 7:
      itemsCopy = 3;
      break;
    case 5:
      PXAssertGetLog();
    case 8:
    case 11:
      PXAssertGetLog();
    case 14:
      PXAssertGetLog();
    case 16:
    case 20:
    case 23:
    case 25:
      PXAssertGetLog();
    default:
      itemsCopy = 6;
      break;
  }

  return itemsCopy;
}

- (BOOL)_isShortRowNextFollowedByLargeHero
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  v4 = [localState nextRowType] == 1 && -[PXExploreLayoutGenerator preferredRowTypeAfterRowWithType:](self, "preferredRowTypeAfterRowWithType:", objc_msgSend(localState, "nextRowType")) == 3;

  return v4;
}

- (BOOL)parseFourColumnGroupWithShortRowFollowedByLargeHero
{
  if (![(PXExploreLayoutGenerator *)self _isShortRowNextFollowedByLargeHero])
  {
    return 0;
  }

  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  v4 = numberOfRemainingItems <= 8 ? 0 : 9;
  v5 = numberOfRemainingItems + ~v4;
  if (v5 < 9 && ((0x113u >> v5) & 1) != 0)
  {
    return 0;
  }

  if (![PXExploreLayoutGenerator prepareNextItems:"prepareNextItems:withLargeHeroIndex:" withLargeHeroIndex:?])
  {
    return 0;
  }

  v6 = 1;
  [(PXExploreLayoutGenerator *)self parseFourColumnRowWithType:1 numberOfItems:4];
  [(PXExploreLayoutGenerator *)self parseFourColumnRowWithType:3 numberOfItems:1];
  return v6;
}

- (BOOL)parseThreeColumnGroupWithShortRowFollowedByLargeHero
{
  if (![(PXExploreLayoutGenerator *)self _isShortRowNextFollowedByLargeHero])
  {
    return 0;
  }

  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  v4 = 7;
  if (numberOfRemainingItems <= 6)
  {
    v4 = 0;
  }

  v5 = 3;
  if (numberOfRemainingItems <= 6)
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (numberOfRemainingItems == 8)
  {
    v4 = 6;
    v5 = 3;
  }

  v6 = numberOfRemainingItems == 6 ? 6 : v4;
  v7 = numberOfRemainingItems == 6 ? 3 : v5;
  if ([(PXExploreLayoutGenerator *)self nextItems:v6 isAny:2]|| ![(PXExploreLayoutGenerator *)self prepareNextItems:v6 withLargeHeroIndex:v7])
  {
    return 0;
  }

  v8 = 1;
  [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:1 numberOfItems:3];
  [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:3 numberOfItems:1];
  return v8;
}

- (BOOL)parseThreeColumnGroupWithFiveItems
{
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  if (numberOfRemainingItems < 5)
  {
    return numberOfRemainingItems > 4;
  }

  v4 = 0;
  v5 = 4;
  v6 = 1.79769313e308;
  v7 = -1.79769313e308;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    [(PXExploreLayoutGenerator *)self score:0 forNextItemAtIndex:v5];
    v11 = v10;
    v12 = [(PXExploreLayoutGenerator *)self attributesForNextItemAtIndex:v5];
    if ((v12 & 8) != 0)
    {
      v13 = v5;
    }

    else
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v12 & 8) != 0)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v5;
    }

    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = v8;
    }

    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = v9;
    }

    if (v11 != v7)
    {
      v14 = v9;
      v13 = v8;
    }

    if ((v12 & 8) != 0)
    {
      v15 = v5;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if ((v12 & 8) != 0)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v5;
    }

    if (v11 > v7)
    {
      v9 = v16;
    }

    else
    {
      v9 = v14;
    }

    if (v11 > v7)
    {
      v8 = v15;
    }

    else
    {
      v8 = v13;
    }

    if (v11 > v7)
    {
      v7 = v11;
    }

    if (v6 >= v11)
    {
      v6 = v11;
    }

    if ((v12 & 4) != 0)
    {
      if (!v4)
      {
        v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
      }

      [v4 addIndex:v5];
    }

    --v5;
  }

  while (v5 != -1);
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];
  if (v6 == v7 || ![(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
  {
    goto LABEL_50;
  }

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v8 <= 2)
    {
      [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v8 toIndex:3];
    }

LABEL_50:
    [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:1 numberOfItems:3];
    [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:2 numberOfItems:2];
    goto LABEL_51;
  }

  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [v4 mutableCopy];
    [v19 removeIndex:v9];
    if ([v19 count])
    {
      lastIndex = [v19 lastIndex];
      if (v9 <= lastIndex)
      {
        v21 = lastIndex;
      }

      else
      {
        v21 = v9;
      }

      if (v9 >= lastIndex)
      {
        v22 = lastIndex;
      }

      else
      {
        v22 = v9;
      }

      [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v21 toIndex:4];
      [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v22 toIndex:3];
      [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:1 numberOfItems:3];
      selfCopy2 = self;
      v24 = 2;
    }

    else
    {
      [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v9 toIndex:2];
      v26 = 0;
      v27 = 0x7FFFFFFFFFFFFFFFLL;
      v28 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        if (v26 != 2)
        {
          v29 = [(PXExploreLayoutGenerator *)self attributesForNextItemAtIndex:v26];
          v30 = v28 == 0x7FFFFFFFFFFFFFFFLL ? v26 : v28;
          if ((v29 & 8) != 0)
          {
            v28 = v30;
            v27 = v26;
          }
        }

        ++v26;
      }

      while (v26 != 5);
      if (v28 == 0x7FFFFFFFFFFFFFFFLL || v27 == v28)
      {
        [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:2 toIndex:v9];
        goto LABEL_74;
      }

      if (v28 > 2)
      {
        [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v28 toIndex:1];
      }

      if (v27 < 2)
      {
        [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v27 toIndex:3];
      }

      [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:1 numberOfItems:2];
      [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:3 numberOfItems:1];
      selfCopy2 = self;
      v24 = 1;
    }

    [(PXExploreLayoutGenerator *)selfCopy2 parseThreeColumnRowWithType:v24 numberOfItems:2];
LABEL_74:
  }

LABEL_51:
  if ([localState parseLocation] == parseLocation)
  {
    if ([(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows]&& v9 <= 2)
    {
      [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v9 toIndex:3];
    }

    [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:1 numberOfItems:3];
    [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:2 numberOfItems:2];
  }

  return numberOfRemainingItems > 4;
}

- (BOOL)parseThreeColumnGroupWithThreeItemsFollowedByOneItemAllowingLargeHeroAtEnd:(BOOL)end
{
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  if (numberOfRemainingItems >= 4)
  {
    canReorderItemsAcrossRows = [(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows];
    if (numberOfRemainingItems != 4 || end)
    {
      if (canReorderItemsAcrossRows)
      {
        if (numberOfRemainingItems < 7 || (v10 = 7, [(PXExploreLayoutGenerator *)self nextItems:7 isAny:2]))
        {
          v10 = 4;
        }

        [(PXExploreLayoutGenerator *)self sortNextItems:v10 withItemAtIndex:3 having:0];
      }

      [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:1 numberOfItems:3];
      selfCopy2 = self;
      v8 = 3;
      v9 = 1;
    }

    else
    {
      if (canReorderItemsAcrossRows)
      {
        [(PXExploreLayoutGenerator *)self sortNextItems:4 withItemAtIndex:0 having:0];
      }

      [(PXExploreLayoutGenerator *)self parseThreeColumnRowWithType:3 numberOfItems:1];
      selfCopy2 = self;
      v8 = 1;
      v9 = 3;
    }

    [(PXExploreLayoutGenerator *)selfCopy2 parseThreeColumnRowWithType:v8 numberOfItems:v9];
  }

  return numberOfRemainingItems > 3;
}

- (void)_parseFourColumnHeroRowWithType:(int64_t)type heroItemType:(int64_t)itemType numberOfItems:(int64_t)items
{
  v36 = *MEMORY[0x1E69E9840];
  localState = [(PXExploreLayoutGenerator *)self localState];
  nextHeroSide = [localState nextHeroSide];

  v11 = 3;
  v12 = 16;
  if (nextHeroSide)
  {
    v12 = 0;
    v11 = 0;
  }

  if (nextHeroSide == 1)
  {
    v13 = items - 1;
  }

  else
  {
    v13 = 0;
  }

  if (nextHeroSide == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  if (nextHeroSide == 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11;
  }

  v16 = nextHeroSide == 1;
  if (items <= 3)
  {
    switch(items)
    {
      case 1:
        [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:4];
        selfCopy9 = self;
        itemTypeCopy = itemType;
        v22 = 0;
        v23 = 0;
        v24 = 4;
        v25 = 3;
        break;
      case 2:
        if (!type)
        {
          [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:4];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:itemType atColumn:0 row:0 columnSpan:4 rowSpan:3];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:1 atColumn:0 row:3 columnSpan:4 rowSpan:3];
          selfCopy7 = self;
          typeCopy = 0;
LABEL_49:

          [(PXExploreLayoutGenerator *)selfCopy7 endRowWithType:typeCopy];
          return;
        }

        localState2 = [(PXExploreLayoutGenerator *)self localState];
        numberOfColumnsOverride = [localState2 numberOfColumnsOverride];

        if (numberOfColumnsOverride == 3)
        {
          [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:24];
          [(PXExploreLayoutGenerator *)self sortNextItems:2 withItemAtIndex:v13 having:0];
          [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v13 toIndex:0];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:itemType atColumn:8 * v16 row:0 columnSpan:16 rowSpan:12];
          selfCopy9 = self;
          itemTypeCopy = 0;
          v22 = v14;
          v23 = 0;
          v24 = 8;
          v25 = 12;
        }

        else
        {
          [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:8];
          [(PXExploreLayoutGenerator *)self sortNextItems:2 withItemAtIndex:v13 having:0];
          [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v13 toIndex:0];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:itemType atColumn:2 * v16 row:0 columnSpan:6 rowSpan:4];
          v22 = 2 * v15;
          selfCopy9 = self;
          itemTypeCopy = 0;
          v23 = 0;
          v24 = 2;
          v25 = 4;
        }

        break;
      case 3:
        localState3 = [(PXExploreLayoutGenerator *)self localState];
        numberOfColumnsOverride2 = [localState3 numberOfColumnsOverride];

        if (numberOfColumnsOverride2 == 3)
        {
          [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:24];
          if (type)
          {
            [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:v13 having:0];
            v19 = 6;
          }

          else
          {
            v19 = 9;
          }

          [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v13 toIndex:0];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:itemType atColumn:8 * v16 row:0 columnSpan:16 rowSpan:2 * v19];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:v14 row:0 columnSpan:8 rowSpan:v19];
          selfCopy9 = self;
          itemTypeCopy = 0;
          v22 = v14;
          v23 = v19;
          v24 = 8;
          v25 = v19;
        }

        else
        {
          [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:8];
          if (type)
          {
            [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:v13 having:0];
            v31 = 2;
          }

          else
          {
            v31 = 3;
          }

          [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v13 toIndex:0];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:itemType atColumn:2 * v16 row:0 columnSpan:6 rowSpan:2 * v31];
          [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 * v15 row:0 columnSpan:2 rowSpan:v31];
          selfCopy9 = self;
          itemTypeCopy = 0;
          v22 = 2 * v15;
          v23 = v31;
          v24 = 2;
          v25 = v31;
        }

        break;
      default:
        goto LABEL_30;
    }

LABEL_48:
    [(PXExploreLayoutGenerator *)selfCopy9 addLocalItemWithType:itemTypeCopy atColumn:v22 row:v23 columnSpan:v24 rowSpan:v25];
    selfCopy7 = self;
    typeCopy = type;
    goto LABEL_49;
  }

  if (items == 4)
  {
    localState4 = [(PXExploreLayoutGenerator *)self localState];
    numberOfColumnsOverride3 = [localState4 numberOfColumnsOverride];

    if (numberOfColumnsOverride3 == 3)
    {
      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:24];
      if (type)
      {
        [(PXExploreLayoutGenerator *)self sortNextItems:4 withItemAtIndex:v13 having:0];
      }

      [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v13 toIndex:0];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:itemType atColumn:8 * v16 row:0 columnSpan:16 rowSpan:18];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:v14 row:0 columnSpan:8 rowSpan:6];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:v14 row:6 columnSpan:8 rowSpan:6];
      selfCopy9 = self;
      itemTypeCopy = 0;
      v22 = v14;
      v23 = 12;
      v24 = 8;
      v25 = 6;
    }

    else
    {
      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:4];
      if (type)
      {
        [(PXExploreLayoutGenerator *)self sortNextItems:4 withItemAtIndex:v13 having:0];
      }

      [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v13 toIndex:0];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:itemType atColumn:v16 row:0 columnSpan:3 rowSpan:3];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:v15 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:v15 row:1 columnSpan:1 rowSpan:1];
      selfCopy9 = self;
      itemTypeCopy = 0;
      v22 = v15;
      v23 = 2;
      v24 = 1;
      v25 = 1;
    }

    goto LABEL_48;
  }

  if (items == 5)
  {
    PXAssertGetLog();
  }

  if (items != 6)
  {
LABEL_30:
    v28 = PLCuratedLibraryGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v34 = 134217984;
      itemsCopy = items;
      _os_log_impl(&dword_1A3C1C000, v28, OS_LOG_TYPE_ERROR, "four-column layout shouldn't have to parse a hero row with %li items", &v34, 0xCu);
    }

    [(PXExploreLayoutGenerator *)self _parseFourColumnHeroRowWithType:type heroItemType:itemType numberOfItems:3];
    return;
  }

  [(PXExploreLayoutGenerator *)self _parseFourColumnHeroRowWithType:type heroItemType:itemType numberOfItems:3];

  [(PXExploreLayoutGenerator *)self _parseFourColumnHeroRowWithType:type heroItemType:itemType numberOfItems:3];
}

- (int64_t)numberOfItemsInFourColumnMediumHeroRowForNumberOfRemainingItems:(int64_t)items
{
  if (items < 1)
  {
    return 0;
  }

  switch(items)
  {
    case 1:
    case 2:
      return items;
    case 4:
    case 8:
    case 12:
    case 16:
      items = 4;
      break;
    case 5:
    case 9:
      items = 5;
      break;
    case 10:
      localState = [(PXExploreLayoutGenerator *)self localState];
      numberOfColumnsOverride = [localState numberOfColumnsOverride];

      if (numberOfColumnsOverride == 3)
      {
        items = 4;
      }

      else
      {
        items = 3;
      }

      break;
    default:
      items = 3;
      break;
  }

  return items;
}

- (void)_parseFourColumnShortRowWithNumberOfItems:(int64_t)items
{
  items = [(PXExploreLayoutGenerator *)self numberOfItemsInFourColumnMediumHeroRowForNumberOfRemainingItems:[(PXExploreLayoutGenerator *)self numberOfRemainingItems]- items];
  if (items >= 1)
  {
    v6 = items;
    if ([(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
    {
      v7 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:v6 + items having:0 keyIndex:v6 + items - 1];
      if (v7 < items)
      {
        [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v7 toIndex:items];
        localState = [(PXExploreLayoutGenerator *)self localState];
        [localState setDidMoveBestItemOutOfPreviousShortRowIntoHeroRow:1];
      }
    }
  }

  switch(items)
  {
    case 3:
      localState2 = [(PXExploreLayoutGenerator *)self localState];
      numberOfColumnsOverride = [localState2 numberOfColumnsOverride];

      if (numberOfColumnsOverride == 3)
      {
        [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:12];
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:4 rowSpan:3];
        [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:4 row:0 columnSpan:4 rowSpan:3];
        selfCopy2 = self;
        v14 = 8;
        v15 = 4;
        v16 = 3;
LABEL_18:
        [(PXExploreLayoutGenerator *)selfCopy2 addLocalItemWithType:0 atColumn:v14 row:0 columnSpan:v15 rowSpan:v16];

        [(PXExploreLayoutGenerator *)self endRowWithType:1];
        return;
      }

      [(PXExploreLayoutGenerator *)self parseFourColumnRowWithType:2 numberOfItems:3];
      break;
    case 2:
      v10 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v17 = 0;
        _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "four-column layout shouldn't contain any short row with 2 items", v17, 2u);
      }

      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:4];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:2];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:2 rowSpan:2];
      [(PXExploreLayoutGenerator *)self endRowWithType:1];
      break;
    case 1:
      v9 = PLCuratedLibraryGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_ERROR, "four-column layout shouldn't contain any short row with 1 item", buf, 2u);
      }

      [(PXExploreLayoutGenerator *)self parseFourColumnRowWithType:3 numberOfItems:1];
      return;
    default:
      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:4];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:1 row:0 columnSpan:1 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
      selfCopy2 = self;
      v14 = 3;
      v15 = 1;
      v16 = 1;
      goto LABEL_18;
  }
}

- (BOOL)parseFourColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];
  if ((type - 2) < 2)
  {
    numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
    if ((numberOfRemainingItems - items - 3) >= 2)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = numberOfRemainingItems - items;
    }

    if (numberOfRemainingItems - items >= 1 && v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
      {
        if (([localState didMoveBestItemOutOfPreviousShortRowIntoHeroRow] & 1) == 0)
        {
          v14 = [(PXExploreLayoutGenerator *)self indexWithinNextItems:v13 + items having:0 keyIndex:0];
          if (v14 >= items)
          {
            [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:v14 toIndex:items - 1];
          }
        }
      }
    }

    selfCopy2 = self;
    typeCopy = type;
    v11 = 1;
    goto LABEL_15;
  }

  if (type == 1)
  {
    [(PXExploreLayoutGenerator *)self _parseFourColumnShortRowWithNumberOfItems:items];
    goto LABEL_17;
  }

  if (!type)
  {
    selfCopy2 = self;
    typeCopy = 0;
    v11 = 2;
LABEL_15:
    [(PXExploreLayoutGenerator *)selfCopy2 _parseFourColumnHeroRowWithType:typeCopy heroItemType:v11 numberOfItems:items];
  }

LABEL_17:
  v15 = [localState parseLocation] > parseLocation;

  return v15;
}

- (BOOL)parseThreeColumnMediumHeroRowWithPano
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  v6 = numberOfRemainingItems;
  if ((numberOfRemainingItems - 1) >= 2)
  {
    if (numberOfRemainingItems == 4)
    {
      if ([(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 0x20000, 0x20000, 0])
      {
LABEL_11:
        v6 = 1;
        selfCopy3 = self;
        v9 = 1;
        v10 = 0;
LABEL_12:
        [(PXExploreLayoutGenerator *)selfCopy3 moveNextItemAtIndex:v9 toIndex:v10];
        goto LABEL_28;
      }

      if ([(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0x20000, 0x20000, 0])
      {
        v6 = 2;
        selfCopy3 = self;
        v9 = 1;
        v10 = 2;
        goto LABEL_12;
      }

      if ([(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 2, 2, 0])
      {
        v6 = 2;
        selfCopy3 = self;
        v9 = 2;
        v10 = 1;
        goto LABEL_12;
      }

      if ([(PXExploreLayoutGenerator *)self nextInputItems:2, 0x20000, 0x20000, 0x20000, 0]|| [(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 2, 0x20000, 0]|| [(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0x20000, 2, 0]|| [(PXExploreLayoutGenerator *)self nextInputItems:2, 0x20000, 2, 2, 0])
      {
        v6 = 1;
      }

      else if ([(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 2, 2, 0])
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }
    }

    else
    {
      if (numberOfRemainingItems == 3)
      {
        if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 0x20000, 0])
        {
          v6 = 2;
          if ([(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 2, 0])
          {
            goto LABEL_28;
          }

          v7 = [(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 2, 0, v13];
          goto LABEL_7;
        }

        goto LABEL_11;
      }

      v6 = 2;
      if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 0x20000, 0x20000, 0])
      {
        v6 = 2;
        if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 2, 0x20000, 0])
        {
          v6 = 2;
          if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 2, 0x20000, 0])
          {
            v6 = 2;
            if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 0x20000, 2, 0])
            {
              v6 = 2;
              if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 2, 2, 0])
              {
                v7 = [(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 2, 2, 0];
LABEL_7:
                if (v7)
                {
                  v6 = 2;
                }

                else
                {
                  v6 = 1;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_28:
  [(PXExploreLayoutGenerator *)self _parseThreeColumnShortRowWithNumberOfItems:v6];
  v11 = [localState parseLocation] > parseLocation;

  return v11;
}

- (BOOL)parseThreeColumnShortRowWithPano
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];
  numberOfRemainingItems = [(PXExploreLayoutGenerator *)self numberOfRemainingItems];
  v6 = numberOfRemainingItems;
  if (numberOfRemainingItems > 2)
  {
    if (numberOfRemainingItems == 3)
    {
      if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 0x20000, 0])
      {
        if (![(PXExploreLayoutGenerator *)self nextInputItems:2, 0x20000, 0x20000, 0]&& ![(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0x20000, 0])
        {
          v15 = 0;
          goto LABEL_33;
        }

LABEL_22:
        v6 = 1;
        goto LABEL_29;
      }
    }

    else
    {
      if (numberOfRemainingItems != 4)
      {
        goto LABEL_13;
      }

      if ([(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 2, 0x20000, 0x20000, 0]&& [(PXExploreLayoutGenerator *)self canReorderItemsAcrossRows])
      {
        v6 = 3;
        selfCopy4 = self;
        v9 = 1;
LABEL_27:
        v11 = 3;
        goto LABEL_28;
      }

      if (![(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0x20000, 0x20000, 0])
      {
        if ([(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 2, 0x20000, 0])
        {
          goto LABEL_26;
        }

        if (![(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 2, 2, 0])
        {
          v10 = [(PXExploreLayoutGenerator *)self nextInputItems:2, 0x20000, 0x20000, 0x20000, 0];
          goto LABEL_15;
        }

        v6 = 2;
        selfCopy4 = self;
        v9 = 2;
        v11 = 1;
LABEL_28:
        [(PXExploreLayoutGenerator *)selfCopy4 moveNextItemAtIndex:v9 toIndex:v11];
        goto LABEL_29;
      }
    }

    v6 = 2;
    selfCopy4 = self;
    v9 = 1;
    v11 = 2;
    goto LABEL_28;
  }

  if (numberOfRemainingItems == 1)
  {
    goto LABEL_29;
  }

  if (numberOfRemainingItems == 2)
  {
    v7 = [(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0, v14, v16];
    goto LABEL_5;
  }

LABEL_13:
  if ([(PXExploreLayoutGenerator *)self nextInputItems:0x20000, 0x20000, 2, 0x20000, 0])
  {
LABEL_26:
    v6 = 3;
    selfCopy4 = self;
    v9 = 2;
    goto LABEL_27;
  }

  v10 = [(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0x20000, 0x20000, 0];
LABEL_15:
  if (v10 || [(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 2, 0x20000, 0]|| [(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0x20000, 2, 0])
  {
    goto LABEL_22;
  }

  v15 = 2;
  v16 = 0;
LABEL_33:
  v7 = [(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 2, v15, v16];
LABEL_5:
  if (v7)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

LABEL_29:
  [(PXExploreLayoutGenerator *)self _parseThreeColumnShortRowWithNumberOfItems:v6];
  v12 = [localState parseLocation] > parseLocation;

  return v12;
}

- (void)_addTwoItemsForThreeColumnRowPreferringTallVariant:(BOOL)variant
{
  v4 = 0;
  v5 = &v44;
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = &v46;
  v7 = &v48;
  v8 = 1;
  v9 = 1.79769313e308;
  do
  {
    v10 = v8;
    [(PXExploreLayoutGenerator *)self score:0 forNextItemAtIndex:v4];
    v12 = v11;
    v13 = [(PXExploreLayoutGenerator *)self attributesForNextItemAtIndex:v4];
    v8 = 0;
    v14 = (v13 >> 3) & 1;
    if ((v13 & 4) != 0)
    {
      v14 = 2;
    }

    if (v12 < v9)
    {
      v9 = v12;
    }

    *v7 = v12;
    *v6 = v13;
    *v5 = v14;
    v5 = &v45;
    v6 = &v47;
    v7 = v49;
    v4 = 1;
  }

  while ((v10 & 1) != 0);
  v38 = 0;
  v39 = &v38;
  v40 = 0x3010000000;
  v42 = 0;
  v43 = 0;
  v41 = &unk_1A561E057;
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v37[3] = 0x8000000000000001;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke;
  aBlock[3] = &unk_1E7748870;
  variantCopy = variant;
  aBlock[6] = &v44;
  aBlock[7] = &v46;
  aBlock[8] = &v48;
  *&aBlock[9] = v9;
  aBlock[4] = v37;
  aBlock[5] = &v38;
  v15 = _Block_copy(aBlock);
  localState = [(PXExploreLayoutGenerator *)self localState];
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  v18 = [metrics layoutSubtype] != 1;

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v30 = __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_3;
  v31 = &unk_1E77488C0;
  v19 = localState;
  v32 = v19;
  v34 = v18;
  v20 = v15;
  v33 = v20;
  v21 = v29;
  __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_3(v21, 0);
  v30(v21, 1);

  v22 = v39;
  if (*(v39 + 41) == 1)
  {
    [(PXExploreLayoutGenerator *)self moveNextItemAtIndex:0 toIndex:1];
    v22 = v39;
  }

  [v19 setNextHeroSide:v22[4]];
  v23 = v39[4];
  if (*(v39 + 40) != 1)
  {
    if (v23 == 1)
    {
      v25 = 1;
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:1 rowSpan:1];
      v26 = 0;
      v24 = 2;
    }

    else
    {
      if (v23)
      {
        goto LABEL_20;
      }

      v24 = 1;
      v25 = 2;
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:1];
      v26 = 0;
    }

    v27 = 1;
    goto LABEL_19;
  }

  if (v23 == 1)
  {
    v24 = 2;
    v26 = 1;
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:1 rowSpan:2];
    v25 = 1;
    v27 = 2;
    goto LABEL_19;
  }

  if (!v23)
  {
    v24 = 1;
    v25 = 2;
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:1 atColumn:0 row:0 columnSpan:2 rowSpan:2];
    v26 = 0;
    v27 = 2;
LABEL_19:
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:v26 atColumn:v25 row:0 columnSpan:v24 rowSpan:v27];
  }

LABEL_20:

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(&v38, 8);
}

void __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = *(a1 + 80);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_2;
  aBlock[3] = &unk_1E7748848;
  v18 = *(a1 + 48);
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  aBlock[4] = &v29;
  aBlock[5] = &v25;
  aBlock[6] = &v21;
  v9 = _Block_copy(aBlock);
  v10 = v9;
  v11 = *(v9 + 2);
  if (a3)
  {
    if (a2)
    {
      v11(v9, a4, 2, 0);
      v12 = 0;
LABEL_6:
      v13 = 1;
      goto LABEL_9;
    }

    v11(v9, a4, 0, 1);
    v13 = 0;
    v12 = 2;
  }

  else
  {
    if (a2)
    {
      v11(v9, a4, 0, 0);
      v12 = 1;
      goto LABEL_6;
    }

    v11(v9, a4, 1, 1);
    v12 = 0;
    v13 = 0;
  }

LABEL_9:
  v10[2](v10, a4 ^ 1, v12, v13);
  v14 = a4 ^ 1 | (10 * ((v8 == a3) | (10 * (v22[3] + 10 * (v26[3] + 10 * (2 - v30[3]))))));
  v15 = *(*(a1 + 32) + 8);
  if (v14 > *(v15 + 24))
  {
    *(v15 + 24) = v14;
    v16 = *(*(a1 + 40) + 8);
    *(v16 + 32) = a2;
    *(v16 + 40) = a3;
    *(v16 + 41) = a4;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) nextHeroSide] == a2 || objc_msgSend(*(a1 + 32), "canIgnoreNextHeroSide"))
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v5 = __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_4;
    v6 = &unk_1E7748898;
    v9 = *(a1 + 48);
    v7 = *(a1 + 40);
    v8 = a2;
    __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_4(v4, 0);
    v5(v4, 1);
  }
}

void __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_4(uint64_t a1, int a2)
{
  v2 = a2;
  if (!a2 || *(a1 + 48) == 1)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v7 = __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_5;
    v8 = &unk_1E7748898;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v9 = v4;
    v10 = v5;
    v11 = v2;
    __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_5(v6, 0);
    v7(v6, 1);
  }
}

uint64_t __85__PXExploreLayoutGenerator_Rows___addTwoItemsForThreeColumnRowPreferringTallVariant___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 56);
  v5 = *(v4 + 8 * a2);
  if (a3 == 1 && v5 == 2 || a3 == 2 && v5 == 1 || !a3 && (*(*(result + 64) + 8 * a2) & 2) != 0)
  {
    ++*(*(*(result + 32) + 8) + 24);
  }

  if (a4 == 1 && *(*(result + 72) + 8 * a2) > *(result + 80))
  {
    ++*(*(*(result + 40) + 8) + 24);
  }

  if (*(v4 + 8 * a2) == a3)
  {
    ++*(*(*(result + 48) + 8) + 24);
  }

  return result;
}

- (void)_parseThreeColumnMediumHeroRowWithNumberOfItems:(int64_t)items
{
  if (items <= 1)
  {

    [(PXExploreLayoutGenerator *)self _parseThreeColumnShortRowWithNumberOfItems:?];
    return;
  }

  localState = [(PXExploreLayoutGenerator *)self localState];
  nextHeroSide = [localState nextHeroSide];
  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:3];
  if (items == 2)
  {
    if ([(PXExploreLayoutGenerator *)self nextItems:2 areAll:2])
    {
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:3 rowSpan:1];
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:1 columnSpan:3 rowSpan:1];
      [localState setNextHeroSide:PXFlippedExploreHeroSide(nextHeroSide)];
    }

    else
    {
      [(PXExploreLayoutGenerator *)self _addTwoItemsForThreeColumnRowPreferringTallVariant:1];
    }

    goto LABEL_14;
  }

  if (nextHeroSide == 1)
  {
    [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:2 having:0];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:1 rowSpan:1];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:1 columnSpan:1 rowSpan:1];
    selfCopy2 = self;
    v7 = 1;
    v8 = 1;
    v9 = 0;
    v10 = 2;
    v11 = 2;
    goto LABEL_13;
  }

  if (!nextHeroSide)
  {
    [(PXExploreLayoutGenerator *)self sortNextItems:3 withItemAtIndex:0 having:0];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:1 atColumn:0 row:0 columnSpan:2 rowSpan:2];
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:2 row:0 columnSpan:1 rowSpan:1];
    selfCopy2 = self;
    v7 = 0;
    v8 = 2;
    v9 = 1;
    v10 = 1;
    v11 = 1;
LABEL_13:
    [(PXExploreLayoutGenerator *)selfCopy2 addLocalItemWithType:v7 atColumn:v8 row:v9 columnSpan:v10 rowSpan:v11];
  }

LABEL_14:
  [(PXExploreLayoutGenerator *)self endRowWithType:2];
}

- (void)_parseThreeColumnShortRowWithNumberOfItems:(int64_t)items
{
  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:3];
  if (items == 2)
  {
    if ([(PXExploreLayoutGenerator *)self nextInputItems:2, 2, 0])
    {
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:3 rowSpan:1];
      selfCopy2 = self;
      v6 = 1;
      goto LABEL_7;
    }

    [(PXExploreLayoutGenerator *)self _addTwoItemsForThreeColumnRowPreferringTallVariant:0];
    localState = [(PXExploreLayoutGenerator *)self localState];
    [localState setNextHeroSide:{PXFlippedExploreHeroSide(objc_msgSend(localState, "nextHeroSide"))}];
  }

  else
  {
    if (items == 1)
    {
      if ([(PXExploreLayoutGenerator *)self nextInputItems:2, 0])
      {
        selfCopy2 = self;
        v6 = 0;
LABEL_7:
        [(PXExploreLayoutGenerator *)selfCopy2 addLocalItemWithType:0 atColumn:0 row:v6 columnSpan:3 rowSpan:1];
        goto LABEL_15;
      }

      v7 = 1;
    }

    else
    {
      if (items < 1)
      {
        goto LABEL_15;
      }

      v7 = 3;
    }

    for (i = 0; i != v7; ++i)
    {
      [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:i row:0 columnSpan:1 rowSpan:1];
    }
  }

LABEL_15:

  [(PXExploreLayoutGenerator *)self endRowWithType:1];
}

- (void)_parseThreeColumnHeaderRowWithNumberOfItems:(int64_t)items
{
  [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:3];
  metrics = [(PXExploreLayoutGenerator *)self metrics];
  [metrics preferredFullWidthHeaderAspectRatio];

  metrics2 = [(PXExploreLayoutGenerator *)self metrics];
  if (![metrics2 allowSpecialPanoHeaders])
  {

LABEL_6:
    PXFloatApproximatelyEqualToFloat();
  }

  v7 = [(PXExploreLayoutGenerator *)self nextInputItems:2, 0];

  if (!v7)
  {
    goto LABEL_6;
  }

  selfCopy2 = self;
  if (items == 2)
  {
    [(PXExploreLayoutGenerator *)self addLocalItemWithType:0 atColumn:0 row:0 columnSpan:2 rowSpan:1];
    selfCopy2 = self;
    v9 = 0;
    v10 = 2;
    v11 = 1;
    v12 = 1;
  }

  else
  {
    v9 = 2;
    v10 = 0;
    v11 = 3;
    v12 = 2;
  }

  [(PXExploreLayoutGenerator *)selfCopy2 addLocalItemWithType:v9 atColumn:v10 row:0 columnSpan:v11 rowSpan:v12];

  [(PXExploreLayoutGenerator *)self endRowWithType:0];
}

- (BOOL)parseThreeColumnRowWithType:(int64_t)type numberOfItems:(int64_t)items
{
  localState = [(PXExploreLayoutGenerator *)self localState];
  parseLocation = [localState parseLocation];
  if (type > 1)
  {
    if (type == 2)
    {
      [(PXExploreLayoutGenerator *)self _parseThreeColumnMediumHeroRowWithNumberOfItems:items];
    }

    else if (type == 3)
    {
      [(PXExploreLayoutGenerator *)self beginRowWithNumberOfColumns:3];
      if ([(PXExploreLayoutGenerator *)self nextInputItems:2, 0])
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      [(PXExploreLayoutGenerator *)self addLocalItemWithType:1 atColumn:0 row:0 columnSpan:3 rowSpan:v9];
      [(PXExploreLayoutGenerator *)self endRowWithType:3];
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      [(PXExploreLayoutGenerator *)self _parseThreeColumnShortRowWithNumberOfItems:items];
    }
  }

  else
  {
    [(PXExploreLayoutGenerator *)self _parseThreeColumnHeaderRowWithNumberOfItems:items];
  }

  v10 = [localState parseLocation] > parseLocation;

  return v10;
}

@end