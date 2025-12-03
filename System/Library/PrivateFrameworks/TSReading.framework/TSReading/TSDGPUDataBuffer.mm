@interface TSDGPUDataBuffer
+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size;
+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size device:(id)device;
+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count;
+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count device:(id)device;
+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount;
+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount device:(id)device;
+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute;
+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border;
+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border device:(id)device;
+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute device:(id)device;
+ (void)p_addTransparentBorderInsetToTextureRect:(CGRect *)rect vertexRect:(CGRect *)vertexRect;
- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index;
- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index;
- (BOOL)p_setAttributeUpdateData:(id *)data fromAttribute:(id)attribute;
- (NSString)description;
- (TSDGPUDataBuffer)initWithVertexAttributes:(id)attributes meshSize:(CGSize)size bufferCount:(unint64_t)count;
- (TSDGPUDataBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount bufferCount:(unint64_t)bufferCount;
- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute;
- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border;
- (float)metalFloatForAttribute:(id)attribute atIndex:(unint64_t)index;
- (id)vertexAttributeNamed:(id)named;
- (void)dealloc;
- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index;
- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index advanceDynamicBuffer:(BOOL)buffer;
- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index range:(_NSRange)range advanceDynamicBuffer:(BOOL)buffer;
- (void)enableDataBuffer;
- (void)encodeWithEncoder:(id)encoder atIndex:(unint64_t)index;
- (void)p_setupElementArrayBufferIfNecessary;
- (void)setDataForAttribute:(id)attribute atIndex:(unint64_t)index fromAttribute:(id)fromAttribute dataBuffer:(id)buffer index:(unint64_t)a7;
- (void)setGLPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setGLPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setMetalFloat:(float)float forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setMetalPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setMetalPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)setMetalPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index;
- (void)teardown;
- (void)updateDataBufferAttributes:(id)attributes withBlock:(id)block;
- (void)updateDataBufferAttributesWithBlock:(id)block;
- (void)updateMetalDataBufferAttributes:(id)attributes withBlock:(id)block;
@end

@implementation TSDGPUDataBuffer

