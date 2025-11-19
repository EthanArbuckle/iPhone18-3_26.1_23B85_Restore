@interface TSDGPUDataBuffer
+ (id)newDataBufferWithVertexAttributes:(id)a3 meshSize:(CGSize)a4;
+ (id)newDataBufferWithVertexAttributes:(id)a3 meshSize:(CGSize)a4 device:(id)a5;
+ (id)newDataBufferWithVertexAttributes:(id)a3 quadParticleCount:(unint64_t)a4;
+ (id)newDataBufferWithVertexAttributes:(id)a3 quadParticleCount:(unint64_t)a4 device:(id)a5;
+ (id)newDataBufferWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 indexElementCount:(unint64_t)a5;
+ (id)newDataBufferWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 indexElementCount:(unint64_t)a5 device:(id)a6;
+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7;
+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 addTransparentBorder:(BOOL)a8;
+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 addTransparentBorder:(BOOL)a8 device:(id)a9;
+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 device:(id)a8;
+ (void)p_addTransparentBorderInsetToTextureRect:(CGRect *)a3 vertexRect:(CGRect *)a4;
- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)a3 atIndex:(unint64_t)a4;
- (BOOL)p_setAttributeUpdateData:(id *)a3 fromAttribute:(id)a4;
- (NSString)description;
- (TSDGPUDataBuffer)initWithVertexAttributes:(id)a3 meshSize:(CGSize)a4 bufferCount:(unint64_t)a5;
- (TSDGPUDataBuffer)initWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 indexElementCount:(unint64_t)a5 bufferCount:(unint64_t)a6;
- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7;
- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 addTransparentBorder:(BOOL)a8;
- (float)metalFloatForAttribute:(id)a3 atIndex:(unint64_t)a4;
- (id)vertexAttributeNamed:(id)a3;
- (void)dealloc;
- (void)drawWithEncoder:(id)a3 atIndex:(unint64_t)a4;
- (void)drawWithEncoder:(id)a3 atIndex:(unint64_t)a4 advanceDynamicBuffer:(BOOL)a5;
- (void)drawWithEncoder:(id)a3 atIndex:(unint64_t)a4 range:(_NSRange)a5 advanceDynamicBuffer:(BOOL)a6;
- (void)enableDataBuffer;
- (void)encodeWithEncoder:(id)a3 atIndex:(unint64_t)a4;
- (void)p_setupElementArrayBufferIfNecessary;
- (void)setDataForAttribute:(id)a3 atIndex:(unint64_t)a4 fromAttribute:(id)a5 dataBuffer:(id)a6 index:(unint64_t)a7;
- (void)setGLPoint2D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setGLPoint3D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setGLPoint4D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setMetalFloat:(float)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setMetalPoint2D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setMetalPoint3D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)setMetalPoint4D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5;
- (void)teardown;
- (void)updateDataBufferAttributes:(id)a3 withBlock:(id)a4;
- (void)updateDataBufferAttributesWithBlock:(id)a3;
- (void)updateMetalDataBufferAttributes:(id)a3 withBlock:(id)a4;
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
          v15 = [MEMORY[0x277D6C290] currentHandler];
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer p_setupElementArrayBufferIfNecessary]"];
          v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
          [v15 handleFailureInFunction:v16 file:v17 lineNumber:796 description:@"Element array count Sanity check"];
        }
      }
    }

    self->_gLElementDataBufferWasSetup = 1;
  }
}

