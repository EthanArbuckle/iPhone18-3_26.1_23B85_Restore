@interface PTFocusBlurMap
- (CGRect)_boxFromComponent:(id)component;
- (CGRect)_inputSensorPixelRect;
- (CGRect)_normalRectFromPixelRect:(CGRect)rect;
- (CGRect)_pixelRectFromNormalRect:(CGRect)rect;
- (CGRect)_sensorPixelRectFromRegion:(id)region;
- (CGRect)_sensorPixelRectFromTileRect:(CGRect)rect;
- (CGRect)_tileRectFromNodes:(id)nodes;
- (CGRect)_tileRectFromSensorPixelRect:(CGRect)rect;
- (CGRect)_validNormalizedRectFromSensorPixelRect:(CGRect)rect;
- (CGRect)autoFocusRect;
- (CGRect)focusValidNormalizedRect;
- (CGRect)inputValidNormalizedRect;
- (CGRect)validNormalizedRectFromRegion:(id)region;
- (NSIndexSet)inFocusRegion;
- (NSIndexSet)largestFocusRegion;
- (PTFocusBlurMap)init;
- (PTFocusBlurMap)initWithFocusBlurMapData:(id)data sensorSize:(CGSize)size validSensorRect:(CGRect)rect;
- (PTFocusBlurMap)initWithFocusBlurMapDictionary:(id)dictionary;
- (id)_blurExtendedNodes:(id)nodes blurMin:(int)min blurMax:(int)max;
- (id)_blurExtendedNodes:(id)nodes options:(unint64_t)options;
- (id)_connectedComponentWithNode:(unint64_t)node unvisited:(id)unvisited;
- (id)_connectedComponents:(id)components;
- (id)_inFocusNodes;
- (id)_largestOfComponents:(id)components;
- (id)_nodesBetweenBlurMin:(int)min blurMax:(int)max;
- (id)_nodesForNormalizedRect:(CGRect)rect;
- (id)_nodesFromTileRect:(CGRect)rect;
- (void)_getBlurRangeOfNodes:(id)nodes blurMin:(int *)min blurMax:(int *)max;
- (void)_initValidRectFromSensorWidth:(unint64_t)width height:(unint64_t)height;
- (void)dealloc;
@end

@implementation PTFocusBlurMap

- (PTFocusBlurMap)init
{
  v5.receiver = self;
  v5.super_class = PTFocusBlurMap;
  v2 = [(PTFocusBlurMap *)&v5 init];
  if (v2)
  {
    v2->_map = malloc_type_calloc(1uLL, 0x1028uLL, 0x10000404F0D65F2uLL);
    v3 = *(MEMORY[0x277CBF3A0] + 16);
    v2->_autoFocusRect.origin = *MEMORY[0x277CBF3A0];
    v2->_autoFocusRect.size = v3;
  }

  return v2;
}

- (void)dealloc
{
  map = self->_map;
  if (map)
  {
    free(map);
  }

  v4.receiver = self;
  v4.super_class = PTFocusBlurMap;
  [(PTFocusBlurMap *)&v4 dealloc];
}

- (PTFocusBlurMap)initWithFocusBlurMapData:(id)data sensorSize:(CGSize)size validSensorRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = size.height;
  v10 = size.width;
  dataCopy = data;
  if (![dataCopy length])
  {
    goto LABEL_7;
  }

  v17.receiver = self;
  v17.super_class = PTFocusBlurMap;
  self = [(PTFocusBlurMap *)&v17 init];
  if (self)
  {
    v13 = malloc_type_malloc([dataCopy length], 0xF4989469uLL);
    self->_map = v13;
    [dataCopy getBytes:v13 length:{objc_msgSend(dataCopy, "length")}];
    map = self->_map;
    if (map->var0 && map->var1.var12 * map->var1.var11 - 1 <= 0x1FF)
    {
      self->_sensorWidth = v10;
      self->_sensorHeight = v9;
      self->_validX = x;
      self->_validY = y;
      self->_validWidth = width;
      self->_validHeight = height;
      goto LABEL_6;
    }

LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

LABEL_6:
  self = self;
  selfCopy = self;
LABEL_8:

  return selfCopy;
}

