@interface TSDTextureContext
+ (TSDTextureContext)contextWithSession:(id)session;
+ (TSDTextureContext)contextWithTextureContext:(id)context;
+ (id)context;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)reset;
@end

@implementation TSDTextureContext

+ (id)context
{
  v2 = objc_alloc_init(TSDTextureContext);

  return v2;
}

+ (TSDTextureContext)contextWithSession:(id)session
{
  v4 = objc_alloc_init(TSDTextureContext);
  [(TSDTextureContext *)v4 setSession:session];

  return v4;
}

+ (TSDTextureContext)contextWithTextureContext:(id)context
{
  v3 = [context copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[TSDTextureContext allocWithZone:?]];
  [(TSDTextureContext *)v4 setSession:[(TSDTextureContext *)self session]];
  [(TSDTextureContext *)v4 setIsMagicMove:[(TSDTextureContext *)self isMagicMove]];
  [(TSDTextureContext *)v4 setShouldAddFinal:[(TSDTextureContext *)self shouldAddFinal]];
  [(TSDTextureContext *)v4 setShouldAddMagicMoveObjectOnly:[(TSDTextureContext *)self shouldAddMagicMoveObjectOnly]];
  [(TSDTextureContext *)v4 setShouldAddReversedFinal:[(TSDTextureContext *)self shouldAddReversedFinal]];
  [(TSDTextureContext *)v4 setShouldDistortToFit:[(TSDTextureContext *)self shouldDistortToFit]];
  [(TSDTextureContext *)v4 setShouldNotAddContainedReps:[(TSDTextureContext *)self shouldNotAddContainedReps]];
  [(TSDTextureContext *)v4 setShouldNotAddShapeAttributes:[(TSDTextureContext *)self shouldNotAddShapeAttributes]];
  [(TSDTextureContext *)v4 setShouldNotAddText:[(TSDTextureContext *)self shouldNotAddText]];
  [(TSDTextureContext *)v4 setShouldNotCacheTexture:[(TSDTextureContext *)self shouldNotCacheTexture]];
  [(TSDTextureContext *)v4 setShouldSeparateReflection:[(TSDTextureContext *)self shouldSeparateReflection]];
  [(TSDTextureContext *)v4 setShouldSeparateShadow:[(TSDTextureContext *)self shouldSeparateShadow]];
  [(TSDTextureContext *)v4 setShouldSeparateStroke:[(TSDTextureContext *)self shouldSeparateStroke]];
  [(TSDTextureContext *)v4 setShouldSeparateText:[(TSDTextureContext *)self shouldSeparateText]];
  [(TSDTextureContext *)v4 setShouldForceTextureGeneration:[(TSDTextureContext *)self shouldForceTextureGeneration]];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  session = [(TSDTextureContext *)self session];
  if (session != [equal session])
  {
    return 0;
  }

  isMagicMove = [(TSDTextureContext *)self isMagicMove];
  if (isMagicMove != [equal isMagicMove])
  {
    return 0;
  }

  shouldAddFinal = [(TSDTextureContext *)self shouldAddFinal];
  if (shouldAddFinal != [equal shouldAddFinal])
  {
    return 0;
  }

  shouldAddMagicMoveObjectOnly = [(TSDTextureContext *)self shouldAddMagicMoveObjectOnly];
  if (shouldAddMagicMoveObjectOnly != [equal shouldAddMagicMoveObjectOnly])
  {
    return 0;
  }

  shouldAddReversedFinal = [(TSDTextureContext *)self shouldAddReversedFinal];
  if (shouldAddReversedFinal != [equal shouldAddReversedFinal])
  {
    return 0;
  }

  shouldDistortToFit = [(TSDTextureContext *)self shouldDistortToFit];
  if (shouldDistortToFit != [equal shouldDistortToFit])
  {
    return 0;
  }

  shouldNotAddContainedReps = [(TSDTextureContext *)self shouldNotAddContainedReps];
  if (shouldNotAddContainedReps != [equal shouldNotAddContainedReps])
  {
    return 0;
  }

  shouldNotAddShapeAttributes = [(TSDTextureContext *)self shouldNotAddShapeAttributes];
  if (shouldNotAddShapeAttributes != [equal shouldNotAddShapeAttributes])
  {
    return 0;
  }

  shouldNotAddText = [(TSDTextureContext *)self shouldNotAddText];
  if (shouldNotAddText != [equal shouldNotAddText])
  {
    return 0;
  }

  shouldNotCacheTexture = [(TSDTextureContext *)self shouldNotCacheTexture];
  if (shouldNotCacheTexture != [equal shouldNotCacheTexture])
  {
    return 0;
  }

  shouldSeparateReflection = [(TSDTextureContext *)self shouldSeparateReflection];
  if (shouldSeparateReflection != [equal shouldSeparateReflection])
  {
    return 0;
  }

  shouldSeparateShadow = [(TSDTextureContext *)self shouldSeparateShadow];
  if (shouldSeparateShadow != [equal shouldSeparateShadow])
  {
    return 0;
  }

  shouldSeparateStroke = [(TSDTextureContext *)self shouldSeparateStroke];
  if (shouldSeparateStroke != [equal shouldSeparateStroke])
  {
    return 0;
  }

  shouldSeparateText = [(TSDTextureContext *)self shouldSeparateText];
  if (shouldSeparateText != [equal shouldSeparateText])
  {
    return 0;
  }

  shouldForceTextureGeneration = [(TSDTextureContext *)self shouldForceTextureGeneration];
  return shouldForceTextureGeneration ^ [equal shouldForceTextureGeneration] ^ 1;
}