- (void)p_setupElementArrayBufferIfNecessary
{
  if (!self->_gLElementDataBufferWasSetup)
  {
    if (self->_gLElementData)
    {
      width = self->_gLElementMeshSize.width;
      height = self->_gLElementMeshSize.height;
      if (width != *MEMORY[0x277CBF3A8] || height != *(MEMORY[0x277CBF3A8] + 8))
      {
        if (height + -1.0 > 0.0)
        {
          v6 = 0;
          v7 = 0;
          v8 = 0.0;
          do
          {
            v9 = ++v6;
            if (width > 0.0)
            {
              v10 = 0.0;
              v11 = 1;
              do
              {
                [(TSDGPUDataBuffer *)self setGLushort:(v10 + v8 * width) forIndexElement:v7];
                v12 = v7 + 2;
                [(TSDGPUDataBuffer *)self setGLushort:(v10 + v9 * self->_gLElementMeshSize.width) forIndexElement:v7 + 1];
                v10 = v11;
                width = self->_gLElementMeshSize.width;
                ++v11;
                v7 += 2;
              }

              while (width > v10);
              height = self->_gLElementMeshSize.height;
              v7 = v12;
            }

            v8 = v6;
          }

          while (height + -1.0 > v9);
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      if (self->_gLElementQuadParticleCount)
      {
        [(TSDGPUDataBuffer *)self setMetalDrawMode:3];
        if (self->_gLElementQuadParticleCount)
        {
          v13 = 0;
          v14 = 0;
          do
          {
            [(TSDGPUDataBuffer *)self setGLushort:4 * (v13 & 0x3FFF) forIndexElement:v14];
            [(TSDGPUDataBuffer *)self setGLushort:(4 * v13) | 1u forIndexElement:v14 + 1];
            [(TSDGPUDataBuffer *)self setGLushort:(4 * v13) & 0xFFFC | 2u forIndexElement:v14 + 2];
            [(TSDGPUDataBuffer *)self setGLushort:4 * (v13 & 0x3FFF) forIndexElement:v14 + 3];
            [(TSDGPUDataBuffer *)self setGLushort:(4 * v13) | 2u forIndexElement:v14 + 4];
            v7 = v14 + 6;
            [(TSDGPUDataBuffer *)self setGLushort:(4 * v13++) | 3u forIndexElement:v14 + 5];
            v14 += 6;
          }

          while (v13 < self->_gLElementQuadParticleCount);
          goto LABEL_21;
        }

LABEL_20:
        v7 = 0;
LABEL_21:
        if (v7 != self->_elementArrayCount)
        {
          currentHandler = [MEMORY[0x277D6C290] currentHandler];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer p_setupElementArrayBufferIfNecessary]"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
          [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:796 description:@"Element array count Sanity check"];
        }
      }
    }

    self->_gLElementDataBufferWasSetup = 1;
  }
}

- (TSDGPUDataBuffer)initWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount bufferCount:(unint64_t)bufferCount
{
  v63 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  countCopy = count;
  if (count < 0xFFFF)
  {
    v60.receiver = self;
    v60.super_class = TSDGPUDataBuffer;
    v15 = [(TSDGPUDataBuffer *)&v60 init];
    v16 = v15;
    if (v15)
    {
      count = elementCount;
      [(TSDGPUDataBuffer *)v15 setDrawMode:5];
      [(TSDGPUDataBuffer *)v16 setMetalDrawMode:4];
      v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:attributesCopy];
      vertexAttributes = v16->_vertexAttributes;
      v16->_vertexAttributes = v17;

      v16->_vertexCount = count;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      arrayBuffers = v16->_arrayBuffers;
      v16->_arrayBuffers = v19;

      v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](v16->_vertexAttributes, "count")}];
      attributeToArrayBuffersDictionary = v16->_attributeToArrayBuffersDictionary;
      v16->_attributeToArrayBuffersDictionary = v21;

      v16->_isDynamicallyBuffered = 1;
      v47 = attributesCopy;
      v48 = [MEMORY[0x277CBEB18] arrayWithArray:attributesCopy];
      if ([v48 count])
      {
        bufferCountCopy = bufferCount;
        do
        {
          v24 = [v48 objectAtIndex:0];
          array = [MEMORY[0x277CBEB18] array];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v26 = v48;
          v27 = [v26 countByEnumeratingWithState:&v56 objects:v62 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v57;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v57 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                v31 = *(*(&v56 + 1) + 8 * i);
                bufferUsage = [v31 bufferUsage];
                if (bufferUsage == [v24 bufferUsage])
                {
                  [array addObject:v31];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v56 objects:v62 count:16];
            }

            while (v28);
          }

          if ([v24 bufferUsage] == 35044)
          {
            v16->_isDynamicallyBuffered = 0;
            bufferCountCopy = 1;
          }

          v33 = [[TSDGPUDataArrayBuffer alloc] initWithVertexAttributes:array vertexCount:countCopy bufferCount:bufferCountCopy];
          if (v33)
          {
            v50 = array;
            v51 = bufferCountCopy;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v34 = array;
            v35 = [v34 countByEnumeratingWithState:&v52 objects:v61 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v53;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v53 != v37)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v39 = *(*(&v52 + 1) + 8 * j);
                  [v39 setDataBuffer:v16];
                  v40 = v16->_attributeToArrayBuffersDictionary;
                  name = [v39 name];
                  [(NSMutableDictionary *)v40 setObject:v33 forKey:name];
                }

                v36 = [v34 countByEnumeratingWithState:&v52 objects:v61 count:16];
              }

              while (v36);
            }

            [(NSMutableArray *)v16->_arrayBuffers addObject:v33];
            array = v50;
            bufferCountCopy = v51;
          }

          else
          {
            currentHandler = [MEMORY[0x277D6C290] currentHandler];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer initWithVertexAttributes:vertexCount:indexElementCount:bufferCount:]"];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
            [currentHandler handleFailureInFunction:v43 file:v44 lineNumber:844 description:@"Error creating array buffer!"];
          }

          [v26 removeObjectsInArray:array];
        }

        while ([v26 count]);
      }

      if (count)
      {
        v16->_elementArrayCount = count;
        v16->_gLElementData = malloc_type_calloc(count, 2uLL, 0x1000040BDFB0063uLL);
      }

      attributesCopy = v47;
    }

    self = v16;
    selfCopy = self;
  }

  else
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer initWithVertexAttributes:vertexCount:indexElementCount:bufferCount:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler2 handleFailureInFunction:v12 file:v13 lineNumber:807 description:@"Too many vertices!"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (TSDGPUDataBuffer)initWithVertexAttributes:(id)attributes meshSize:(CGSize)size bufferCount:(unint64_t)count
{
  height = size.height;
  width = size.width;
  attributesCopy = attributes;
  if (width <= 1.0 || height <= 1.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer initWithVertexAttributes:meshSize:bufferCount:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler handleFailureInFunction:v12 file:v13 lineNumber:866 description:@"Mesh size is not at least 2x2!"];
  }

  v14 = [(TSDGPUDataBuffer *)self initWithVertexAttributes:attributesCopy vertexCount:(width * height) indexElementCount:((width + width) * (height + -1.0)) bufferCount:count];
  v14->_gLElementMeshSize.width = width;
  v14->_gLElementMeshSize.height = height;

  return v14;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount
{
  attributesCopy = attributes;
  v9 = [[self alloc] initWithVertexAttributes:attributesCopy vertexCount:count indexElementCount:elementCount bufferCount:2];

  return v9;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  attributesCopy = attributes;
  v8 = [[self alloc] initWithVertexAttributes:attributesCopy meshSize:2 bufferCount:{width, height}];

  return v8;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count
{
  v6 = 4 * count;
  v7 = 6 * count;
  attributesCopy = attributes;
  v9 = [[self alloc] initWithVertexAttributes:attributesCopy vertexCount:v6 indexElementCount:v7 bufferCount:2];

  if (v9)
  {
    v9[10] = count;
  }

  return v9;
}

+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute
{
  height = size.height;
  width = size.width;
  v17 = textureRect.size.width;
  v18 = textureRect.size.height;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v11 = rect.size.height;
  v12 = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  v15 = [self alloc];

  return [v15 initWithVertexRect:*&width textureRect:*&height meshSize:v14 textureFlipped:v13 includeCenterAttribute:{v12, v11, x, y, v17, v18}];
}

+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border
{
  flippedCopy = flipped;
  height = size.height;
  width = size.width;
  v19 = textureRect.size.width;
  v20 = textureRect.size.height;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  v17 = [self alloc];

  return [v17 initWithVertexRect:*&width textureRect:*&height meshSize:flippedCopy textureFlipped:v16 includeCenterAttribute:v15 addTransparentBorder:{v14, v13, x, y, v19, v20}];
}

+ (void)p_addTransparentBorderInsetToTextureRect:(CGRect *)rect vertexRect:(CGRect *)vertexRect
{
  if (!rect)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]"];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler handleFailureInFunction:v35 file:v36 lineNumber:918 description:{@"invalid nil value for '%s'", "textureRect"}];

    if (vertexRect)
    {
      goto LABEL_3;
    }

LABEL_19:
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]"];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler2 handleFailureInFunction:v38 file:v39 lineNumber:919 description:{@"invalid nil value for '%s'", "vertexRect"}];

    goto LABEL_3;
  }

  if (!vertexRect)
  {
    goto LABEL_19;
  }