- (PTFocusBlurMap)initWithFocusBlurMapDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(PTFocusBlurMap *)self init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_22;
  }

  map = v5->_map;
  if (!map)
  {
    goto LABEL_22;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"flow"];
  v9 = v8;
  if (v8)
  {
    v10 = [(PTFocusBlurMap *)v8 objectForKeyedSubscript:@"frame"];
    if (!v10)
    {
LABEL_14:

      v9 = 0;
      goto LABEL_23;
    }

    v11 = v10;
    v12 = [v10 objectForKeyedSubscript:@"focusPos"];
    map->var1.var0 = [v12 intValue];

    v13 = [(PTFocusBlurMap *)v9 objectForKeyedSubscript:@"regions"];
    v14 = [v13 objectAtIndexedSubscript:0];

    if (!v14 || ([v14 objectForKeyedSubscript:@"enabled"], v15 = objc_claimAutoreleasedReturnValue(), v6->_map->var0 = objc_msgSend(v15, "BOOLValue"), v15, !v6->_map->var0))
    {

      goto LABEL_14;
    }

    v48 = v11;
    v16 = [v14 objectForKeyedSubscript:@"sizeX"];
    v6->_sensorWidth = [v16 intValue];

    v17 = [v14 objectForKeyedSubscript:@"sizeY"];
    v6->_sensorHeight = [v17 intValue];

    [(PTFocusBlurMap *)v6 _initValidRectFromSensorWidth:v6->_sensorWidth height:v6->_sensorHeight];
    v18 = [v14 objectForKeyedSubscript:@"startX"];
    map->var1.var1 = [v18 intValue];

    v19 = [v14 objectForKeyedSubscript:@"startY"];
    map->var1.var2 = [v19 intValue];

    v20 = [v14 objectForKeyedSubscript:@"sizeX"];
    map->var1.var3 = [v20 intValue];

    v21 = [v14 objectForKeyedSubscript:@"sizeY"];
    map->var1.var4 = [v21 intValue];

    v22 = [v14 objectForKeyedSubscript:@"startX"];
    map->var1.var5 = [v22 intValue];

    v23 = [v14 objectForKeyedSubscript:@"startY"];
    map->var1.var6 = [v23 intValue];

    v24 = [v14 objectForKeyedSubscript:@"sizeX"];
    map->var1.var7 = [v24 intValue];

    v25 = [v14 objectForKeyedSubscript:@"sizeY"];
    map->var1.var8 = [v25 intValue];

    v26 = [v14 objectForKeyedSubscript:@"tileSizeX"];
    map->var1.var9 = [v26 intValue];

    v27 = [v14 objectForKeyedSubscript:@"tileSizeY"];
    map->var1.var10 = [v27 intValue];

    v28 = [v14 objectForKeyedSubscript:@"tileCountX"];
    map->var1.var11 = [v28 intValue];

    v29 = [v14 objectForKeyedSubscript:@"tileCountY"];
    map->var1.var12 = [v29 intValue];

    v30 = [v14 objectForKeyedSubscript:@"tiles"];
    if (!v30)
    {
LABEL_12:

      goto LABEL_14;
    }

    v31 = map->var1.var12 * map->var1.var11;
    if (v31 > 0x200)
    {
      v32 = _PTLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [(PTFocusBlurMap *)v31 initWithFocusBlurMapDictionary:v32];
      }

      goto LABEL_12;
    }

    if (v31)
    {
      v33 = 0;
      p_var5 = &v6->_map->var2[0].var5;
      do
      {
        v35 = [v30 objectAtIndexedSubscript:v33];
        v36 = [v35 objectForKeyedSubscript:@"defocus"];
        [v36 floatValue];
        *(p_var5 - 3) = vcvts_n_s32_f32(v37, 8uLL);

        v38 = [v30 objectAtIndexedSubscript:v33];
        v39 = [v38 objectForKeyedSubscript:@"conf"];
        intValue = [v39 intValue];
        v41 = intValue + 255;
        if (intValue >= 0)
        {
          HIBYTE(v41) = BYTE1(intValue);
        }

        *(p_var5 - 4) = HIBYTE(v41);

        v42 = [v30 objectAtIndexedSubscript:v33];
        v43 = [v42 objectForKeyedSubscript:@"flags"];

        if (!v43)
        {
          goto LABEL_12;
        }

        v44 = [v43 objectForKeyedSubscript:@"valid"];
        *(p_var5 - 2) = [v44 BOOLValue];

        v45 = [v43 objectForKeyedSubscript:@"flat"];
        *(p_var5 - 1) = [v45 BOOLValue];

        v46 = [v43 objectForKeyedSubscript:@"level"];
        *p_var5 = [v46 intValue];
        p_var5 += 8;
      }

      while (v31 != ++v33);
    }

LABEL_22:
    v9 = v6;
  }

LABEL_23:

  return v9;
}

