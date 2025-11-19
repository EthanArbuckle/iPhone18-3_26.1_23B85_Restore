@interface PXSectionedLayoutSnapshot
+ (id)emptyLayoutSnapshot;
- (CGRect)frameForSectionAtIndex:(unint64_t)a3;
- (PXSectionedLayoutSnapshot)init;
- (PXSectionedLayoutSnapshot)initWithContentRect:(CGRect)a3;
- (PXSectionedLayoutSnapshot)initWithContentRect:(CGRect)a3 forSections:(id)a4;
- (_PXLayoutGeometry)geometryForItem:(SEL)a3;
- (id)description;
- (void)enumerateFramesForSectionsInRect:(CGRect)a3 usingBlock:(id)a4;
- (void)enumerateGeometriesForItemsInRect:(CGRect)a3 usingBlock:(id)a4;
@end

@implementation PXSectionedLayoutSnapshot

- (CGRect)frameForSectionAtIndex:(unint64_t)a3
{
  v6 = self->_sections;
  if ([(NSArray *)v6 count]<= a3)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutSnapshot.m" lineNumber:106 description:{@"Sectioned snapshot asked for rect for section %lu, but there are only %lu sections:\r%@", a3, -[NSArray count](v6, "count"), v6}];
  }

  v7 = [(NSArray *)v6 objectAtIndexedSubscript:a3];
  [v7 frame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)enumerateFramesForSectionsInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v30 = *MEMORY[0x1E69E9840];
  v9 = a4;
  [(PXLayoutPageMap *)self->_pageMap sourcesFromRect:x, y, width, height];
  v28 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = v27 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v25 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v24 + 1) + 8 * v14);
      [v15 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v32.origin.x = v17;
      v32.origin.y = v19;
      v32.size.width = v21;
      v32.size.height = v23;
      if (CGRectIntersectsRect(v31, v32))
      {
        v9[2](v9, [v15 index], &v28, v17, v19, v21, v23);
        if (v28)
        {
          break;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)enumerateGeometriesForItemsInRect:(CGRect)a3 usingBlock:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v39 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = [(PXLayoutPageMap *)self->_pageMap sourcesFromRect:x, y, width, height];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v34 + 1) + 8 * i);
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        v41.origin.x = v17;
        v41.origin.y = v19;
        v41.size.width = v21;
        v41.size.height = v23;
        if (CGRectIntersectsRect(v40, v41))
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __74__PXSectionedLayoutSnapshot_enumerateGeometriesForItemsInRect_usingBlock___block_invoke;
          v24[3] = &unk_1E7BB8400;
          v26 = v17;
          v27 = v19;
          v28 = v21;
          v29 = v23;
          v30 = x;
          v31 = y;
          v32 = width;
          v33 = height;
          v24[4] = v15;
          v25 = v9;
          [v15 enumerateGeometriesWithBlock:v24];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }
}

void __74__PXSectionedLayoutSnapshot_enumerateGeometriesForItemsInRect_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = vaddq_f64(*(a1 + 48), *(a2 + 8));
  *(a2 + 8) = v6;
  v23.size.width = *(a2 + 24);
  v23.size.height = *(a2 + 32);
  v23.origin.x = v6.f64[0] + v23.size.width * -0.5;
  v23.origin.y = v6.f64[1] + v23.size.height * -0.5;
  v6.f64[0] = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  if (CGRectIntersectsRect(*v6.f64, v23))
  {
    v10 = [MEMORY[0x1E696AC88] px_indexPathForItem:*a2 inSection:objc_msgSend(*(a1 + 32) withKind:{"index"), *(a2 + 96)}];
    v11 = *(a1 + 40);
    v12 = *(v11 + 16);
    v13 = *(a2 + 112);
    v21[6] = *(a2 + 96);
    v21[7] = v13;
    v21[8] = *(a2 + 128);
    v22 = *(a2 + 144);
    v14 = *(a2 + 48);
    v21[2] = *(a2 + 32);
    v21[3] = v14;
    v15 = *(a2 + 80);
    v21[4] = *(a2 + 64);
    v21[5] = v15;
    v16 = *(a2 + 16);
    v21[0] = *a2;
    v21[1] = v16;
    v12(v11, v10, v21, a3, v17, v18, v19, v20);
  }
}