LABEL_3:
  width = rect->size.width;
  if (width != 0.0)
  {
    height = rect->size.height;
    if (height != 0.0)
    {
      v8 = vertexRect->size.width;
      if (v8 != 0.0)
      {
        v9 = vertexRect->size.height;
        if (v9 != 0.0)
        {
          v10 = v8 / width;
          x = rect->origin.x;
          y = rect->origin.y;
          v13 = v9 / height;
          if (CGRectGetMinX(*(&width - 2)) == 0.0)
          {
            v14 = -1.0;
          }

          else
          {
            v14 = 0.0;
          }

          if (CGRectGetMaxX(*rect) == 1.0)
          {
            v15 = 1.0;
          }

          else
          {
            v15 = 0.0;
          }

          if (CGRectGetMinY(*rect) == 0.0)
          {
            v16 = -1.0;
          }

          else
          {
            v16 = 0.0;
          }

          CGRectGetMaxY(*rect);
          v17 = v14 / v10 + CGRectGetMinX(*rect);
          v18 = v16 / v13 + CGRectGetMinY(*rect);
          v19 = v15 / v10 + CGRectGetMaxX(*rect);
          CGRectGetMaxY(*rect);
          v20 = TSDRectWithPoints(v17, v18, v19);
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v27 = CGRectGetMinX(*vertexRect) + v14;
          v28 = CGRectGetMinY(*vertexRect) + v16;
          v29 = CGRectGetMaxX(*vertexRect) + v15;
          CGRectGetMaxY(*vertexRect);
          v30 = TSDRectWithPoints(v27, v28, v29);
          rect->origin.x = v20;
          rect->origin.y = v22;
          rect->size.width = v24;
          rect->size.height = v26;
          vertexRect->origin.x = v30;
          vertexRect->origin.y = v31;
          vertexRect->size.width = v32;
          vertexRect->size.height = v33;
        }
      }
    }
  }
}

- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute
{
  height_low = LODWORD(size.height);
  width_low = LODWORD(size.width);
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v34 = textureRect.origin.x;
  v35 = textureRect.origin.y;
  v36 = textureRect.size.width;
  v12 = CGRectEqualToRect(textureRect, *MEMORY[0x277CBF3A0]);
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"Position" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
  [v13 addObject:v14];
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"TexCoord" bufferUsage:35044 dataType:3 normalized:1 componentCount:2];
    [v13 addObject:v15];
  }

  if (height_low)
  {
    v16 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"Center" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
    [v13 addObject:v16];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(TSDGPUDataBuffer *)self initWithVertexAttributes:v13 meshSize:1 bufferCount:v39, v40];
  if (v17)
  {
    v17->_positionAttributeIndex = [v13 indexOfObject:v14];
    if (!v12)
    {
      v17->_texCoordAttributeIndex = [v13 indexOfObject:v15];
    }

    if (height_low)
    {
      v17->_centerAttributeIndex = [v13 indexOfObject:v16];
    }

    v18 = 0;
    v19 = 0;
    v20 = TSDCenterOfRect(x, y, width, height);
    v33 = (v40 + -1.0);
    v22 = v21;
    v23 = (v39 + -1.0);
    do
    {
      v24 = 0;
      v25 = v19 / v33;
      do
      {
        v26 = TSDPointFromNormalizedRect(v24 / v23, v25, x, y, width);
        *&v26 = v26;
        *&v27 = v27;
        [(TSDGPUDataBuffer *)v17 setGLPoint2D:v14 forAttribute:v18 atIndex:v26, v27];
        if (!v12)
        {
          v30 = TSDPointFromNormalizedRect(v24 / v23, v25, v34, v35, v36);
          *&v30 = v30;
          *&v31 = v31;
          if (width_low)
          {
            *&v31 = 1.0 - *&v31;
          }

          [(TSDGPUDataBuffer *)v17 setGLPoint2D:v15 forAttribute:v18 atIndex:v30, v31];
        }

        if (height_low)
        {
          *&v28 = v20;
          *&v29 = v22;
          [(TSDGPUDataBuffer *)v17 setGLPoint2D:v16 forAttribute:v18 atIndex:v28, v29];
        }

        ++v18;
        ++v24;
      }

      while (v24 <= (v39 + -1.0));
      ++v19;
    }

    while (v19 <= v33);
  }

  return v17;
}

- (void)enableDataBuffer
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_device)
  {
    self->_conformsToMetalProtocol = 1;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = self->_arrayBuffers;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v14 + 1) + 8 * i) enableArrayBufferWithDevice:self->_device];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    if (!self->_metalElementData && self->_elementArrayCount)
    {
      [(TSDGPUDataBuffer *)self p_setupElementArrayBufferIfNecessary];
      v10 = [(MTLDevice *)self->_device newBufferWithBytes:self->_gLElementData length:2 * self->_elementArrayCount options:0];
      metalElementData = self->_metalElementData;
      self->_metalElementData = v10;

      gLElementData = self->_gLElementData;
      if (gLElementData)
      {
        free(gLElementData);
        self->_gLElementData = 0;
      }
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer enableDataBuffer]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:1051 description:@"Can't initialize metal buffers without a device!"];
  }
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes vertexCount:(unint64_t)count indexElementCount:(unint64_t)elementCount device:(id)device
{
  deviceCopy = device;
  attributesCopy = attributes;
  v13 = [[self alloc] initWithVertexAttributes:attributesCopy vertexCount:count indexElementCount:elementCount bufferCount:3];

  if (v13)
  {
    objc_storeStrong(v13 + 12, device);
  }

  return v13;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes meshSize:(CGSize)size device:(id)device
{
  height = size.height;
  width = size.width;
  attributesCopy = attributes;
  deviceCopy = device;
  if (width <= 1.0 || height <= 1.0)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGPUDataBuffer newDataBufferWithVertexAttributes:meshSize:device:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler handleFailureInFunction:v12 file:v13 lineNumber:1080 description:@"Mesh size is not at least 2x2!"];
  }

  v14 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:attributesCopy vertexCount:(width * height) indexElementCount:((width + width) * (height + -1.0)) device:deviceCopy];
  v15 = v14;
  if (v14)
  {
    v14[8] = width;
    v14[9] = height;
  }

  return v15;
}

+ (id)newDataBufferWithVertexAttributes:(id)attributes quadParticleCount:(unint64_t)count device:(id)device
{
  result = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:attributes vertexCount:4 * count indexElementCount:6 * count device:device];
  if (result)
  {
    *(result + 10) = count;
  }

  return result;
}

+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute device:(id)device
{
  flippedCopy = flipped;
  height = size.height;
  width = size.width;
  v22 = textureRect.size.width;
  v23 = textureRect.size.height;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v13 = rect.size.height;
  v14 = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  flippedCopy2 = flipped;
  v19 = [[self alloc] initWithVertexRect:*&width textureRect:*&height meshSize:v16 textureFlipped:v15 includeCenterAttribute:{v14, v13, x, y, v22, v23, v24, v25}];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 96), flippedCopy);
  }

  return v20;
}