- (TSDGPUDataBuffer)initWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 indexElementCount:(unint64_t)a5 bufferCount:(unint64_t)a6
{
  v63 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v49 = a4;
  if (a4 < 0xFFFF)
  {
    v60.receiver = self;
    v60.super_class = TSDGPUDataBuffer;
    v15 = [(TSDGPUDataBuffer *)&v60 init];
    v16 = v15;
    if (v15)
    {
      count = a5;
      [(TSDGPUDataBuffer *)v15 setDrawMode:5];
      [(TSDGPUDataBuffer *)v16 setMetalDrawMode:4];
      v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v10];
      vertexAttributes = v16->_vertexAttributes;
      v16->_vertexAttributes = v17;

      v16->_vertexCount = a4;
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      arrayBuffers = v16->_arrayBuffers;
      v16->_arrayBuffers = v19;

      v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{-[NSArray count](v16->_vertexAttributes, "count")}];
      attributeToArrayBuffersDictionary = v16->_attributeToArrayBuffersDictionary;
      v16->_attributeToArrayBuffersDictionary = v21;

      v16->_isDynamicallyBuffered = 1;
      v47 = v10;
      v48 = [MEMORY[0x277CBEB18] arrayWithArray:v10];
      if ([v48 count])
      {
        v23 = a6;
        do
        {
          v24 = [v48 objectAtIndex:0];
          v25 = [MEMORY[0x277CBEB18] array];
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
                v32 = [v31 bufferUsage];
                if (v32 == [v24 bufferUsage])
                {
                  [v25 addObject:v31];
                }
              }

              v28 = [v26 countByEnumeratingWithState:&v56 objects:v62 count:16];
            }

            while (v28);
          }

          if ([v24 bufferUsage] == 35044)
          {
            v16->_isDynamicallyBuffered = 0;
            v23 = 1;
          }

          v33 = [[TSDGPUDataArrayBuffer alloc] initWithVertexAttributes:v25 vertexCount:v49 bufferCount:v23];
          if (v33)
          {
            v50 = v25;
            v51 = v23;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            v34 = v25;
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
                  v41 = [v39 name];
                  [(NSMutableDictionary *)v40 setObject:v33 forKey:v41];
                }

                v36 = [v34 countByEnumeratingWithState:&v52 objects:v61 count:16];
              }

              while (v36);
            }

            [(NSMutableArray *)v16->_arrayBuffers addObject:v33];
            v25 = v50;
            v23 = v51;
          }

          else
          {
            v42 = [MEMORY[0x277D6C290] currentHandler];
            v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer initWithVertexAttributes:vertexCount:indexElementCount:bufferCount:]"];
            v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
            [v42 handleFailureInFunction:v43 file:v44 lineNumber:844 description:@"Error creating array buffer!"];
          }

          [v26 removeObjectsInArray:v25];
        }

        while ([v26 count]);
      }

      if (count)
      {
        v16->_elementArrayCount = count;
        v16->_gLElementData = malloc_type_calloc(count, 2uLL, 0x1000040BDFB0063uLL);
      }

      v10 = v47;
    }

    self = v16;
    v14 = self;
  }

  else
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer initWithVertexAttributes:vertexCount:indexElementCount:bufferCount:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:807 description:@"Too many vertices!"];

    v14 = 0;
  }

  return v14;
}

- (TSDGPUDataBuffer)initWithVertexAttributes:(id)a3 meshSize:(CGSize)a4 bufferCount:(unint64_t)a5
{
  height = a4.height;
  width = a4.width;
  v9 = a3;
  if (width <= 1.0 || height <= 1.0)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer initWithVertexAttributes:meshSize:bufferCount:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:866 description:@"Mesh size is not at least 2x2!"];
  }

  v14 = [(TSDGPUDataBuffer *)self initWithVertexAttributes:v9 vertexCount:(width * height) indexElementCount:((width + width) * (height + -1.0)) bufferCount:a5];
  v14->_gLElementMeshSize.width = width;
  v14->_gLElementMeshSize.height = height;

  return v14;
}

+ (id)newDataBufferWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 indexElementCount:(unint64_t)a5
{
  v8 = a3;
  v9 = [[a1 alloc] initWithVertexAttributes:v8 vertexCount:a4 indexElementCount:a5 bufferCount:2];

  return v9;
}

+ (id)newDataBufferWithVertexAttributes:(id)a3 meshSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  v8 = [[a1 alloc] initWithVertexAttributes:v7 meshSize:2 bufferCount:{width, height}];

  return v8;
}

+ (id)newDataBufferWithVertexAttributes:(id)a3 quadParticleCount:(unint64_t)a4
{
  v6 = 4 * a4;
  v7 = 6 * a4;
  v8 = a3;
  v9 = [[a1 alloc] initWithVertexAttributes:v8 vertexCount:v6 indexElementCount:v7 bufferCount:2];

  if (v9)
  {
    v9[10] = a4;
  }

  return v9;
}