- (id)description
{
  v3 = objc_opt_new();
  if ([(TSDTextureContext *)self isMagicMove])
  {
    [v3 addObject:@"isMagicMove"];
  }

  if ([(TSDTextureContext *)self shouldAddFinal])
  {
    [v3 addObject:@"shouldAddFinal"];
  }

  if ([(TSDTextureContext *)self shouldAddMagicMoveObjectOnly])
  {
    [v3 addObject:@"shouldAddMagicMoveObjectOnly"];
  }

  if ([(TSDTextureContext *)self shouldAddReversedFinal])
  {
    [v3 addObject:@"shouldAddReversedFinal"];
  }

  if ([(TSDTextureContext *)self shouldDistortToFit])
  {
    [v3 addObject:@"shouldDistortToFit"];
  }

  if ([(TSDTextureContext *)self shouldForceTextureGeneration])
  {
    [v3 addObject:@"shouldForceTextureGeneration"];
  }

  if ([(TSDTextureContext *)self shouldNotAddContainedReps])
  {
    [v3 addObject:@"shouldNotAddContainedReps"];
  }

  if ([(TSDTextureContext *)self shouldNotAddShapeAttributes])
  {
    [v3 addObject:@"shouldNotAddShapeAttributes"];
  }

  if ([(TSDTextureContext *)self shouldNotAddText])
  {
    [v3 addObject:@"shouldNotAddText"];
  }

  if ([(TSDTextureContext *)self shouldNotCacheTexture])
  {
    [v3 addObject:@"shouldNotCacheTexture"];
  }

  if ([(TSDTextureContext *)self shouldSeparateReflection])
  {
    [v3 addObject:@"shouldSeparateReflection"];
  }

  if ([(TSDTextureContext *)self shouldSeparateShadow])
  {
    [v3 addObject:@"shouldSeparateShadow"];
  }

  if ([(TSDTextureContext *)self shouldSeparateStroke])
  {
    [v3 addObject:@"shouldSeparateStroke"];
  }

  if ([(TSDTextureContext *)self shouldSeparateText])
  {
    [v3 addObject:@"shouldSeparateText"];
  }

  v6.receiver = self;
  v6.super_class = TSDTextureContext;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: {%@}", -[TSDTextureContext description](&v6, sel_description), objc_msgSend(v3, "componentsJoinedByString:", @", ")];

  return v4;
}

- (unint64_t)hash
{
  session = [(TSDTextureContext *)self session];
  isMagicMove = [(TSDTextureContext *)self isMagicMove];
  shouldAddFinal = [(TSDTextureContext *)self shouldAddFinal];
  v6 = 2;
  if (!shouldAddFinal)
  {
    v6 = 0;
  }

  v7 = v6 | isMagicMove;
  if ([(TSDTextureContext *)self shouldAddMagicMoveObjectOnly])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  shouldAddReversedFinal = [(TSDTextureContext *)self shouldAddReversedFinal];
  v10 = 8;
  if (!shouldAddReversedFinal)
  {
    v10 = 0;
  }

  v11 = v7 | v8 | v10;
  if ([(TSDTextureContext *)self shouldDistortToFit])
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  shouldForceTextureGeneration = [(TSDTextureContext *)self shouldForceTextureGeneration];
  v14 = 32;
  if (!shouldForceTextureGeneration)
  {
    v14 = 0;
  }

  v15 = v12 | v14;
  shouldNotAddContainedReps = [(TSDTextureContext *)self shouldNotAddContainedReps];
  v17 = 64;
  if (!shouldNotAddContainedReps)
  {
    v17 = 0;
  }

  v18 = v11 | v15 | v17;
  if ([(TSDTextureContext *)self shouldNotAddShapeAttributes])
  {
    v19 = 128;
  }

  else
  {
    v19 = 0;
  }

  shouldNotAddText = [(TSDTextureContext *)self shouldNotAddText];
  v21 = 256;
  if (!shouldNotAddText)
  {
    v21 = 0;
  }

  v22 = v19 | v21;
  shouldNotCacheTexture = [(TSDTextureContext *)self shouldNotCacheTexture];
  v24 = 512;
  if (!shouldNotCacheTexture)
  {
    v24 = 0;
  }

  v25 = v22 | v24;
  shouldSeparateReflection = [(TSDTextureContext *)self shouldSeparateReflection];
  v27 = 1024;
  if (!shouldSeparateReflection)
  {
    v27 = 0;
  }

  v28 = v18 | v25 | v27;
  if ([(TSDTextureContext *)self shouldSeparateShadow])
  {
    v29 = 2048;
  }

  else
  {
    v29 = 0;
  }

  shouldSeparateStroke = [(TSDTextureContext *)self shouldSeparateStroke];
  v31 = 4096;
  if (!shouldSeparateStroke)
  {
    v31 = 0;
  }

  v32 = v29 | v31;
  shouldSeparateText = [(TSDTextureContext *)self shouldSeparateText];
  v34 = 0x2000;
  if (!shouldSeparateText)
  {
    v34 = 0;
  }

  return (v28 | v32 | v34) ^ session;
}

- (void)reset
{
  self->_session = 0;
  *&self->_isMagicMove = 0;
  *&self->_shouldNotAddText = 0;
}

@end