+ (id)newDataBufferWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border device:(id)device
{
  attributeCopy = attribute;
  flippedCopy = flipped;
  height = size.height;
  width = size.width;
  v24 = textureRect.size.width;
  v25 = textureRect.size.height;
  y = textureRect.origin.y;
  x = textureRect.origin.x;
  v15 = rect.size.height;
  v16 = rect.size.width;
  v17 = rect.origin.y;
  v18 = rect.origin.x;
  attributeCopy2 = attribute;
  v21 = [[self alloc] initWithVertexRect:*&width textureRect:*&height meshSize:flippedCopy textureFlipped:v18 includeCenterAttribute:v17 addTransparentBorder:{v16, v15, x, y, v24, v25, v26, v27}];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong((v21 + 96), attributeCopy);
  }

  return v22;
}

- (void)teardown
{
  if (!self->_didTeardown)
  {
    vertexAttributes = self->_vertexAttributes;
    self->_vertexAttributes = 0;

    arrayBuffers = self->_arrayBuffers;
    self->_arrayBuffers = 0;

    attributeToArrayBuffersDictionary = self->_attributeToArrayBuffersDictionary;
    self->_attributeToArrayBuffersDictionary = 0;

    gLElementData = self->_gLElementData;
    if (gLElementData)
    {
      free(gLElementData);
      self->_gLElementData = 0;
    }

    metalElementData = self->_metalElementData;
    if (metalElementData)
    {
      self->_metalElementData = 0;
    }

    self->_didTeardown = 1;
  }
}

- (void)dealloc
{
  [(TSDGPUDataBuffer *)self teardown];
  v3.receiver = self;
  v3.super_class = TSDGPUDataBuffer;
  [(TSDGPUDataBuffer *)&v3 dealloc];
}

- (NSString)description
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"vertexCount:%ld", -[TSDGPUDataBuffer vertexCount](self, "vertexCount")];
  [array addObject:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"elementArrayCount:%ld", self->_elementArrayCount];
  [array addObject:v5];

  elementArrayCount = self->_elementArrayCount;
  if (!elementArrayCount)
  {
    goto LABEL_9;
  }

  v7 = 2 * elementArrayCount;
  if (2 * elementArrayCount <= 0x100000)
  {
    if (v7 < 0x401)
    {
      v10 = 0;
      goto LABEL_8;
    }

    v8 = @"(%0.1fKB)";
    v9 = 0.0009765625;
  }

  else
  {
    v8 = @"(%0.1fMB)";
    v9 = 0.000000953674316;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v9 * v7];
LABEL_8:
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"elementBufferSize:%ldB%@", v7, v10];
  [array addObject:v11];

LABEL_9:
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"arrayBuffers:%@", self->_arrayBuffers];
  [array addObject:v12];

  metalDrawMode = [(TSDGPUDataBuffer *)self metalDrawMode];
  if (metalDrawMode > 4)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_279D48E58[metalDrawMode];
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"drawMode:%@", v14];
  [array addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = TSDGPUDataBuffer;
  v17 = [(TSDGPUDataBuffer *)&v21 description];
  v18 = [array componentsJoinedByString:{@", "}];
  v19 = [v16 stringWithFormat:@"%@: {%@}", v17, v18];

  return v19;
}