- (_PXLayoutGeometry)geometryForItem:(SEL)a3
{
  v6 = a4;
  retstr->var7.height = 0.0;
  *&retstr->var5 = xmmword_1B4075480;
  *&retstr->var6.origin.y = unk_1B4075490;
  *&retstr->var6.size.height = xmmword_1B40754A0;
  *&retstr->var2.height = xmmword_1B4075440;
  *&retstr->var3.b = unk_1B4075450;
  *&retstr->var3.d = xmmword_1B4075460;
  *&retstr->var3.ty = unk_1B4075470;
  *&retstr->var0 = PXLayoutGeometryNull;
  *&retstr->var1.y = *algn_1B4075430;
  v7 = [v6 px_section];
  if (v7 < [(NSArray *)self->_sections count])
  {
    v8 = [(NSArray *)self->_sections objectAtIndexedSubscript:v7];
    v9 = [v6 px_item];
    v10 = [v8 geometriesWithKind:{objc_msgSend(v6, "px_kind")}];
    if (v9 < [v10 count])
    {
      if (v10)
      {
        [v10 geometryAtIndex:v9];
      }

      else
      {
        v23 = 0.0;
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        v14 = 0u;
      }

      *&retstr->var5 = v20;
      *&retstr->var6.origin.y = v21;
      *&retstr->var6.size.height = v22;
      retstr->var7.height = v23;
      *&retstr->var2.height = v16;
      *&retstr->var3.b = v17;
      *&retstr->var3.d = v18;
      *&retstr->var3.ty = v19;
      *&retstr->var0 = v14;
      *&retstr->var1.y = v15;
      [v8 frame];
      v12.f64[1] = v11;
      retstr->var1 = vaddq_f64(v12, retstr->var1);
    }
  }

  return result;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PXSectionedLayoutSnapshot;
  v3 = [(PXLayoutSnapshot *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@"contents:%@", self->_sections];

  return v4;
}

- (PXSectionedLayoutSnapshot)initWithContentRect:(CGRect)a3 forSections:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = PXSectionedLayoutSnapshot;
  v10 = [(PXLayoutSnapshot *)&v16 initWithContentRect:x, y, width, height];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v9 copyItems:1];
    sections = v10->_sections;
    v10->_sections = v11;

    v13 = [[PXLayoutPageMap alloc] initWithSources:v10->_sections contentRect:x, y, width, height];
    pageMap = v10->_pageMap;
    v10->_pageMap = v13;
  }

  return v10;
}

- (PXSectionedLayoutSnapshot)initWithContentRect:(CGRect)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutSnapshot.m" lineNumber:38 description:{@"%s is not available as initializer", "-[PXSectionedLayoutSnapshot initWithContentRect:]"}];

  abort();
}

- (PXSectionedLayoutSnapshot)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSectionedLayoutSnapshot.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXSectionedLayoutSnapshot init]"}];

  abort();
}

+ (id)emptyLayoutSnapshot
{
  if (emptyLayoutSnapshot_onceToken != -1)
  {
    dispatch_once(&emptyLayoutSnapshot_onceToken, &__block_literal_global_16505);
  }

  v3 = emptyLayoutSnapshot_emptySnapshot;

  return v3;
}

uint64_t __48__PXSectionedLayoutSnapshot_emptyLayoutSnapshot__block_invoke()
{
  v0 = [PXSectionedLayoutSnapshot alloc];
  v1 = [(PXSectionedLayoutSnapshot *)v0 initWithContentRect:MEMORY[0x1E695E0F0] forSections:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v2 = emptyLayoutSnapshot_emptySnapshot;
  emptyLayoutSnapshot_emptySnapshot = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end