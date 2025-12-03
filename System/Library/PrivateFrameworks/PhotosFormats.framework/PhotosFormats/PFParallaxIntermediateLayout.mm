@interface PFParallaxIntermediateLayout
- (CGRect)adaptiveInactiveTopRect;
- (CGRect)adaptiveVisibleRect;
- (CGRect)inactiveRect;
- (CGRect)salientContentRect;
- (CGRect)spatialAdaptiveVisibleRect;
- (CGRect)spatialVisibleRect;
- (CGRect)visibleRect;
- (NSString)debugStub;
- (PFParallaxIntermediateLayout)initWithConfiguration:(id)configuration;
- (PFParallaxIntermediateLayout)initWithVisibleRect:(CGRect)rect inactiveRect:(CGRect)inactiveRect zoomStrategy:(unint64_t)strategy overlapStrategy:(unint64_t)overlapStrategy parallaxStrategy:(unint64_t)parallaxStrategy inactiveStrategy:(unint64_t)inactiveStrategy headroomStrategy:(unint64_t)headroomStrategy cropScore:(double)self0 layoutScore:(double)self1 timeBottomOverlap:(double)self2 timeTopOverlap:(double)self3 unsafeAreaOverlap:(double)self4 uninflatedUnsafeAreaOverlap:(double)self5 hasTopEdgeContact:(BOOL)self6;
- (double)adaptiveHeadroom;
- (double)clockOverlapAcceptabilityForLayoutConfiguration:(id)configuration inflated:(BOOL)inflated;
- (double)headroomUsage:(CGSize)usage;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)updateWithConfiguration:(id)configuration;
@end

@implementation PFParallaxIntermediateLayout