+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7
{
  height = a5.height;
  width = a5.width;
  v17 = a4.size.width;
  v18 = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.size.height;
  v12 = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  v15 = [a1 alloc];

  return [v15 initWithVertexRect:*&width textureRect:*&height meshSize:v14 textureFlipped:v13 includeCenterAttribute:{v12, v11, x, y, v17, v18}];
}

+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 addTransparentBorder:(BOOL)a8
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v19 = a4.size.width;
  v20 = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v17 = [a1 alloc];

  return [v17 initWithVertexRect:*&width textureRect:*&height meshSize:v8 textureFlipped:v16 includeCenterAttribute:v15 addTransparentBorder:{v14, v13, x, y, v19, v20}];
}

+ (void)p_addTransparentBorderInsetToTextureRect:(CGRect *)a3 vertexRect:(CGRect *)a4
{
  if (!a3)
  {
    v34 = [MEMORY[0x277D6C290] currentHandler];
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]"];
    v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v34 handleFailureInFunction:v35 file:v36 lineNumber:918 description:{@"invalid nil value for '%s'", "textureRect"}];

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_19:
    v37 = [MEMORY[0x277D6C290] currentHandler];
    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGPUDataBuffer p_addTransparentBorderInsetToTextureRect:vertexRect:]"];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v37 handleFailureInFunction:v38 file:v39 lineNumber:919 description:{@"invalid nil value for '%s'", "vertexRect"}];

    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_3:
  width = a3->size.width;
  if (width != 0.0)
  {
    height = a3->size.height;
    if (height != 0.0)
    {
      v8 = a4->size.width;
      if (v8 != 0.0)
      {
        v9 = a4->size.height;
        if (v9 != 0.0)
        {
          v10 = v8 / width;
          x = a3->origin.x;
          y = a3->origin.y;
          v13 = v9 / height;
          if (CGRectGetMinX(*(&width - 2)) == 0.0)
          {
            v14 = -1.0;
          }

          else
          {
            v14 = 0.0;
          }

          if (CGRectGetMaxX(*a3) == 1.0)
          {
            v15 = 1.0;
          }

          else
          {
            v15 = 0.0;
          }

          if (CGRectGetMinY(*a3) == 0.0)
          {
            v16 = -1.0;
          }

          else
          {
            v16 = 0.0;
          }

          CGRectGetMaxY(*a3);
          v17 = v14 / v10 + CGRectGetMinX(*a3);
          v18 = v16 / v13 + CGRectGetMinY(*a3);
          v19 = v15 / v10 + CGRectGetMaxX(*a3);
          CGRectGetMaxY(*a3);
          v20 = TSDRectWithPoints(v17, v18, v19);
          v22 = v21;
          v24 = v23;
          v26 = v25;
          v27 = CGRectGetMinX(*a4) + v14;
          v28 = CGRectGetMinY(*a4) + v16;
          v29 = CGRectGetMaxX(*a4) + v15;
          CGRectGetMaxY(*a4);
          v30 = TSDRectWithPoints(v27, v28, v29);
          a3->origin.x = v20;
          a3->origin.y = v22;
          a3->size.width = v24;
          a3->size.height = v26;
          a4->origin.x = v30;
          a4->origin.y = v31;
          a4->size.width = v32;
          a4->size.height = v33;
        }
      }
    }
  }
}

- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7
{
  height_low = LODWORD(a5.height);
  width_low = LODWORD(a5.width);
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v34 = a4.origin.x;
  v35 = a4.origin.y;
  v36 = a4.size.width;
  v12 = CGRectEqualToRect(a4, *MEMORY[0x277CBF3A0]);
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
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer enableDataBuffer]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v13 handleFailureInFunction:v8 file:v9 lineNumber:1051 description:@"Can't initialize metal buffers without a device!"];
  }
}

+ (id)newDataBufferWithVertexAttributes:(id)a3 vertexCount:(unint64_t)a4 indexElementCount:(unint64_t)a5 device:(id)a6
{
  v11 = a6;
  v12 = a3;
  v13 = [[a1 alloc] initWithVertexAttributes:v12 vertexCount:a4 indexElementCount:a5 bufferCount:3];

  if (v13)
  {
    objc_storeStrong(v13 + 12, a6);
  }

  return v13;
}

