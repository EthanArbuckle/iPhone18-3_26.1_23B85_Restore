@interface TXRTexture
- (BOOL)exportToURL:(id)a3 error:(id *)a4;
- (TXRTexture)initWithContentsOfURL:(id)a3 bufferAllocator:(id)a4 options:(id)a5 error:(id *)a6;
- (TXRTexture)initWithData:(id)a3 bufferAllocator:(id)a4 options:(id)a5 error:(id *)a6;
- (TXRTexture)initWithDataSourceProvider:(id)a3;
- (id)copyWithPixelFormat:(unint64_t)a3 options:(id)a4 bufferAllocator:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)exportToAssetCatalogWithName:(id)a3 location:(id)a4 error:(id *)a5;
- (void)generateMipmapsForRange:(_NSRange)a3 filter:(unint64_t)a4 error:(id *)a5;
@end

@implementation TXRTexture

- (TXRTexture)initWithDataSourceProvider:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = TXRTexture;
  v5 = [(TXRTexture *)&v16 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    mipmapLevels = v5->_mipmapLevels;
    v5->_mipmapLevels = v6;

    v8 = [v4 provideTextureInfo];
    v5->_cubemap = [v8 cubemap];
    v5->_pixelFormat = [v8 pixelFormat];
    v5->_alphaInfo = [v8 alphaInfo];
    [v8 dimensions];
    *v5->_dimensions = v9;
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "mipmapLevelCount")}];
    v11 = v5->_mipmapLevels;
    v5->_mipmapLevels = v10;

    if ([v8 mipmapLevelCount])
    {
      v12 = 0;
      do
      {
        v13 = v5->_mipmapLevels;
        v14 = -[TXRMipmapLevel initAsLevel:arrayLength:cubemap:dataSourceProvider:]([TXRMipmapLevel alloc], "initAsLevel:arrayLength:cubemap:dataSourceProvider:", v12, [v8 arrayLength], objc_msgSend(v8, "cubemap"), v4);
        [(NSMutableArray *)v13 addObject:v14];

        ++v12;
      }

      while (v12 < [v8 mipmapLevelCount]);
    }
  }

  return v5;
}

- (TXRTexture)initWithContentsOfURL:(id)a3 bufferAllocator:(id)a4 options:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v11)
  {
    v11 = objc_alloc_init(TXRDefaultBufferAllocator);
  }

  bufferAllocator = self->_bufferAllocator;
  self->_bufferAllocator = v11;
  v14 = v11;

  v15 = [[TXRFileDataSourceProvider alloc] initWithURL:v10 bufferAllocator:v14 options:v12 error:a6];
  v16 = [(TXRTexture *)self initWithDataSourceProvider:v15];

  return v16;
}

- (TXRTexture)initWithData:(id)a3 bufferAllocator:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12.receiver = self;
  v12.super_class = TXRTexture;
  [(TXRTexture *)&v12 init];
  __assert_rtn("[TXRTexture initWithData:bufferAllocator:options:error:]", "TXRTexture.m", 410, "!TODO: Must Implement");
}

- (id)exportToAssetCatalogWithName:(id)a3 location:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [[TXRAssetCatalogSet alloc] initWithName:v8];

  v10 = [(TXRAssetCatalogSet *)v9 exportAtLocation:v7 error:a5];

  return v10;
}

- (BOOL)exportToURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 pathExtension];
  v8 = [v7 caseInsensitiveCompare:@"ktx"];

  if (v8)
  {
    if (a4)
    {
      _newTXRErrorWithCodeAndErrorString(11, @"TXRTexture can only export to the KTX texture fil format");
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = [TXRParserKTX exportTexture:self url:v6 error:a4];
  }

  return v9;
}