- (CGRect)spatialAdaptiveVisibleRect
{
  x = self->_spatialAdaptiveVisibleRect.origin.x;
  y = self->_spatialAdaptiveVisibleRect.origin.y;
  width = self->_spatialAdaptiveVisibleRect.size.width;
  height = self->_spatialAdaptiveVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)spatialVisibleRect
{
  x = self->_spatialVisibleRect.origin.x;
  y = self->_spatialVisibleRect.origin.y;
  width = self->_spatialVisibleRect.size.width;
  height = self->_spatialVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveInactiveTopRect
{
  x = self->_adaptiveInactiveTopRect.origin.x;
  y = self->_adaptiveInactiveTopRect.origin.y;
  width = self->_adaptiveInactiveTopRect.size.width;
  height = self->_adaptiveInactiveTopRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inactiveRect
{
  x = self->_inactiveRect.origin.x;
  y = self->_inactiveRect.origin.y;
  width = self->_inactiveRect.size.width;
  height = self->_inactiveRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveVisibleRect
{
  x = self->_adaptiveVisibleRect.origin.x;
  y = self->_adaptiveVisibleRect.origin.y;
  width = self->_adaptiveVisibleRect.size.width;
  height = self->_adaptiveVisibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)salientContentRect
{
  x = self->_salientContentRect.origin.x;
  y = self->_salientContentRect.origin.y;
  width = self->_salientContentRect.size.width;
  height = self->_salientContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleRect
{
  x = self->_visibleRect.origin.x;
  y = self->_visibleRect.origin.y;
  width = self->_visibleRect.size.width;
  height = self->_visibleRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PFParallaxMutableIntermediateLayout allocWithZone:zone];
  if (v4)
  {
    [(PFParallaxIntermediateLayout *)self visibleRect];
    [(PFParallaxMutableIntermediateLayout *)v4 setVisibleRect:?];
    [(PFParallaxIntermediateLayout *)self salientContentRect];
    [(PFParallaxMutableIntermediateLayout *)v4 setSalientContentRect:?];
    [(PFParallaxIntermediateLayout *)self adaptiveVisibleRect];
    [(PFParallaxMutableIntermediateLayout *)v4 setAdaptiveVisibleRect:?];
    [(PFParallaxIntermediateLayout *)self inactiveRect];
    [(PFParallaxMutableIntermediateLayout *)v4 setInactiveRect:?];
    [(PFParallaxIntermediateLayout *)self adaptiveInactiveTopRect];
    [(PFParallaxMutableIntermediateLayout *)v4 setAdaptiveInactiveTopRect:?];
    [(PFParallaxIntermediateLayout *)self spatialVisibleRect];
    [(PFParallaxMutableIntermediateLayout *)v4 setSpatialVisibleRect:?];
    [(PFParallaxIntermediateLayout *)self spatialAdaptiveVisibleRect];
    [(PFParallaxMutableIntermediateLayout *)v4 setSpatialAdaptiveVisibleRect:?];
    [(PFParallaxMutableIntermediateLayout *)v4 setZoomStrategy:[(PFParallaxIntermediateLayout *)self zoomStrategy]];
    [(PFParallaxMutableIntermediateLayout *)v4 setOverlapStrategy:[(PFParallaxIntermediateLayout *)self overlapStrategy]];
    [(PFParallaxMutableIntermediateLayout *)v4 setParallaxStrategy:[(PFParallaxIntermediateLayout *)self parallaxStrategy]];
    [(PFParallaxMutableIntermediateLayout *)v4 setInactiveStrategy:[(PFParallaxIntermediateLayout *)self inactiveStrategy]];
    [(PFParallaxMutableIntermediateLayout *)v4 setHeadroomStrategy:[(PFParallaxIntermediateLayout *)self headroomStrategy]];
    [(PFParallaxMutableIntermediateLayout *)v4 setAdaptiveStrategy:[(PFParallaxIntermediateLayout *)self adaptiveStrategy]];
    [(PFParallaxMutableIntermediateLayout *)v4 setSpatialStrategy:[(PFParallaxIntermediateLayout *)self spatialStrategy]];
    [(PFParallaxMutableIntermediateLayout *)v4 setLayoutVariant:[(PFParallaxIntermediateLayout *)self layoutVariant]];
    [(PFParallaxIntermediateLayout *)self cropScore];
    [(PFParallaxMutableIntermediateLayout *)v4 setCropScore:?];
    [(PFParallaxIntermediateLayout *)self layoutScore];
    [(PFParallaxMutableIntermediateLayout *)v4 setLayoutScore:?];
    [(PFParallaxIntermediateLayout *)self timeBottomOverlap];
    [(PFParallaxMutableIntermediateLayout *)v4 setTimeBottomOverlap:?];
    [(PFParallaxIntermediateLayout *)self timeTopOverlap];
    [(PFParallaxMutableIntermediateLayout *)v4 setTimeTopOverlap:?];
    [(PFParallaxIntermediateLayout *)self unsafeAreaOverlap];
    [(PFParallaxMutableIntermediateLayout *)v4 setUnsafeAreaOverlap:?];
    [(PFParallaxIntermediateLayout *)self uninflatedUnsafeAreaOverlap];
    [(PFParallaxMutableIntermediateLayout *)v4 setUninflatedUnsafeAreaOverlap:?];
    [(PFParallaxMutableIntermediateLayout *)v4 setHasTopEdgeContact:[(PFParallaxIntermediateLayout *)self hasTopEdgeContact]];
    [(PFParallaxIntermediateLayout *)self maxClockShift];
    [(PFParallaxMutableIntermediateLayout *)v4 setMaxClockShift:?];
    [(PFParallaxIntermediateLayout *)self zoomFactor];
    [(PFParallaxMutableIntermediateLayout *)v4 setZoomFactor:?];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v4 = [(PFParallaxIntermediateLayout *)selfCopy initWithVisibleRect:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
  if (v4)
  {
    [(PFParallaxIntermediateLayout *)selfCopy visibleRect];
    *(v4 + 144) = v5;
    *(v4 + 152) = v6;
    *(v4 + 160) = v7;
    *(v4 + 168) = v8;
    [(PFParallaxIntermediateLayout *)selfCopy salientContentRect];
    *(v4 + 176) = v9;
    *(v4 + 184) = v10;
    *(v4 + 192) = v11;
    *(v4 + 200) = v12;
    [(PFParallaxIntermediateLayout *)selfCopy adaptiveVisibleRect];
    *(v4 + 208) = v13;
    *(v4 + 216) = v14;
    *(v4 + 224) = v15;
    *(v4 + 232) = v16;
    [(PFParallaxIntermediateLayout *)selfCopy inactiveRect];
    *(v4 + 240) = v17;
    *(v4 + 248) = v18;
    *(v4 + 256) = v19;
    *(v4 + 264) = v20;
    [(PFParallaxIntermediateLayout *)selfCopy adaptiveInactiveTopRect];
    *(v4 + 272) = v21;
    *(v4 + 280) = v22;
    *(v4 + 288) = v23;
    *(v4 + 296) = v24;
    [(PFParallaxIntermediateLayout *)selfCopy spatialVisibleRect];
    *(v4 + 304) = v25;
    *(v4 + 312) = v26;
    *(v4 + 320) = v27;
    *(v4 + 328) = v28;
    [(PFParallaxIntermediateLayout *)selfCopy spatialAdaptiveVisibleRect];
    *(v4 + 336) = v29;
    *(v4 + 344) = v30;
    *(v4 + 352) = v31;
    *(v4 + 360) = v32;
    *(v4 + 16) = [(PFParallaxIntermediateLayout *)selfCopy zoomStrategy];
    *(v4 + 24) = [(PFParallaxIntermediateLayout *)selfCopy overlapStrategy];
    *(v4 + 32) = [(PFParallaxIntermediateLayout *)selfCopy parallaxStrategy];
    *(v4 + 40) = [(PFParallaxIntermediateLayout *)selfCopy inactiveStrategy];
    *(v4 + 48) = [(PFParallaxIntermediateLayout *)selfCopy headroomStrategy];
    *(v4 + 56) = [(PFParallaxIntermediateLayout *)selfCopy adaptiveStrategy];
    *(v4 + 72) = [(PFParallaxIntermediateLayout *)selfCopy layoutVariant];
    *(v4 + 64) = [(PFParallaxIntermediateLayout *)selfCopy spatialStrategy];
    [(PFParallaxIntermediateLayout *)selfCopy cropScore];
    *(v4 + 80) = v33;
    [(PFParallaxIntermediateLayout *)selfCopy layoutScore];
    *(v4 + 88) = v34;
    [(PFParallaxIntermediateLayout *)selfCopy timeBottomOverlap];
    *(v4 + 96) = v35;
    [(PFParallaxIntermediateLayout *)selfCopy timeTopOverlap];
    *(v4 + 104) = v36;
    [(PFParallaxIntermediateLayout *)selfCopy unsafeAreaOverlap];
    *(v4 + 112) = v37;
    [(PFParallaxIntermediateLayout *)selfCopy uninflatedUnsafeAreaOverlap];
    *(v4 + 120) = v38;
    *(v4 + 8) = [(PFParallaxIntermediateLayout *)selfCopy hasTopEdgeContact];
    [(PFParallaxIntermediateLayout *)selfCopy maxClockShift];
    *(v4 + 128) = v39;
    [(PFParallaxIntermediateLayout *)selfCopy zoomFactor];
    *(v4 + 136) = v40;
  }

  return v4;
}

- (id)debugDescription
{
  v3 = operator||([(PFParallaxIntermediateLayout *)self zoomStrategy], 0);
  v4 = OverlapStrategyDescription([(PFParallaxIntermediateLayout *)self overlapStrategy], 0);
  v5 = ParallaxStrategyDescription([(PFParallaxIntermediateLayout *)self parallaxStrategy], 0);
  v6 = InactiveStrategyDescription([(PFParallaxIntermediateLayout *)self inactiveStrategy], 0);
  v7 = HeadroomStrategyDescription([(PFParallaxIntermediateLayout *)self headroomStrategy], 0);
  debugStub = [(PFParallaxIntermediateLayout *)self debugStub];
  v9 = MEMORY[0x1E696AEC0];
  v34.receiver = self;
  v34.super_class = PFParallaxIntermediateLayout;
  v10 = [(PFParallaxIntermediateLayout *)&v34 debugDescription];
  [(PFParallaxIntermediateLayout *)self visibleRect];
  v33 = v11;
  [(PFParallaxIntermediateLayout *)self visibleRect];
  v32 = v12;
  [(PFParallaxIntermediateLayout *)self visibleRect];
  v14 = v13;
  [(PFParallaxIntermediateLayout *)self visibleRect];
  v16 = v15;
  [(PFParallaxIntermediateLayout *)self cropScore];
  v18 = v17;
  [(PFParallaxIntermediateLayout *)self layoutScore];
  v20 = v19;
  [(PFParallaxIntermediateLayout *)self timeBottomOverlap];
  v22 = v21;
  [(PFParallaxIntermediateLayout *)self timeTopOverlap];
  v24 = v23;
  [(PFParallaxIntermediateLayout *)self unsafeAreaOverlap];
  v26 = v25;
  [(PFParallaxIntermediateLayout *)self uninflatedUnsafeAreaOverlap];
  v28 = v27;
  [(PFParallaxIntermediateLayout *)self maxClockShift];
  v30 = [v9 stringWithFormat:@"%@ vis:%.0f, %.0f %.0fx%.0f stub:%@ z:%@ o:%@ p:%@ i:%@ h:%@ scores, crop:%.2f layout:%.2f bot:%.2f top:%.2f unsafe:%.2f uninfunsafe:%.2f maxClock:%.2f", v10, v33, v32, v14, v16, debugStub, v3, v4, v5, v6, v7, v18, v20, v22, v24, v26, v28, v29];

  return v30;
}

- (NSString)debugStub
{
  v3 = operator||([(PFParallaxIntermediateLayout *)self zoomStrategy], 1);
  v4 = OverlapStrategyDescription([(PFParallaxIntermediateLayout *)self overlapStrategy], 1);
  v5 = ParallaxStrategyDescription([(PFParallaxIntermediateLayout *)self parallaxStrategy], 1);
  v6 = InactiveStrategyDescription([(PFParallaxIntermediateLayout *)self inactiveStrategy], 1);
  v7 = HeadroomStrategyDescription([(PFParallaxIntermediateLayout *)self headroomStrategy], 1);
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@%@%@", v3, v4, v5, v6, v7];

  return v8;
}

- (double)clockOverlapAcceptabilityForLayoutConfiguration:(id)configuration inflated:(BOOL)inflated
{
  inflatedCopy = inflated;
  [configuration timeOverlapCheckTop];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [(PFParallaxIntermediateLayout *)self visibleRect];
  [PFParallaxLayoutUtilities timeOverlapCheckThresholdForTopRect:0 isInteractive:v14 + v7 * v15, v16 + v9 * v17, v11 * v15, v13 * v17];
  v19 = v18;
  if (inflatedCopy)
  {
    [(PFParallaxIntermediateLayout *)self unsafeAreaOverlap];
  }

  else
  {
    [(PFParallaxIntermediateLayout *)self uninflatedUnsafeAreaOverlap];
  }

  v21 = v20;
  if ([(PFParallaxIntermediateLayout *)self adaptiveStrategy]!= 2)
  {
    overlapStrategy = [(PFParallaxIntermediateLayout *)self overlapStrategy];
    if (overlapStrategy <= 5)
    {
      if (((1 << overlapStrategy) & 0x1A) == 0)
      {
        if (((1 << overlapStrategy) & 0x24) == 0)
        {
          return 0.0;
        }

        [(PFParallaxIntermediateLayout *)self timeBottomOverlap];
        if (v31 > 0.0)
        {
          [(PFParallaxIntermediateLayout *)self timeBottomOverlap];
          v33 = v32;
          v34 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
          [v34 maxBottomOverlap];
          if (v33 >= v35)
          {
          }

          else
          {
            [(PFParallaxIntermediateLayout *)self timeTopOverlap];
            v37 = v36;

            v22 = 1.0;
            if (v37 < v19)
            {
              return v22;
            }
          }
        }
      }

      v22 = 0.75;
      if (v21 < 0.01)
      {
        return v22;
      }
    }

    return fmax(((v21 + -0.01) / -0.99 + 1.0) * 0.5, 0.0);
  }

  [(PFParallaxIntermediateLayout *)self timeBottomOverlap];
  v22 = 0.0;
  if (v23 > 0.0)
  {
    [(PFParallaxIntermediateLayout *)self timeBottomOverlap];
    v25 = v24;
    v26 = +[PFParallaxLayoutTextOverlapParameters systemParameters];
    [v26 maxBottomOverlap];
    if (v25 >= v27)
    {
    }

    else
    {
      [(PFParallaxIntermediateLayout *)self timeTopOverlap];
      v29 = v28;

      if (v29 >= v19)
      {
        return 0.0;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v22;
}

- (double)headroomUsage:(CGSize)usage
{
  height = usage.height;
  [(PFParallaxIntermediateLayout *)self visibleRect];
  return fmax(v4 + v5 - height, 0.0) / (height * 0.35);
}

- (double)adaptiveHeadroom
{
  [(PFParallaxIntermediateLayout *)self adaptiveVisibleRect];
  v4 = v3;
  [(PFParallaxIntermediateLayout *)self visibleRect];
  v6 = v4 - v5;
  [(PFParallaxIntermediateLayout *)self visibleRect];
  return v6 / v7;
}

- (PFParallaxIntermediateLayout)initWithVisibleRect:(CGRect)rect inactiveRect:(CGRect)inactiveRect zoomStrategy:(unint64_t)strategy overlapStrategy:(unint64_t)overlapStrategy parallaxStrategy:(unint64_t)parallaxStrategy inactiveStrategy:(unint64_t)inactiveStrategy headroomStrategy:(unint64_t)headroomStrategy cropScore:(double)self0 layoutScore:(double)self1 timeBottomOverlap:(double)self2 timeTopOverlap:(double)self3 unsafeAreaOverlap:(double)self4 uninflatedUnsafeAreaOverlap:(double)self5 hasTopEdgeContact:(BOOL)self6
{
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __264__PFParallaxIntermediateLayout_initWithVisibleRect_inactiveRect_zoomStrategy_overlapStrategy_parallaxStrategy_inactiveStrategy_headroomStrategy_cropScore_layoutScore_timeBottomOverlap_timeTopOverlap_unsafeAreaOverlap_uninflatedUnsafeAreaOverlap_hasTopEdgeContact___block_invoke;
  v17[3] = &__block_descriptor_185_e45_v16__0__PFParallaxMutableIntermediateLayout_8l;
  rectCopy = rect;
  inactiveRectCopy = inactiveRect;
  strategyCopy = strategy;
  overlapStrategyCopy = overlapStrategy;
  parallaxStrategyCopy = parallaxStrategy;
  inactiveStrategyCopy = inactiveStrategy;
  headroomStrategyCopy = headroomStrategy;
  v25 = *&score;
  v26 = *&overlap;
  areaOverlapCopy = areaOverlap;
  unsafeAreaOverlapCopy = unsafeAreaOverlap;
  contactCopy = contact;
  return [(PFParallaxIntermediateLayout *)self initWithConfiguration:v17];
}

void __264__PFParallaxIntermediateLayout_initWithVisibleRect_inactiveRect_zoomStrategy_overlapStrategy_parallaxStrategy_inactiveStrategy_headroomStrategy_cropScore_layoutScore_timeBottomOverlap_timeTopOverlap_unsafeAreaOverlap_uninflatedUnsafeAreaOverlap_hasTopEdgeContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v11 = a2;
  [v11 setVisibleRect:{v3, v4, v5, v6}];
  [v11 setInactiveRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [v11 setZoomStrategy:*(a1 + 96)];
  [v11 setOverlapStrategy:*(a1 + 104)];
  [v11 setParallaxStrategy:*(a1 + 112)];
  [v11 setInactiveStrategy:*(a1 + 120)];
  [v11 setHeadroomStrategy:*(a1 + 128)];
  [v11 setLayoutVariant:0];
  [v11 setCropScore:*(a1 + 136)];
  [v11 setLayoutScore:*(a1 + 144)];
  [v11 setTimeBottomOverlap:*(a1 + 152)];
  [v11 setTimeTopOverlap:*(a1 + 160)];
  [v11 setUnsafeAreaOverlap:*(a1 + 168)];
  [v11 setUninflatedUnsafeAreaOverlap:*(a1 + 176)];
  [v11 setHasTopEdgeContact:*(a1 + 184)];
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  [v11 setAdaptiveVisibleRect:{*MEMORY[0x1E695F050], v8, v9, v10}];
  [v11 setAdaptiveInactiveTopRect:{v7, v8, v9, v10}];
  [v11 setMaxClockShift:0.0];
  [v11 setZoomFactor:0.0];
}

- (id)updateWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = [(PFParallaxIntermediateLayout *)self mutableCopy];
  configurationCopy[2](configurationCopy, v5);

  return v5;
}

- (PFParallaxIntermediateLayout)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = PFParallaxIntermediateLayout;
  v5 = [(PFParallaxIntermediateLayout *)&v9 init];
  if (v5)
  {
    v6 = v5;
    v7 = [(PFParallaxIntermediateLayout *)v5 mutableCopy];
    configurationCopy[2](configurationCopy, v7);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end