+ (id)newDataBufferWithVertexAttributes:(id)a3 meshSize:(CGSize)a4 device:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3;
  v9 = a5;
  if (width <= 1.0 || height <= 1.0)
  {
    v11 = [MEMORY[0x277D6C290] currentHandler];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSDGPUDataBuffer newDataBufferWithVertexAttributes:meshSize:device:]"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:1080 description:@"Mesh size is not at least 2x2!"];
  }

  v14 = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:v8 vertexCount:(width * height) indexElementCount:((width + width) * (height + -1.0)) device:v9];
  v15 = v14;
  if (v14)
  {
    v14[8] = width;
    v14[9] = height;
  }

  return v15;
}

+ (id)newDataBufferWithVertexAttributes:(id)a3 quadParticleCount:(unint64_t)a4 device:(id)a5
{
  result = [TSDGPUDataBuffer newDataBufferWithVertexAttributes:a3 vertexCount:4 * a4 indexElementCount:6 * a4 device:a5];
  if (result)
  {
    *(result + 10) = a4;
  }

  return result;
}

+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 device:(id)a8
{
  v8 = a6;
  height = a5.height;
  width = a5.width;
  v22 = a4.size.width;
  v23 = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v18 = a6;
  v19 = [[a1 alloc] initWithVertexRect:*&width textureRect:*&height meshSize:v16 textureFlipped:v15 includeCenterAttribute:{v14, v13, x, y, v22, v23, v24, v25}];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 96), v8);
  }

  return v20;
}

+ (id)newDataBufferWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 addTransparentBorder:(BOOL)a8 device:(id)a9
{
  v9 = a7;
  v10 = a6;
  height = a5.height;
  width = a5.width;
  v24 = a4.size.width;
  v25 = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3.size.height;
  v16 = a3.size.width;
  v17 = a3.origin.y;
  v18 = a3.origin.x;
  v20 = a7;
  v21 = [[a1 alloc] initWithVertexRect:*&width textureRect:*&height meshSize:v10 textureFlipped:v18 includeCenterAttribute:v17 addTransparentBorder:{v16, v15, x, y, v24, v25, v26, v27}];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong((v21 + 96), v9);
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
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"vertexCount:%ld", -[TSDGPUDataBuffer vertexCount](self, "vertexCount")];
  [v3 addObject:v4];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"elementArrayCount:%ld", self->_elementArrayCount];
  [v3 addObject:v5];

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
  [v3 addObject:v11];

LABEL_9:
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"arrayBuffers:%@", self->_arrayBuffers];
  [v3 addObject:v12];

  v13 = [(TSDGPUDataBuffer *)self metalDrawMode];
  if (v13 > 4)
  {
    v14 = @"Unknown";
  }

  else
  {
    v14 = off_279D48E58[v13];
  }

  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"drawMode:%@", v14];
  [v3 addObject:v15];

  v16 = MEMORY[0x277CCACA8];
  v21.receiver = self;
  v21.super_class = TSDGPUDataBuffer;
  v17 = [(TSDGPUDataBuffer *)&v21 description];
  v18 = [v3 componentsJoinedByString:{@", "}];
  v19 = [v16 stringWithFormat:@"%@: {%@}", v17, v18];

  return v19;
}

