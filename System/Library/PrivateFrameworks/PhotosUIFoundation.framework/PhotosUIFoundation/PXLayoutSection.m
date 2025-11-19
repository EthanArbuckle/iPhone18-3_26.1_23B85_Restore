@interface PXLayoutSection
- (CGRect)frame;
- (CGSize)size;
- (PXLayoutSection)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)geometriesWithKind:(int64_t)a3;
- (void)enumerateGeometriesWithBlock:(id)a3;
- (void)setGeometries:(id)a3 withKind:(int64_t)a4;
@end

@implementation PXLayoutSection

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)size
{
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)enumerateGeometriesWithBlock:(id)a3
{
  v4 = a3;
  geometriesByKind = self->_geometriesByKind;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__PXLayoutSection_enumerateGeometriesWithBlock___block_invoke;
  v7[3] = &unk_1E7BB5D30;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)geometriesByKind enumerateKeysAndObjectsUsingBlock:v7];
}

void __48__PXLayoutSection_enumerateGeometriesWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 32);
      if (v6)
      {
        [v6 geometryAtIndex:v7];
      }

      else
      {
        v10 = 0;
        memset(v9, 0, sizeof(v9));
      }

      (*(v8 + 16))(v8, v9, a4);
      if (*a4 == 1)
      {
        break;
      }

      ++v7;
    }

    while (v7 < [v6 count]);
  }
}

- (id)geometriesWithKind:(int64_t)a3
{
  geometriesByKind = self->_geometriesByKind;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)geometriesByKind objectForKeyedSubscript:v4];

  return v5;
}

- (void)setGeometries:(id)a3 withKind:(int64_t)a4
{
  v8 = a3;
  geometriesByKind = self->_geometriesByKind;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  if (v8)
  {
    [(NSMutableDictionary *)geometriesByKind setObject:v8 forKey:v7];
  }

  else
  {
    [(NSMutableDictionary *)geometriesByKind removeObjectForKey:v7];
  }
}

- (id)description
{
  v34 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PXLayoutSection;
  v3 = [(PXLayoutSection *)&v32 description];
  v4 = [v3 stringByAppendingFormat:@" index:%ld", self->_index];

  v5 = NSStringFromCGRect(self->_frame);
  v6 = [v4 stringByAppendingFormat:@" frame:%@", v5];

  v7 = [(PXLayoutSection *)self isAccurate];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v6 stringByAppendingFormat:@" isAccurate:%@", v8];

  v10 = [v9 stringByAppendingString:@" geometryItems:{\r"];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_geometriesByKind;
  v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v27)
  {
    v26 = *v29;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v29 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        v13 = [v10 stringByAppendingFormat:@" kind: %@:{\r", v12];

        v14 = [(NSMutableDictionary *)self->_geometriesByKind objectForKeyedSubscript:v12];
        if ([v14 count])
        {
          v15 = 0;
          do
          {
            if (v14)
            {
              [v14 geometryAtIndex:v15];
              v16 = 0;
              v17 = 0;
            }

            else
            {
              v17 = 0;
              v16 = 0;
            }

            v18 = MEMORY[0x1E696AEC0];
            v19 = NSStringFromCGPoint(*&v16);
            v36.width = 0.0;
            v36.height = 0.0;
            v20 = NSStringFromCGSize(v36);
            v21 = [v18 stringWithFormat:@"  [geometry[%ld] = {center:%@, size:%@}]\r", 0, v19, v20];

            v22 = [v13 stringByAppendingString:v21];

            ++v15;
            v13 = v22;
          }

          while (v15 < [v14 count]);
        }

        else
        {
          v22 = v13;
        }

        v10 = [v22 stringByAppendingString:@"}"];
      }

      v27 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v27);
  }

  v23 = [v10 stringByAppendingString:@"}"];

  return v23;
}

- (PXLayoutSection)init
{
  v6.receiver = self;
  v6.super_class = PXLayoutSection;
  v2 = [(PXLayoutSection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    geometriesByKind = v2->_geometriesByKind;
    v2->_geometriesByKind = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  *(v4 + 3) = self->_identifier;
  v4[16] = self->_accurate;
  *(v4 + 4) = self->_index;
  origin = self->_frame.origin;
  *(v4 + 56) = self->_frame.size;
  *(v4 + 40) = origin;
  v6 = [(NSMutableDictionary *)self->_geometriesByKind mutableCopy];
  v7 = *(v4 + 1);
  *(v4 + 1) = v6;

  return v4;
}

@end