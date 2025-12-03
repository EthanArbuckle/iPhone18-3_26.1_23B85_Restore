@interface TSDTextureDescription
+ (TSDTextureDescription)descriptionWithSession:(id)session;
+ (TSDTextureDescription)descriptionWithTextureDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (TSDAnimationSession)session;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)reset;
@end

@implementation TSDTextureDescription

+ (TSDTextureDescription)descriptionWithSession:(id)session
{
  sessionCopy = session;
  v4 = objc_alloc_init(TSDTextureDescription);
  [(TSDTextureDescription *)v4 setSession:sessionCopy];
  [(TSDTextureDescription *)v4 setStage:0];
  [(TSDTextureDescription *)v4 setDeliveryStyle:0];
  [(TSDTextureDescription *)v4 setByGlyphStyle:0];
  shouldForceTextureGeneration = [sessionCopy shouldForceTextureGeneration];

  [(TSDTextureDescription *)v4 setShouldForceTextureGeneration:shouldForceTextureGeneration];

  return v4;
}

+ (TSDTextureDescription)descriptionWithTextureDescription:(id)description
{
  v3 = [description copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TSDTextureDescription allocWithZone:?]];
  session = [(TSDTextureDescription *)self session];
  [(TSDTextureDescription *)v4 setSession:session];

  [(TSDTextureDescription *)v4 setIsMagicMove:[(TSDTextureDescription *)self isMagicMove]];
  [(TSDTextureDescription *)v4 setIncludesActionBuilds:[(TSDTextureDescription *)self includesActionBuilds]];
  [(TSDTextureDescription *)v4 setShouldAddFinal:[(TSDTextureDescription *)self shouldAddFinal]];
  [(TSDTextureDescription *)v4 setShouldAddMagicMoveObjectOnly:[(TSDTextureDescription *)self shouldAddMagicMoveObjectOnly]];
  [(TSDTextureDescription *)v4 setShouldAddMasks:[(TSDTextureDescription *)self shouldAddMasks]];
  [(TSDTextureDescription *)v4 setShouldDistortToFit:[(TSDTextureDescription *)self shouldDistortToFit]];
  [(TSDTextureDescription *)v4 setShouldNotAddContainedReps:[(TSDTextureDescription *)self shouldNotAddContainedReps]];
  [(TSDTextureDescription *)v4 setShouldNotAddShapeAttributes:[(TSDTextureDescription *)self shouldNotAddShapeAttributes]];
  [(TSDTextureDescription *)v4 setShouldNotAddText:[(TSDTextureDescription *)self shouldNotAddText]];
  [(TSDTextureDescription *)v4 setShouldSeparateReflection:[(TSDTextureDescription *)self shouldSeparateReflection]];
  [(TSDTextureDescription *)v4 setShouldSeparateShadow:[(TSDTextureDescription *)self shouldSeparateShadow]];
  [(TSDTextureDescription *)v4 setShouldSeparateStroke:[(TSDTextureDescription *)self shouldSeparateStroke]];
  [(TSDTextureDescription *)v4 setShouldAddParameterizedStroke:[(TSDTextureDescription *)self shouldAddParameterizedStroke]];
  [(TSDTextureDescription *)v4 setShouldSeparateGroupedTextures:[(TSDTextureDescription *)self shouldSeparateGroupedTextures]];
  [(TSDTextureDescription *)v4 setShouldReverseStrokeDrawing:[(TSDTextureDescription *)self shouldReverseStrokeDrawing]];
  [(TSDTextureDescription *)v4 setShouldSeparateText:[(TSDTextureDescription *)self shouldSeparateText]];
  [(TSDTextureDescription *)v4 setShouldForceTextureGeneration:[(TSDTextureDescription *)self shouldForceTextureGeneration]];
  [(TSDTextureDescription *)v4 setShouldIgnoreScaleInSourceImage:[(TSDTextureDescription *)self shouldIgnoreScaleInSourceImage]];
  [(TSDTextureDescription *)v4 setStage:[(TSDTextureDescription *)self stage]];
  [(TSDTextureDescription *)v4 setDeliveryStyle:[(TSDTextureDescription *)self deliveryStyle]];
  [(TSDTextureDescription *)v4 setByGlyphStyle:[(TSDTextureDescription *)self byGlyphStyle]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    session = [(TSDTextureDescription *)self session];
    session2 = [v5 session];
    if (session == session2 && (v8 = -[TSDTextureDescription isMagicMove](self, "isMagicMove"), v8 == [v5 isMagicMove]) && (v9 = -[TSDTextureDescription includesActionBuilds](self, "includesActionBuilds"), v9 == objc_msgSend(v5, "includesActionBuilds")) && (v10 = -[TSDTextureDescription shouldAddFinal](self, "shouldAddFinal"), v10 == objc_msgSend(v5, "shouldAddFinal")) && (v11 = -[TSDTextureDescription shouldAddMagicMoveObjectOnly](self, "shouldAddMagicMoveObjectOnly"), v11 == objc_msgSend(v5, "shouldAddMagicMoveObjectOnly")) && (v12 = -[TSDTextureDescription shouldAddMasks](self, "shouldAddMasks"), v12 == objc_msgSend(v5, "shouldAddMasks")) && (v13 = -[TSDTextureDescription shouldDistortToFit](self, "shouldDistortToFit"), v13 == objc_msgSend(v5, "shouldDistortToFit")) && (v14 = -[TSDTextureDescription shouldNotAddContainedReps](self, "shouldNotAddContainedReps"), v14 == objc_msgSend(v5, "shouldNotAddContainedReps")) && (v15 = -[TSDTextureDescription shouldNotAddShapeAttributes](self, "shouldNotAddShapeAttributes"), v15 == objc_msgSend(v5, "shouldNotAddShapeAttributes")) && (v16 = -[TSDTextureDescription shouldNotAddText](self, "shouldNotAddText"), v16 == objc_msgSend(v5, "shouldNotAddText")) && (v17 = -[TSDTextureDescription shouldSeparateReflection](self, "shouldSeparateReflection"), v17 == objc_msgSend(v5, "shouldSeparateReflection")) && (v18 = -[TSDTextureDescription shouldSeparateShadow](self, "shouldSeparateShadow"), v18 == objc_msgSend(v5, "shouldSeparateShadow")) && (v19 = -[TSDTextureDescription shouldSeparateStroke](self, "shouldSeparateStroke"), v19 == objc_msgSend(v5, "shouldSeparateStroke")) && (v20 = -[TSDTextureDescription shouldAddParameterizedStroke](self, "shouldAddParameterizedStroke"), v20 == objc_msgSend(v5, "shouldAddParameterizedStroke")) && (v21 = -[TSDTextureDescription shouldSeparateGroupedTextures](self, "shouldSeparateGroupedTextures"), v21 == objc_msgSend(v5, "shouldSeparateGroupedTextures")) && (v22 = -[TSDTextureDescription shouldReverseStrokeDrawing](self, "shouldReverseStrokeDrawing"), v22 == objc_msgSend(v5, "shouldReverseStrokeDrawing")) && (v23 = -[TSDTextureDescription shouldSeparateText](self, "shouldSeparateText"), v23 == objc_msgSend(v5, "shouldSeparateText")) && (v24 = -[TSDTextureDescription shouldForceTextureGeneration](self, "shouldForceTextureGeneration"), v24 == objc_msgSend(v5, "shouldForceTextureGeneration")) && (v25 = -[TSDTextureDescription shouldIgnoreScaleInSourceImage](self, "shouldIgnoreScaleInSourceImage"), v25 == objc_msgSend(v5, "shouldIgnoreScaleInSourceImage")) && (v26 = -[TSDTextureDescription stage](self, "stage"), v26 == objc_msgSend(v5, "stage")) && (v27 = -[TSDTextureDescription deliveryStyle](self, "deliveryStyle"), v27 == objc_msgSend(v5, "deliveryStyle")))
    {
      byGlyphStyle = [(TSDTextureDescription *)self byGlyphStyle];
      v29 = byGlyphStyle == [v5 byGlyphStyle];
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)description
{
  v3 = objc_opt_new();
  if ([(TSDTextureDescription *)self isMagicMove])
  {
    [v3 addObject:@"isMagicMove"];
  }

  if ([(TSDTextureDescription *)self includesActionBuilds])
  {
    [v3 addObject:@"_includesActionBuilds"];
  }

  if ([(TSDTextureDescription *)self shouldAddFinal])
  {
    [v3 addObject:@"shouldAddFinal"];
  }

  if ([(TSDTextureDescription *)self shouldAddMagicMoveObjectOnly])
  {
    [v3 addObject:@"shouldAddMagicMoveObjectOnly"];
  }

  if ([(TSDTextureDescription *)self shouldAddMasks])
  {
    [v3 addObject:@"shouldAddMasks"];
  }

  if ([(TSDTextureDescription *)self shouldDistortToFit])
  {
    [v3 addObject:@"shouldDistortToFit"];
  }

  if ([(TSDTextureDescription *)self shouldForceTextureGeneration])
  {
    [v3 addObject:@"shouldForceTextureGeneration"];
  }

  if ([(TSDTextureDescription *)self shouldNotAddContainedReps])
  {
    [v3 addObject:@"shouldNotAddContainedReps"];
  }

  if ([(TSDTextureDescription *)self shouldNotAddShapeAttributes])
  {
    [v3 addObject:@"shouldNotAddShapeAttributes"];
  }

  if ([(TSDTextureDescription *)self shouldNotAddText])
  {
    [v3 addObject:@"shouldNotAddText"];
  }

  if ([(TSDTextureDescription *)self shouldSeparateReflection])
  {
    [v3 addObject:@"shouldSeparateReflection"];
  }

  if ([(TSDTextureDescription *)self shouldSeparateShadow])
  {
    [v3 addObject:@"shouldSeparateShadow"];
  }

  if ([(TSDTextureDescription *)self shouldSeparateStroke])
  {
    [v3 addObject:@"shouldSeparateStroke"];
  }

  if ([(TSDTextureDescription *)self shouldAddParameterizedStroke])
  {
    [v3 addObject:@"shouldAddParameterizedStroke"];
  }

  if ([(TSDTextureDescription *)self shouldSeparateGroupedTextures])
  {
    [v3 addObject:@"shouldSeparateGroupedTextures"];
  }

  if ([(TSDTextureDescription *)self shouldReverseStrokeDrawing])
  {
    [v3 addObject:@"shouldReverseStrokeDrawing"];
  }

  if ([(TSDTextureDescription *)self shouldSeparateText])
  {
    [v3 addObject:@"shouldSeparateText"];
  }

  if ([(TSDTextureDescription *)self shouldIgnoreScaleInSourceImage])
  {
    [v3 addObject:@"shouldIgnoreScaleInSourceImage"];
  }

  if ([(TSDTextureDescription *)self deliveryStyle])
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"tds: %ld", -[TSDTextureDescription deliveryStyle](self, "deliveryStyle")];
    [v3 addObject:v4];
  }

  if ([(TSDTextureDescription *)self byGlyphStyle])
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"glyph: %ld", -[TSDTextureDescription byGlyphStyle](self, "byGlyphStyle")];
    [v3 addObject:v5];
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"stage: %ld", -[TSDTextureDescription stage](self, "stage")];
  [v3 addObject:v6];

  session = [(TSDTextureDescription *)self session];

  if (session)
  {
    v8 = MEMORY[0x277CCACA8];
    session2 = [(TSDTextureDescription *)self session];
    v10 = [v8 stringWithFormat:@"session: %p", session2];
    [v3 addObject:v10];
  }

  v11 = MEMORY[0x277CCACA8];
  v16.receiver = self;
  v16.super_class = TSDTextureDescription;
  v12 = [(TSDTextureDescription *)&v16 description];
  v13 = [v3 componentsJoinedByString:{@", "}];
  v14 = [v11 stringWithFormat:@"%@: {%@}", v12, v13];

  return v14;
}