- (void)encodeWithEncoder:(id)a3 atIndex:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
      v12 = a4;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        a4 = v12 + 1;
        [*(*(&v13 + 1) + 8 * v11++) encodeArrayBufferWithEncoder:v6 atIndex:{v12++, v13}];
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)drawWithEncoder:(id)a3 atIndex:(unint64_t)a4 range:(_NSRange)a5 advanceDynamicBuffer:(BOOL)a6
{
  v6 = a6;
  length = a5.length;
  location = a5.location;
  v32 = *MEMORY[0x277D85DE8];
  v11 = a3;
  [(TSDGPUDataBuffer *)self enableDataBuffer];
  if (!self->_conformsToMetalProtocol)
  {
    v12 = [MEMORY[0x277D6C290] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer drawWithEncoder:atIndex:range:advanceDynamicBuffer:]"];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v12 handleFailureInFunction:v13 file:v14 lineNumber:1264 description:@"Can only be called on a buffer that conforms to metal protocol!"];
  }

  [(TSDGPUDataBuffer *)self encodeWithEncoder:v11 atIndex:a4];
  if (self->_gLElementDataBufferWasSetup && self->_elementArrayCount)
  {
    height = self->_gLElementMeshSize.height;
    if (self->_gLElementMeshSize.width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
    {
      [v11 drawIndexedPrimitives:-[TSDGPUDataBuffer metalDrawMode](self indexCount:"metalDrawMode" indexType:height) indexBuffer:length indexBufferOffset:{0, self->_metalElementData, 2 * location}];
    }

    else if (height + -1.0 > 0.0)
    {
      v17 = 0;
      v18 = 1;
      do
      {
        [v11 drawIndexedPrimitives:-[TSDGPUDataBuffer metalDrawMode](self indexCount:"metalDrawMode") indexType:(self->_gLElementMeshSize.width + self->_gLElementMeshSize.width) indexBuffer:0 indexBufferOffset:{self->_metalElementData, (self->_gLElementMeshSize.width * v17 + self->_gLElementMeshSize.width * v17)}];
        v19 = v18++;
        v17 += 2;
      }

      while (self->_gLElementMeshSize.height + -1.0 > v19);
    }
  }

  else
  {
    [v11 drawPrimitives:-[TSDGPUDataBuffer metalDrawMode](self vertexStart:"metalDrawMode") vertexCount:{location, length}];
  }

  if ([(TSDGPUDataBuffer *)self isDynamicallyBuffered]&& v6)
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

  [v11 popDebugGroup];
}

- (void)drawWithEncoder:(id)a3 atIndex:(unint64_t)a4
{
  elementArrayCount = self->_elementArrayCount;
  if (!elementArrayCount)
  {
    elementArrayCount = self->_vertexCount;
  }

  [(TSDGPUDataBuffer *)self drawWithEncoder:a3 atIndex:a4 range:0 advanceDynamicBuffer:elementArrayCount, 1];
}

- (void)drawWithEncoder:(id)a3 atIndex:(unint64_t)a4 advanceDynamicBuffer:(BOOL)a5
{
  elementArrayCount = self->_elementArrayCount;
  if (!elementArrayCount)
  {
    elementArrayCount = self->_vertexCount;
  }

  [(TSDGPUDataBuffer *)self drawWithEncoder:a3 atIndex:a4 range:0 advanceDynamicBuffer:elementArrayCount, a5];
}

- (float)metalFloatForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 dataArrayBuffer];
  [v6 metalFloatForAttribute:v5 atIndex:a4];
  v8 = v7;

  return v8;
}

- (void)setMetalFloat:(float)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  v7 = a4;
  v9 = [v7 dataArrayBuffer];
  *&v8 = a3;
  [v9 setMetalFloat:v7 forAttribute:a5 atIndex:v8];
}

- ($94F468A8D4C62B317260615823C2B210)metalPoint2DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 dataArrayBuffer];
  [v6 metalPoint2DForAttribute:v5 atIndex:a4];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.var1 = v12;
  result.var0 = v11;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)metalPoint3DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 dataArrayBuffer];
  [v6 metalPoint3DForAttribute:v5 atIndex:a4];
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

- ($C28CD4A45FD07A4F97CC9D5F91F25271)metalPoint4DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 dataArrayBuffer];
  [v6 metalPoint4DForAttribute:v5 atIndex:a4];
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

- (void)setMetalPoint2D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = a4;
  v11 = [v8 dataArrayBuffer];
  *&v9 = var0;
  *&v10 = var1;
  [v11 setMetalPoint2D:v8 forAttribute:a5 atIndex:{v9, v10}];
}

- (void)setMetalPoint3D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v13 = [v9 dataArrayBuffer];
  *&v10 = var0;
  *&v11 = var1;
  *&v12 = var2;
  [v13 setMetalPoint3D:v9 forAttribute:a5 atIndex:{v10, v11, v12}];
}

- (void)setMetalPoint4D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = a4;
  v15 = [v10 dataArrayBuffer];
  *&v11 = var0;
  *&v12 = var1;
  *&v13 = var2;
  *&v14 = var3;
  [v15 setMetalPoint4D:v10 forAttribute:a5 atIndex:{v11, v12, v13, v14}];
}