- (void)encodeWithEncoder:(id)encoder atIndex:(unint64_t)index
{
  v18 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_arrayBuffers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      indexCopy = index;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        index = indexCopy + 1;
        [*(*(&v13 + 1) + 8 * v11++) encodeArrayBufferWithEncoder:encoderCopy atIndex:{indexCopy++, v13}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index range:(_NSRange)range advanceDynamicBuffer:(BOOL)buffer
{
  bufferCopy = buffer;
  length = range.length;
  location = range.location;
  v32 = *MEMORY[0x277D85DE8];
  encoderCopy = encoder;
  [(TSDGPUDataBuffer *)self enableDataBuffer];
  if (!self->_conformsToMetalProtocol)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer drawWithEncoder:atIndex:range:advanceDynamicBuffer:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler handleFailureInFunction:v13 file:v14 lineNumber:1264 description:@"Can only be called on a buffer that conforms to metal protocol!"];
  }

  [(TSDGPUDataBuffer *)self encodeWithEncoder:encoderCopy atIndex:index];
  if (self->_gLElementDataBufferWasSetup && self->_elementArrayCount)
  {
    height = self->_gLElementMeshSize.height;
    if (self->_gLElementMeshSize.width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [encoderCopy drawIndexedPrimitives:-[TSDGPUDataBuffer metalDrawMode](self indexCount:"metalDrawMode" indexType:height) indexBuffer:length indexBufferOffset:{0, self->_metalElementData, 2 * location}];
    }

    else if (height + -1.0 > 0.0)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        [encoderCopy drawIndexedPrimitives:-[TSDGPUDataBuffer metalDrawMode](self indexCount:"metalDrawMode") indexType:(self->_gLElementMeshSize.width + self->_gLElementMeshSize.width) indexBuffer:0 indexBufferOffset:{self->_metalElementData, (self->_gLElementMeshSize.width * v17 + self->_gLElementMeshSize.width * v17)}];
        v19 = v18++;
        v17 += 2;
      }

      while (self->_gLElementMeshSize.height + -1.0 > v19);
    }
  }

  else
  {
    [encoderCopy drawPrimitives:-[TSDGPUDataBuffer metalDrawMode](self vertexStart:"metalDrawMode") vertexCount:{location, length}];
  }

  if ([(TSDGPUDataBuffer *)self isDynamicallyBuffered]&& bufferCopy)
  {
    arrayBuffers = self->_arrayBuffers;
    self->_currentBufferIndex = (self->_currentBufferIndex + 1) % 3;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v21 = arrayBuffers;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v28;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v28 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v27 + 1) + 8 * i);
          if ([v26 bufferCount] != 1)
          {
            [v26 setCurrentBufferIndex:self->_currentBufferIndex];
          }
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v23);
    }
  }

  [encoderCopy popDebugGroup];
}

- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index
{
  elementArrayCount = self->_elementArrayCount;
  if (!elementArrayCount)
  {
    elementArrayCount = self->_vertexCount;
  }

  [(TSDGPUDataBuffer *)self drawWithEncoder:encoder atIndex:index range:0 advanceDynamicBuffer:elementArrayCount, 1];
}

- (void)drawWithEncoder:(id)encoder atIndex:(unint64_t)index advanceDynamicBuffer:(BOOL)buffer
{
  elementArrayCount = self->_elementArrayCount;
  if (!elementArrayCount)
  {
    elementArrayCount = self->_vertexCount;
  }

  [(TSDGPUDataBuffer *)self drawWithEncoder:encoder atIndex:index range:0 advanceDynamicBuffer:elementArrayCount, buffer];
}

- (float)metalFloatForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer metalFloatForAttribute:attributeCopy atIndex:index];
  v8 = v7;

  return v8;
}

- (void)setMetalFloat:(float)float forAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v8 = float;
  [dataArrayBuffer setMetalFloat:attributeCopy forAttribute:index atIndex:v8];
}

- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer metalPoint2DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer metalPoint3DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v8;
  v14 = v10;
  v15 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer metalPoint4DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)setMetalPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v9 = var0;
  *&v10 = var1;
  [dataArrayBuffer setMetalPoint2D:attributeCopy forAttribute:index atIndex:{v9, v10}];
}

- (void)setMetalPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v10 = var0;
  *&v11 = var1;
  *&v12 = var2;
  [dataArrayBuffer setMetalPoint3D:attributeCopy forAttribute:index atIndex:{v10, v11, v12}];
}

- (void)setMetalPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var3 = d.var3;
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v11 = var0;
  *&v12 = var1;
  *&v13 = var2;
  *&v14 = var3;
  [dataArrayBuffer setMetalPoint4D:attributeCopy forAttribute:index atIndex:{v11, v12, v13, v14}];
}