- (void)_initValidRectFromSensorWidth:(unint64_t)width height:(unint64_t)height
{
  v4 = width / 1.78;
  self->_validWidth = width;
  self->_validHeight = v4;
  self->_validX = 0;
  self->_validY = height - (v4 >> 1);
}

- (NSIndexSet)inFocusRegion
{
  v3 = [(PTFocusBlurMap *)self _nodesForNormalizedRect:self->_autoFocusRect.origin.x, self->_autoFocusRect.origin.y, self->_autoFocusRect.size.width, self->_autoFocusRect.size.height];
  v4 = [(PTFocusBlurMap *)self _blurExtendedNodes:v3 options:1];

  return v4;
}

- (NSIndexSet)largestFocusRegion
{
  inFocusRegion = [(PTFocusBlurMap *)self inFocusRegion];
  v4 = [(PTFocusBlurMap *)self _connectedComponents:inFocusRegion];
  v5 = [(PTFocusBlurMap *)self _largestOfComponents:v4];

  return v5;
}

- (CGRect)_inputSensorPixelRect
{
  map = self->_map;
  LOWORD(v2) = map->var1.var1;
  v7 = v2;
  LOWORD(v3) = map->var1.var2;
  v8 = v3;
  LOWORD(v4) = map->var1.var3;
  v9 = v4;
  LOWORD(v5) = map->var1.var4;
  v10 = v5;
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (CGRect)inputValidNormalizedRect
{
  map = self->_map;
  LOBYTE(v2) = map->var1.var11;
  v5 = v2;
  LOBYTE(v2) = map->var1.var12;
  [(PTFocusBlurMap *)self _sensorPixelRectFromTileRect:0.0, 0.0, v5, v2];

  [(PTFocusBlurMap *)self _validNormalizedRectFromSensorPixelRect:?];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

- (CGRect)focusValidNormalizedRect
{
  largestFocusRegion = [(PTFocusBlurMap *)self largestFocusRegion];
  [(PTFocusBlurMap *)self _sensorPixelRectFromRegion:largestFocusRegion];
  [(PTFocusBlurMap *)self _validNormalizedRectFromSensorPixelRect:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)validNormalizedRectFromRegion:(id)region
{
  [(PTFocusBlurMap *)self _sensorPixelRectFromRegion:region];

  [(PTFocusBlurMap *)self _validNormalizedRectFromSensorPixelRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (id)_nodesForNormalizedRect:(CGRect)rect
{
  [(PTFocusBlurMap *)self _pixelRectFromNormalRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(PTFocusBlurMap *)self _tileRectFromSensorPixelRect:?];

  return [(PTFocusBlurMap *)self _nodesFromTileRect:?];
}

- (id)_nodesBetweenBlurMin:(int)min blurMax:(int)max
{
  v4 = *&max;
  v5 = *&min;
  indexSet = [MEMORY[0x277CCAA78] indexSet];
  v8 = [(PTFocusBlurMap *)self _blurExtendedNodes:indexSet blurMin:v5 blurMax:v4];

  return v8;
}

- (id)_blurExtendedNodes:(id)nodes blurMin:(int)min blurMax:(int)max
{
  nodesCopy = nodes;
  v9 = [nodesCopy mutableCopy];
  map = self->_map;
  if (map->var1.var12 * map->var1.var11)
  {
    v11 = 0;
    v12 = 40;
    do
    {
      v13 = *(&map->var0 + v12);
      if (v13 >= min && v13 <= max)
      {
        [v9 addIndex:v11];
        map = self->_map;
      }

      ++v11;
      v12 += 8;
    }

    while (v11 < map->var1.var12 * map->var1.var11);
  }

  v15 = [v9 copy];

  return v15;
}

- (void)_getBlurRangeOfNodes:(id)nodes blurMin:(int *)min blurMax:(int *)max
{
  nodesCopy = nodes;
  *min = 0x7FFFFFFF;
  *max = 0x80000000;
  v12 = nodesCopy;
  firstIndex = [nodesCopy firstIndex];
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (i = firstIndex; i != 0x7FFFFFFFFFFFFFFFLL; i = [v12 indexGreaterThanIndex:?])
    {
      var0 = self->_map->var2[i].var0;
      if (*min > var0)
      {
        *min = var0;
      }

      if (*max < var0)
      {
        *max = var0;
      }
    }
  }
}

- (id)_blurExtendedNodes:(id)nodes options:(unint64_t)options
{
  optionsCopy = options;
  nodesCopy = nodes;
  v11 = 0;
  if (![nodesCopy count])
  {
    if ((optionsCopy & 2) != 0)
    {
      v7 = 4294967040;
    }

    else
    {
      v7 = 0;
    }

    HIDWORD(v11) = v7;
    v8 = 0x7FFFFFFFLL;
    goto LABEL_14;
  }

  [(PTFocusBlurMap *)self _getBlurRangeOfNodes:nodesCopy blurMin:&v11 + 4 blurMax:&v11];
  v7 = HIDWORD(v11);
  if (optionsCopy)
  {
    if (SHIDWORD(v11) >= 1)
    {
      v7 = 0;
      HIDWORD(v11) = 0;
    }

    v8 = v11;
    if ((v11 & 0x80000000) != 0)
    {
      v8 = 0;
      LODWORD(v11) = 0;
    }
  }

  else
  {
    v8 = v11;
  }

  if ((optionsCopy & 2) != 0)
  {
    v7 = (v7 - 256);
    HIDWORD(v11) = v7;
    v8 = (v8 + 256);
LABEL_14:
    LODWORD(v11) = v8;
  }

  v9 = [(PTFocusBlurMap *)self _blurExtendedNodes:nodesCopy blurMin:v7 blurMax:v8];

  return v9;
}

- (id)_inFocusNodes
{
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  map = self->_map;
  if (map->var1.var12 * map->var1.var11)
  {
    v5 = 0;
    v6 = 42;
    do
    {
      if (*(&map->var0 + v6))
      {
        [indexSet addIndex:v5];
        map = self->_map;
      }

      ++v5;
      v6 += 8;
    }

    while (v5 < map->var1.var12 * map->var1.var11);
  }

  v7 = [indexSet copy];

  return v7;
}

- (id)_connectedComponentWithNode:(unint64_t)node unvisited:(id)unvisited
{
  unvisitedCopy = unvisited;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v7 = [MEMORY[0x277CCAB58] indexSetWithIndex:node];
  v8 = v7;
  while ([v7 count])
  {
    firstIndex = [v8 firstIndex];
    [indexSet addIndex:firstIndex];
    [v8 removeIndex:firstIndex];
    [unvisitedCopy removeIndex:firstIndex];
    var11 = self->_map->var1.var11;
    v11 = firstIndex / var11;
    v12 = firstIndex % var11;
    for (i = -1; i != 2; ++i)
    {
      v14 = i + v11;
      v15 = -1;
      v16 = 3;
      do
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          v17 = v15 + v12;
          if ((v15 + v12) >= 0)
          {
            map = self->_map;
            if (v14 < map->var1.var12)
            {
              v19 = map->var1.var11;
              if (v17 < v19)
              {
                v20 = v17 + v14 * v19;
                if ([unvisitedCopy containsIndex:v20])
                {
                  [v8 addIndex:v20];
                }
              }
            }
          }
        }

        ++v15;
        --v16;
      }

      while (v16);
    }

    v7 = v8;
  }

  v21 = [indexSet copy];

  return v21;
}

- (id)_connectedComponents:(id)components
{
  componentsCopy = components;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [componentsCopy mutableCopy];
  v7 = v6;
  while ([v6 count])
  {
    v8 = -[PTFocusBlurMap _connectedComponentWithNode:unvisited:](self, "_connectedComponentWithNode:unvisited:", [v7 firstIndex], v7);
    [array addObject:v8];

    v6 = v7;
  }

  v9 = [array copy];

  return v9;
}

- (id)_largestOfComponents:(id)components
{
  v19 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  indexSet = [MEMORY[0x277CCAA78] indexSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = componentsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 count];
        if (v11 > [indexSet count])
        {
          v12 = v10;

          indexSet = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return indexSet;
}

- (CGRect)_validNormalizedRectFromSensorPixelRect:(CGRect)rect
{
  validWidth = self->_validWidth;
  v4 = (rect.origin.x - self->_validX) / validWidth;
  validHeight = self->_validHeight;
  v6 = (rect.origin.y - self->_validY) / validHeight;
  v7 = rect.size.width / validWidth;
  v8 = rect.size.height / validHeight;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v4;
  return result;
}

- (CGRect)_normalRectFromPixelRect:(CGRect)rect
{
  map = self->_map;
  LOWORD(v3) = map->var1.var3;
  v6 = v3;
  v7 = rect.origin.x / v6;
  LOWORD(v4) = map->var1.var4;
  v8 = v4;
  v9 = rect.origin.y / v8;
  v10 = rect.size.width / v6;
  v11 = rect.size.height / v8;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v7;
  return result;
}

- (CGRect)_pixelRectFromNormalRect:(CGRect)rect
{
  map = self->_map;
  LOWORD(v3) = map->var1.var3;
  v6 = v3;
  v7 = rect.origin.x * v6;
  LOWORD(v4) = map->var1.var4;
  v8 = v4;
  v9 = rect.origin.y * v8;
  v10 = rect.size.width * v6;
  v11 = rect.size.height * v8;
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v7;
  return result;
}

- (CGRect)_tileRectFromSensorPixelRect:(CGRect)rect
{
  map = self->_map;
  LOWORD(v3) = map->var1.var1;
  *&v6 = v3;
  v7 = rect.origin.x - *&v6;
  LOWORD(v6) = map->var1.var9;
  v8 = v6;
  v9 = v7 / v8;
  LOWORD(v4) = map->var1.var2;
  *&v10 = v4;
  v11 = rect.origin.y - *&v10;
  LOWORD(v10) = map->var1.var10;
  v12 = v10;
  v13 = v11 / v12;
  v14 = rect.size.width / v8;
  v15 = rect.size.height / v12;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v9;
  return result;
}

- (CGRect)_sensorPixelRectFromTileRect:(CGRect)rect
{
  map = self->_map;
  LOWORD(v3) = map->var1.var1;
  *&v7 = v3;
  LOWORD(v4) = map->var1.var9;
  v8 = v4;
  v9 = *&v7 + rect.origin.x * v8;
  LOWORD(v7) = map->var1.var2;
  LOWORD(v5) = map->var1.var10;
  v10 = v5;
  v11 = v7 + rect.origin.y * v10;
  v12 = rect.size.width * v8;
  v13 = rect.size.height * v10;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v9;
  return result;
}

- (CGRect)_tileRectFromNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    map = self->_map;
    var11 = map->var1.var11;
    var12 = map->var1.var12;
    firstIndex = [nodesCopy firstIndex];
    if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v15 = firstIndex;
      v10 = 0;
      v9 = 0;
      do
      {
        v16 = self->_map->var1.var11;
        v17 = v15 / v16;
        v18 = v15 % v16;
        if (v18 < var11)
        {
          var11 = v18;
        }

        if (v17 < var12)
        {
          var12 = v17;
        }

        if (v18 >= v9)
        {
          v9 = v18 + 1;
        }

        if (v17 + 1 > v10)
        {
          v10 = v17 + 1;
        }

        v15 = [nodesCopy indexGreaterThanIndex:?];
      }

      while (v15 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v19 = v9 - var11;
    if (v9 < var11)
    {
      v19 = 0;
    }

    v20 = v10 - var12;
    if (v10 < var12)
    {
      v20 = 0;
    }

    v11 = var11;
    v12 = var12;
    v13 = v19;
    v14 = v20;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v13 = *(MEMORY[0x277CBF3A0] + 16);
    v14 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (id)_nodesFromTileRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  v9 = floor(CGRectGetMinX(v26));
  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  v11 = floor(CGRectGetMinY(v27));
  if (v11 < 0.0)
  {
    v11 = 0.0;
  }

  v12 = v11;
  v28.origin.x = x;
  v28.origin.y = y;
  v28.size.width = width;
  v28.size.height = height;
  v13 = ceil(CGRectGetMaxX(v28));
  LOBYTE(v14) = self->_map->var1.var11;
  v15 = v14;
  if (v13 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v17 = ceil(CGRectGetMaxY(v29));
  LOBYTE(v18) = self->_map->var1.var12;
  v19 = v18;
  if (v17 >= v19)
  {
    v17 = v19;
  }

  v20 = v17;
  if (v12 < v17)
  {
    v21 = v16;
    do
    {
      v22 = v10;
      if (v10 < v21)
      {
        do
        {
          [indexSet addIndex:v22 + v12 * self->_map->var1.var11];
          ++v22;
        }

        while (v21 != v22);
      }

      ++v12;
    }

    while (v12 != v20);
  }

  v23 = [indexSet copy];

  return v23;
}

- (CGRect)_sensorPixelRectFromRegion:(id)region
{
  [(PTFocusBlurMap *)self _tileRectFromNodes:region];

  [(PTFocusBlurMap *)self _sensorPixelRectFromTileRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)_boxFromComponent:(id)component
{
  [(PTFocusBlurMap *)self _tileRectFromNodes:component];
  [(PTFocusBlurMap *)self _sensorPixelRectFromTileRect:?];

  [(PTFocusBlurMap *)self _normalRectFromPixelRect:?];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGRect)autoFocusRect
{
  objc_copyStruct(v6, &self->_autoFocusRect, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)initWithFocusBlurMapDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "ignoring blur map with tile count %@ - too big", &v4, 0xCu);
}

@end