- (void)setGLPoint2D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var1 = a3.var1;
  var0 = a3.var0;
  v8 = a4;
  v11 = [v8 dataArrayBuffer];
  *&v9 = var0;
  *&v10 = var1;
  [v11 setMetalPoint2D:v8 forAttribute:a5 atIndex:{v9, v10}];
}

- ($E2C29196C7A5C696474C6955C5A9CE06)GLPoint3DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 dataArrayBuffer];
  [v6 metalPoint3DForAttribute:v5 atIndex:a4];
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

- (void)setGLPoint3D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v9 = a4;
  v13 = [v9 dataArrayBuffer];
  *&v10 = var0;
  *&v11 = var1;
  *&v12 = var2;
  [v13 setMetalPoint3D:v9 forAttribute:a5 atIndex:{v10, v11, v12}];
}

- ($C28CD4A45FD07A4F97CC9D5F91F25271)GLPoint4DForAttribute:(id)a3 atIndex:(unint64_t)a4
{
  v5 = a3;
  v6 = [v5 dataArrayBuffer];
  [v6 metalPoint4DForAttribute:v5 atIndex:a4];
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

- (void)setGLPoint4D:(id)a3 forAttribute:(id)a4 atIndex:(unint64_t)a5
{
  var3 = a3.var3;
  var2 = a3.var2;
  var1 = a3.var1;
  var0 = a3.var0;
  v10 = a4;
  v15 = [v10 dataArrayBuffer];
  *&v11 = var0;
  *&v12 = var1;
  *&v13 = var2;
  *&v14 = var3;
  [v15 setMetalPoint4D:v10 forAttribute:a5 atIndex:{v11, v12, v13, v14}];
}

- (void)setDataForAttribute:(id)a3 atIndex:(unint64_t)a4 fromAttribute:(id)a5 dataBuffer:(id)a6 index:(unint64_t)a7
{
  v18 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [v18 componentCount];
  if (v14 > 2)
  {
    if (v14 != 3)
    {
      if (v14 == 4)
      {
        [v13 metalPoint4DForAttribute:v12 atIndex:a7];
        [(TSDGPUDataBuffer *)self setGLPoint4D:v18 forAttribute:a4 atIndex:?];
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    [v13 metalPoint3DForAttribute:v12 atIndex:a7];
    [(TSDGPUDataBuffer *)self setGLPoint3D:v18 forAttribute:a4 atIndex:?];
  }

  else
  {
    if (v14 != 1)
    {
      if (v14 == 2)
      {
        [v13 metalPoint2DForAttribute:v12 atIndex:a7];
        [(TSDGPUDataBuffer *)self setGLPoint2D:v18 forAttribute:a4 atIndex:?];
        goto LABEL_11;
      }

LABEL_8:
      v15 = [MEMORY[0x277D6C290] currentHandler];
      v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer setDataForAttribute:atIndex:fromAttribute:dataBuffer:index:]"];
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
      [v15 handleFailureInFunction:v16 file:v17 lineNumber:1411 description:@"Unknown attribute size!"];

      goto LABEL_11;
    }

    [v13 metalFloatForAttribute:v12 atIndex:a7];
    [(TSDGPUDataBuffer *)self setMetalFloat:v18 forAttribute:a4 atIndex:?];
  }

LABEL_11:
}

- (id)vertexAttributeNamed:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(TSDGPUDataBuffer *)self vertexAttributes];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 name];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)updateDataBufferAttributesWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(TSDGPUDataBuffer *)self vertexAttributes];
  [(TSDGPUDataBuffer *)self updateMetalDataBufferAttributes:v5 withBlock:v4];
}

- (void)updateMetalDataBufferAttributes:(id)a3 withBlock:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v13 && [v13 count])
  {
    self->_isUpdatingRawDataBuffer = 1;
    v7 = [v13 count];
    v8 = malloc_type_calloc(0x58uLL, v7, 0x8EBB09C6uLL);
    v9 = v8;
    if (v7)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = [v13 objectAtIndex:v10];
        [(TSDGPUDataBuffer *)self p_setAttributeUpdateData:v11 fromAttribute:v12];

        ++v10;
        v11 += 88;
      }

      while (v7 != v10);
    }

    v6[2](v6, v9, v7);
    self->_isUpdatingRawDataBuffer = 0;
    free(v9);
  }
}