- (void)setGLPoint2D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v9 = var0;
  *&v10 = var1;
  [dataArrayBuffer setMetalPoint2D:attributeCopy forAttribute:index atIndex:{v9, v10}];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer metalPoint3DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v8;
  v14 = v10;
  v15 = v12;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)setGLPoint3D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v10 = var0;
  *&v11 = var1;
  *&v12 = var2;
  [dataArrayBuffer setMetalPoint3D:attributeCopy forAttribute:index atIndex:{v10, v11, v12}];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)attribute atIndex:(unint64_t)index
{
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  [dataArrayBuffer metalPoint4DForAttribute:attributeCopy atIndex:index];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (void)setGLPoint4D:(id)d forAttribute:(id)attribute atIndex:(unint64_t)index
{
  var3 = d.var3;
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  attributeCopy = attribute;
  dataArrayBuffer = [attributeCopy dataArrayBuffer];
  *&v11 = var0;
  *&v12 = var1;
  *&v13 = var2;
  *&v14 = var3;
  [dataArrayBuffer setMetalPoint4D:attributeCopy forAttribute:index atIndex:{v11, v12, v13, v14}];
}

- (void)setDataForAttribute:(id)attribute atIndex:(unint64_t)index fromAttribute:(id)fromAttribute dataBuffer:(id)buffer index:(unint64_t)a7
{
  attributeCopy = attribute;
  fromAttributeCopy = fromAttribute;
  bufferCopy = buffer;
  componentCount = [attributeCopy componentCount];
  if (componentCount > 2)
  {
    if (componentCount != 3)
    {
      if (componentCount == 4)
      {
        [bufferCopy metalPoint4DForAttribute:fromAttributeCopy atIndex:a7];
        [(TSDGPUDataBuffer *)self setGLPoint4D:attributeCopy forAttribute:index atIndex:?];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    [bufferCopy metalPoint3DForAttribute:fromAttributeCopy atIndex:a7];
    [(TSDGPUDataBuffer *)self setGLPoint3D:attributeCopy forAttribute:index atIndex:?];
  }

  else
  {
    if (componentCount != 1)
    {
      if (componentCount == 2)
      {
        [bufferCopy metalPoint2DForAttribute:fromAttributeCopy atIndex:a7];
        [(TSDGPUDataBuffer *)self setGLPoint2D:attributeCopy forAttribute:index atIndex:?];
        goto LABEL_11;
      }

LABEL_8:
      currentHandler = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer setDataForAttribute:atIndex:fromAttribute:dataBuffer:index:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
      [currentHandler handleFailureInFunction:v16 file:v17 lineNumber:1411 description:@"Unknown attribute size!"];

      goto LABEL_11;
    }

    [bufferCopy metalFloatForAttribute:fromAttributeCopy atIndex:a7];
    [(TSDGPUDataBuffer *)self setMetalFloat:attributeCopy forAttribute:index atIndex:?];
  }

LABEL_11:
}

- (id)vertexAttributeNamed:(id)named
{
  v18 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  vertexAttributes = [(TSDGPUDataBuffer *)self vertexAttributes];
  v6 = [vertexAttributes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(vertexAttributes);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name isEqualToString:namedCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [vertexAttributes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateDataBufferAttributesWithBlock:(id)block
{
  blockCopy = block;
  vertexAttributes = [(TSDGPUDataBuffer *)self vertexAttributes];
  [(TSDGPUDataBuffer *)self updateMetalDataBufferAttributes:vertexAttributes withBlock:blockCopy];
}

- (void)updateMetalDataBufferAttributes:(id)attributes withBlock:(id)block
{
  attributesCopy = attributes;
  blockCopy = block;
  if (attributesCopy && [attributesCopy count])
  {
    self->_isUpdatingRawDataBuffer = 1;
    v7 = [attributesCopy count];
    v8 = malloc_type_calloc(0x58uLL, v7, 0x8EBB09C6uLL);
    v9 = v8;
    if (v7)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = [attributesCopy objectAtIndex:v10];
        [(TSDGPUDataBuffer *)self p_setAttributeUpdateData:v11 fromAttribute:v12];

        ++v10;
        v11 += 88;
      }

      while (v7 != v10);
    }

    blockCopy[2](blockCopy, v9, v7);
    self->_isUpdatingRawDataBuffer = 0;
    free(v9);
  }
}

- (void)updateDataBufferAttributes:(id)attributes withBlock:(id)block
{
  attributesCopy = attributes;
  blockCopy = block;
  if (attributesCopy && [attributesCopy count])
  {
    self->_isUpdatingRawDataBuffer = 1;
    v7 = [attributesCopy count];
    v8 = malloc_type_calloc(0x58uLL, v7, 0xC8A5CF9FuLL);
    v9 = v8;
    if (v7)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = [attributesCopy objectAtIndex:v10];
        [(TSDGPUDataBuffer *)self p_setAttributeUpdateData:v11 fromAttribute:v12];

        ++v10;
        v11 += 88;
      }

      while (v7 != v10);
      blockCopy[2](blockCopy, v9, v7);
      v13 = 0;
      self->_isUpdatingRawDataBuffer = 0;
      v14 = v9 + 9;
      do
      {
        if (*(v14 - 2))
        {
          v16 = *(v14 - 1);
          v15 = *v14;
          v17 = [attributesCopy objectAtIndex:v13];
          dataArrayBuffer = [v17 dataArrayBuffer];
          [dataArrayBuffer addIndexRangeNeedsUpdate:{v16, v15}];
        }

        ++v13;
        v14 += 11;
      }

      while (v7 != v13);
    }

    else
    {
      blockCopy[2](blockCopy, v8, 0);
      self->_isUpdatingRawDataBuffer = 0;
    }

    free(v9);
  }
}

- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)rect textureRect:(CGRect)textureRect meshSize:(CGSize)size textureFlipped:(BOOL)flipped includeCenterAttribute:(BOOL)attribute addTransparentBorder:(BOOL)border
{
  flippedCopy = flipped;
  height_low = LODWORD(size.height);
  width_low = LODWORD(size.width);
  rectCopy = rect;
  textureRectCopy = textureRect;
  v11 = CGRectEqualToRect(textureRect, *MEMORY[0x277CBF3A0]);
  if (flippedCopy)
  {
    [objc_opt_class() p_addTransparentBorderInsetToTextureRect:&textureRectCopy vertexRect:&rectCopy];
  }

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"Position" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
  [v12 addObject:v13];
  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"TexCoord" bufferUsage:35044 dataType:3 normalized:1 componentCount:2];
    [v12 addObject:v14];
  }

  if (height_low)
  {
    v15 = [[TSDGPUDataBufferAttribute alloc] initWithName:@"Center" bufferUsage:35044 dataType:5 normalized:0 componentCount:2];
    [v12 addObject:v15];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(TSDGPUDataBuffer *)self initWithVertexAttributes:v12 meshSize:1 bufferCount:v37, v38, v12];
  if (v16)
  {
    v16->_positionAttributeIndex = [v32 indexOfObject:v13];
    if (!v11)
    {
      v16->_texCoordAttributeIndex = [v32 indexOfObject:v14];
    }

    if (height_low)
    {
      v16->_centerAttributeIndex = [v32 indexOfObject:v15];
    }

    v17 = 0;
    v18 = 0;
    v19 = TSDCenterOfRect(rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width, rectCopy.size.height);
    v33 = (v38 + -1.0);
    v21 = v20;
    v22 = (v37 + -1.0);
    v23 = v33;
    do
    {
      v24 = 0;
      do
      {
        v25 = TSDPointFromNormalizedRect(v24 / v22, v18 / v23, rectCopy.origin.x, rectCopy.origin.y, rectCopy.size.width);
        *&v25 = v25;
        *&v26 = v26;
        [(TSDGPUDataBuffer *)v16 setGLPoint2D:v13 forAttribute:v17 atIndex:v25, v26];
        if (!v11)
        {
          v29 = TSDPointFromNormalizedRect(v24 / v22, v18 / v23, textureRectCopy.origin.x, textureRectCopy.origin.y, textureRectCopy.size.width);
          *&v29 = v29;
          *&v30 = v30;
          if (width_low)
          {
            *&v30 = 1.0 - *&v30;
          }

          [(TSDGPUDataBuffer *)v16 setGLPoint2D:v14 forAttribute:v17 atIndex:v29, v30];
        }

        if (height_low)
        {
          *&v27 = v19;
          *&v28 = v21;
          [(TSDGPUDataBuffer *)v16 setGLPoint2D:v15 forAttribute:v17 atIndex:v27, v28];
        }

        ++v17;
        ++v24;
      }

      while (v24 <= (v37 + -1.0));
      ++v18;
    }

    while (v18 <= v33);
  }

  return v16;
}

