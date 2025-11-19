@interface TSDTextureContext
+ (TSDTextureContext)contextWithSession:(id)a3;
+ (TSDTextureContext)contextWithTextureContext:(id)a3;
+ (id)context;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
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

+ (TSDTextureContext)contextWithSession:(id)a3
{
  v4 = objc_alloc_init(TSDTextureContext);
  [(TSDTextureContext *)v4 setSession:a3];

  return v4;
}

+ (TSDTextureContext)contextWithTextureContext:(id)a3
{
  v3 = [a3 copy];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(TSDTextureContext *)self session];
  if (v5 != [a3 session])
  {
    return 0;
  }

  v6 = [(TSDTextureContext *)self isMagicMove];
  if (v6 != [a3 isMagicMove])
  {
    return 0;
  }

  v7 = [(TSDTextureContext *)self shouldAddFinal];
  if (v7 != [a3 shouldAddFinal])
  {
    return 0;
  }

  v8 = [(TSDTextureContext *)self shouldAddMagicMoveObjectOnly];
  if (v8 != [a3 shouldAddMagicMoveObjectOnly])
  {
    return 0;
  }

  v9 = [(TSDTextureContext *)self shouldAddReversedFinal];
  if (v9 != [a3 shouldAddReversedFinal])
  {
    return 0;
  }

  v10 = [(TSDTextureContext *)self shouldDistortToFit];
  if (v10 != [a3 shouldDistortToFit])
  {
    return 0;
  }

  v11 = [(TSDTextureContext *)self shouldNotAddContainedReps];
  if (v11 != [a3 shouldNotAddContainedReps])
  {
    return 0;
  }

  v12 = [(TSDTextureContext *)self shouldNotAddShapeAttributes];
  if (v12 != [a3 shouldNotAddShapeAttributes])
  {
    return 0;
  }

  v13 = [(TSDTextureContext *)self shouldNotAddText];
  if (v13 != [a3 shouldNotAddText])
  {
    return 0;
  }

  v14 = [(TSDTextureContext *)self shouldNotCacheTexture];
  if (v14 != [a3 shouldNotCacheTexture])
  {
    return 0;
  }

  v15 = [(TSDTextureContext *)self shouldSeparateReflection];
  if (v15 != [a3 shouldSeparateReflection])
  {
    return 0;
  }

  v16 = [(TSDTextureContext *)self shouldSeparateShadow];
  if (v16 != [a3 shouldSeparateShadow])
  {
    return 0;
  }

  v17 = [(TSDTextureContext *)self shouldSeparateStroke];
  if (v17 != [a3 shouldSeparateStroke])
  {
    return 0;
  }

  v18 = [(TSDTextureContext *)self shouldSeparateText];
  if (v18 != [a3 shouldSeparateText])
  {
    return 0;
  }

  v20 = [(TSDTextureContext *)self shouldForceTextureGeneration];
  return v20 ^ [a3 shouldForceTextureGeneration] ^ 1;
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
  v3 = [(TSDTextureContext *)self session];
  v4 = [(TSDTextureContext *)self isMagicMove];
  v5 = [(TSDTextureContext *)self shouldAddFinal];
  v6 = 2;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = v6 | v4;
  if ([(TSDTextureContext *)self shouldAddMagicMoveObjectOnly])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TSDTextureContext *)self shouldAddReversedFinal];
  v10 = 8;
  if (!v9)
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

  v13 = [(TSDTextureContext *)self shouldForceTextureGeneration];
  v14 = 32;
  if (!v13)
  {
    v14 = 0;
  }

  v15 = v12 | v14;
  v16 = [(TSDTextureContext *)self shouldNotAddContainedReps];
  v17 = 64;
  if (!v16)
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

  v20 = [(TSDTextureContext *)self shouldNotAddText];
  v21 = 256;
  if (!v20)
  {
    v21 = 0;
  }

  v22 = v19 | v21;
  v23 = [(TSDTextureContext *)self shouldNotCacheTexture];
  v24 = 512;
  if (!v23)
  {
    v24 = 0;
  }

  v25 = v22 | v24;
  v26 = [(TSDTextureContext *)self shouldSeparateReflection];
  v27 = 1024;
  if (!v26)
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

  v30 = [(TSDTextureContext *)self shouldSeparateStroke];
  v31 = 4096;
  if (!v30)
  {
    v31 = 0;
  }

  v32 = v29 | v31;
  v33 = [(TSDTextureContext *)self shouldSeparateText];
  v34 = 0x2000;
  if (!v33)
  {
    v34 = 0;
  }

  return (v28 | v32 | v34) ^ v3;
}

- (void)reset
{
  self->_session = 0;
  *&self->_isMagicMove = 0;
  *&self->_shouldNotAddText = 0;
}

@end