- (void)generateMipmapsForRange:(_NSRange)a3 filter:(unint64_t)a4 error:(id *)a5
{
  length = a3.length;
  location = a3.location;
  if (a3.location >= [(NSMutableArray *)self->_mipmapLevels count])
  {
    if (a5)
    {
      *a5 = _newTXRErrorWithCodeAndErrorString(9, @"Range Location must be an index of an existing mipmap level");
    }
  }

  else
  {
    v44 = self->_bufferAllocator;
    if (!v44)
    {
      v44 = objc_alloc_init(TXRDefaultBufferAllocator);
    }

    v9 = location + length;
    v10 = HIDWORD(*self->_dimensions);
    if (v10 <= *&self->_dimensions[8])
    {
      v10 = *&self->_dimensions[8];
    }

    if (*self->_dimensions > v10)
    {
      v10 = *self->_dimensions;
    }

    v11 = __clz(v10) ^ 0x1F;
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0xFFFFFFFFLL;
    }

    if (v9 >= v12)
    {
      v9 = v12;
    }

    v42 = location + 1;
    if (location + 1 < v9)
    {
      v41 = *self->_dimensions;
      v13 = 0x279DBB000uLL;
      v40 = v9;
      while (1)
      {
        if ([(NSMutableArray *)self->_mipmapLevels count]<= v42)
        {
          v14 = objc_alloc(*(v13 + 3896));
          v15 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
          v16 = [v15 elements];
          v17 = [v14 initAsLevel:v42 arrayLength:objc_msgSend(v16 cubemap:"count") dataSourceProvider:{self->_cubemap, 0}];

          [(NSMutableArray *)self->_mipmapLevels addObject:v17];
        }

        v18 = 0;
LABEL_18:
        v19 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
        v20 = [v19 elements];
        v21 = [v20 count];

        if (v18 < v21)
        {
          break;
        }

        v37.i64[0] = 0x100000001;
        v37.i64[1] = 0x100000001;
        v38.i64[0] = vbslq_s8(vcgtq_u32(v41, v37), vshrq_n_u32(v41, 1uLL), v37).u64[0];
        if (v41.i32[2] <= 1u)
        {
          v39 = 1;
        }

        else
        {
          v39 = v41.i32[2] >> 1;
        }

        v38.i64[1] = __PAIR64__(v41.u32[3], v39);
        ++location;
        v41 = v38;
        ++v42;
        v13 = 0x279DBB000;
        if (v42 == v40)
        {
          goto LABEL_34;
        }
      }

      for (i = 0; ; ++i)
      {
        v23 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
        v24 = [v23 elements];
        v25 = [v24 objectAtIndexedSubscript:0];
        v26 = [v25 faces];
        v27 = [v26 count];

        if (i >= v27)
        {
          ++v18;
          goto LABEL_18;
        }

        v28 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:location];
        v29 = [v28 elements];
        v30 = [v29 objectAtIndexedSubscript:v18];
        v31 = [v30 faces];
        v32 = [v31 objectAtIndexedSubscript:i];

        v33 = [[TXRImageIndependent alloc] initWithImage:v32 dimensions:self->_pixelFormat pixelFormat:self->_alphaInfo alphaInfo:*v41.i64];
        v34 = [TXRDataScaler newImageFromSourceImage:v33 bufferAllocattor:v44 filter:a4 error:a5];
        v35 = v34;
        if (*a5 || !v34)
        {
          break;
        }

        v36 = [(NSMutableArray *)self->_mipmapLevels objectAtIndexedSubscript:v42];
        [v36 setImage:v35 atElement:v18 atFace:i];
      }
    }

LABEL_34:
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [+[TXRTexture allocWithZone:](TXRTexture init];
  objc_storeStrong(&v5->_bufferAllocator, self->_bufferAllocator);
  v6 = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{a3), "initWithCapacity:", -[NSMutableArray count](self->_mipmapLevels, "count")}];
  mipmapLevels = v5->_mipmapLevels;
  v5->_mipmapLevels = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_mipmapLevels;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = v5->_mipmapLevels;
        v14 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{a3, v17}];
        [(NSMutableArray *)v13 addObject:v14];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithPixelFormat:(unint64_t)a3 options:(id)a4 bufferAllocator:(id)a5
{
  v6 = a4;
  v7 = a5;
  __assert_rtn("[TXRTexture copyWithPixelFormat:options:bufferAllocator:]", "TXRTexture.m", 574, "!TODO: Must Implement");
}

@end