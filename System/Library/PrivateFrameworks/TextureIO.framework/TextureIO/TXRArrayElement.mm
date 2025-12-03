@interface TXRArrayElement
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsLevel:(unint64_t)level element:(unint64_t)element cubemap:(BOOL)cubemap dataSourceProvider:(id)provider;
- (id)initAsLevel:(unint64_t)level element:(unint64_t)element dimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(BOOL)info cubemap:(id)cubemap bufferAllocator:;
@end

@implementation TXRArrayElement

- (id)initAsLevel:(unint64_t)level element:(unint64_t)element cubemap:(BOOL)cubemap dataSourceProvider:(id)provider
{
  cubemapCopy = cubemap;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = TXRArrayElement;
  v11 = [(TXRArrayElement *)&v19 init];
  if (v11)
  {
    if (cubemapCopy)
    {
      v12 = 6;
    }

    else
    {
      v12 = 1;
    }

    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v12];
    faces = v11->_faces;
    v11->_faces = v13;

    for (i = 0; i != v12; ++i)
    {
      v16 = v11->_faces;
      v17 = [[TXRImage alloc] initAsLevel:level element:element face:i dataSourceProvider:providerCopy];
      [(NSMutableArray *)v16 addObject:v17];
    }
  }

  return v11;
}

- (id)initAsLevel:(unint64_t)level element:(unint64_t)element dimensions:(unint64_t)dimensions pixelFormat:(unint64_t)format alphaInfo:(BOOL)info cubemap:(id)cubemap bufferAllocator:
{
  infoCopy = info;
  v21 = v8;
  cubemapCopy = cubemap;
  v22.receiver = self;
  v22.super_class = TXRArrayElement;
  v14 = [(TXRArrayElement *)&v22 init];
  if (v14)
  {
    if (infoCopy)
    {
      v15 = 6;
    }

    else
    {
      v15 = 1;
    }

    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15];
    faces = v14->_faces;
    v14->_faces = v16;

    do
    {
      v18 = v14->_faces;
      v19 = [[TXRImageIndependent alloc] initWithDimensions:dimensions pixelFormat:format alphaInfo:cubemapCopy bufferAllocator:v21];
      [(NSMutableArray *)v18 addObject:v19];

      --v15;
    }

    while (v15);
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [+[TXRArrayElement allocWithZone:](TXRArrayElement init];
  v6 = [objc_msgSend(MEMORY[0x277CBEB18] allocWithZone:{zone), "initWithCapacity:", -[NSMutableArray count](self->_faces, "count")}];
  faces = v5->_faces;
  v5->_faces = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_faces;
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

        v13 = v5->_faces;
        v14 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{zone, v17}];
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

@end