- (unint64_t)hash
{
  session = [(TSDTextureDescription *)self session];
  isMagicMove = [(TSDTextureDescription *)self isMagicMove];
  shouldAddMagicMoveObjectOnly = [(TSDTextureDescription *)self shouldAddMagicMoveObjectOnly];
  v6 = 2;
  if (!shouldAddMagicMoveObjectOnly)
  {
    v6 = 0;
  }

  v7 = v6 | isMagicMove;
  if ([(TSDTextureDescription *)self shouldDistortToFit])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  shouldForceTextureGeneration = [(TSDTextureDescription *)self shouldForceTextureGeneration];
  v10 = 8;
  if (!shouldForceTextureGeneration)
  {
    v10 = 0;
  }

  v11 = v7 | v8 | v10;
  if ([(TSDTextureDescription *)self shouldNotAddContainedReps])
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  shouldNotAddShapeAttributes = [(TSDTextureDescription *)self shouldNotAddShapeAttributes];
  v14 = 32;
  if (!shouldNotAddShapeAttributes)
  {
    v14 = 0;
  }

  v15 = v12 | v14;
  shouldNotAddText = [(TSDTextureDescription *)self shouldNotAddText];
  v17 = 64;
  if (!shouldNotAddText)
  {
    v17 = 0;
  }

  v18 = v11 | v15 | v17;
  if ([(TSDTextureDescription *)self shouldSeparateReflection])
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  shouldSeparateShadow = [(TSDTextureDescription *)self shouldSeparateShadow];
  v21 = 256;
  if (!shouldSeparateShadow)
  {
    v21 = 0;
  }

  v22 = v19 | v21;
  shouldSeparateStroke = [(TSDTextureDescription *)self shouldSeparateStroke];
  v24 = 512;
  if (!shouldSeparateStroke)
  {
    v24 = 0;
  }

  v25 = v22 | v24;
  shouldAddParameterizedStroke = [(TSDTextureDescription *)self shouldAddParameterizedStroke];
  v27 = 1024;
  if (!shouldAddParameterizedStroke)
  {
    v27 = 0;
  }

  v28 = v18 | v25 | v27;
  if ([(TSDTextureDescription *)self shouldReverseStrokeDrawing])
  {
    v29 = 2048;
  }

  else
  {
    v29 = 0;
  }

  shouldSeparateText = [(TSDTextureDescription *)self shouldSeparateText];
  v31 = 4096;
  if (!shouldSeparateText)
  {
    v31 = 0;
  }

  v32 = v29 | v31;
  shouldIgnoreScaleInSourceImage = [(TSDTextureDescription *)self shouldIgnoreScaleInSourceImage];
  v34 = 0x2000;
  if (!shouldIgnoreScaleInSourceImage)
  {
    v34 = 0;
  }

  v35 = v32 | v34;
  shouldAddMasks = [(TSDTextureDescription *)self shouldAddMasks];
  v37 = 0x4000;
  if (!shouldAddMasks)
  {
    v37 = 0;
  }

  v38 = v35 | v37;
  shouldAddFinal = [(TSDTextureDescription *)self shouldAddFinal];
  v40 = 0x8000;
  if (!shouldAddFinal)
  {
    v40 = 0;
  }

  v41 = v28 | v38 | v40;
  includesActionBuilds = [(TSDTextureDescription *)self includesActionBuilds];
  v43 = 0x10000;
  if (!includesActionBuilds)
  {
    v43 = 0;
  }

  v44 = v41 | v43 | ([(TSDTextureDescription *)self deliveryStyle]<< 17);
  v45 = v44 | ([(TSDTextureDescription *)self byGlyphStyle]<< 19);
  shouldSeparateGroupedTextures = [(TSDTextureDescription *)self shouldSeparateGroupedTextures];
  v47 = 0x200000;
  if (!shouldSeparateGroupedTextures)
  {
    v47 = 0;
  }

  v48 = v45 | v47 | ([(TSDTextureDescription *)self stage]<< 22);

  return v48 ^ session;
}

- (void)reset
{
  objc_storeWeak(&self->_session, 0);
  self->_byGlyphStyle = 0;
  *&self->_isMagicMove = 0;
  *&self->_shouldSeparateReflection = 0;
  *&self->_shouldDistortToFit = 0;
  self->_stage = 0;
  self->_deliveryStyle = 0;
}

- (TSDAnimationSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

@end