- (BOOL)p_setAttributeUpdateData:(id *)data fromAttribute:(id)attribute
{
  attributeCopy = attribute;
  v7 = attributeCopy;
  isUpdatingRawDataBuffer = self->_isUpdatingRawDataBuffer;
  if (isUpdatingRawDataBuffer)
  {
    dataArrayBuffer = [attributeCopy dataArrayBuffer];
    data->var3 = [dataArrayBuffer dataPointer];

    data->var0 = [v7 dataType];
    data->var1 = [v7 componentCount];
    data->var2 = [v7 isNormalized];
    data->var4 = [v7 bufferOffset];
    dataArrayBuffer2 = [v7 dataArrayBuffer];
    data->var5 = [dataArrayBuffer2 dataBufferEntrySize];

    dataArrayBuffer3 = [v7 dataArrayBuffer];
    data->var6 = [dataArrayBuffer3 vertexCount];

    data->var7 = 1;
    var6 = data->var6;
    data->var8.location = 0;
    data->var8.length = var6;
    data->var9 = TSDGPUDataBufferDataTypeSize([v7 dataType]);
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer p_setAttributeUpdateData:fromAttribute:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [currentHandler handleFailureInFunction:v14 file:v15 lineNumber:1572 description:@"Can only be called from within update block!"];
  }

  return isUpdatingRawDataBuffer;
}

@end