- (void)updateDataBufferAttributes:(id)a3 withBlock:(id)a4
{
  v19 = a3;
  v6 = a4;
  if (v19 && [v19 count])
  {
    self->_isUpdatingRawDataBuffer = 1;
    v7 = [v19 count];
    v8 = malloc_type_calloc(0x58uLL, v7, 0xC8A5CF9FuLL);
    v9 = v8;
    if (v7)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        v12 = [v19 objectAtIndex:v10];
        [(TSDGPUDataBuffer *)self p_setAttributeUpdateData:v11 fromAttribute:v12];

        ++v10;
        v11 += 88;
      }

      while (v7 != v10);
      v6[2](v6, v9, v7);
      v13 = 0;
      self->_isUpdatingRawDataBuffer = 0;
      v14 = v9 + 9;
      do
      {
        if (*(v14 - 2))
        {
          v16 = *(v14 - 1);
          v15 = *v14;
          v17 = [v19 objectAtIndex:v13];
          v18 = [v17 dataArrayBuffer];
          [v18 addIndexRangeNeedsUpdate:{v16, v15}];
        }

        ++v13;
        v14 += 11;
      }

      while (v7 != v13);
    }

    else
    {
      v6[2](v6, v8, 0);
      self->_isUpdatingRawDataBuffer = 0;
    }

    free(v9);
  }
}

- (TSDGPUDataBuffer)initWithVertexRect:(CGRect)a3 textureRect:(CGRect)a4 meshSize:(CGSize)a5 textureFlipped:(BOOL)a6 includeCenterAttribute:(BOOL)a7 addTransparentBorder:(BOOL)a8
{
  v8 = a6;
  height_low = LODWORD(a5.height);
  width_low = LODWORD(a5.width);
  v36 = a3;
  v35 = a4;
  v11 = CGRectEqualToRect(a4, *MEMORY[0x277CBF3A0]);
  if (v8)
  {
    [objc_opt_class() p_addTransparentBorderInsetToTextureRect:&v35 vertexRect:&v36];
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
    v19 = TSDCenterOfRect(v36.origin.x, v36.origin.y, v36.size.width, v36.size.height);
    v33 = (v38 + -1.0);
    v21 = v20;
    v22 = (v37 + -1.0);
    v23 = v33;
    do
    {
      v24 = 0;
      do
      {
        v25 = TSDPointFromNormalizedRect(v24 / v22, v18 / v23, v36.origin.x, v36.origin.y, v36.size.width);
        *&v25 = v25;
        *&v26 = v26;
        [(TSDGPUDataBuffer *)v16 setGLPoint2D:v13 forAttribute:v17 atIndex:v25, v26];
        if (!v11)
        {
          v29 = TSDPointFromNormalizedRect(v24 / v22, v18 / v23, v35.origin.x, v35.origin.y, v35.size.width);
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

- (BOOL)p_setAttributeUpdateData:(id *)a3 fromAttribute:(id)a4
{
  v6 = a4;
  v7 = v6;
  isUpdatingRawDataBuffer = self->_isUpdatingRawDataBuffer;
  if (isUpdatingRawDataBuffer)
  {
    v9 = [v6 dataArrayBuffer];
    a3->var3 = [v9 dataPointer];

    a3->var0 = [v7 dataType];
    a3->var1 = [v7 componentCount];
    a3->var2 = [v7 isNormalized];
    a3->var4 = [v7 bufferOffset];
    v10 = [v7 dataArrayBuffer];
    a3->var5 = [v10 dataBufferEntrySize];

    v11 = [v7 dataArrayBuffer];
    a3->var6 = [v11 vertexCount];

    a3->var7 = 1;
    var6 = a3->var6;
    a3->var8.location = 0;
    a3->var8.length = var6;
    a3->var9 = TSDGPUDataBufferDataTypeSize([v7 dataType]);
  }

  else
  {
    v13 = [MEMORY[0x277D6C290] currentHandler];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDGPUDataBuffer p_setAttributeUpdateData:fromAttribute:]"];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGPUDataBuffer.m"];
    [v13 handleFailureInFunction:v14 file:v15 lineNumber:1572 description:@"Can only be called from within update block!"];
  }

  return isUpdatingRawDataBuffer;
}

@end