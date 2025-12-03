@interface PTAssetReaderFrame
- (CGAffineTransform)colorBufferPreferredTransform;
- (CGAffineTransform)disparityBufferPreferredTransform;
- (NSDictionary)jsonFriendlyMetadata;
- (PTAssetReaderFrame)initWithAssetReaderFrame:(id)frame;
- (id)_jsonFriendlyObject:(id)object;
- (void)dealloc;
- (void)setColorBufferPreferredTransform:(CGAffineTransform *)transform;
- (void)setColorBufferTime:(id *)time;
- (void)setDisparityBufferPreferredTransform:(CGAffineTransform *)transform;
- (void)setDisparityBufferTime:(id *)time;
- (void)setMetadataTime:(id *)time;
- (void)setTime:(id *)time;
@end

@implementation PTAssetReaderFrame

- (void)dealloc
{
  if ([(PTAssetReaderFrame *)self disparityBuffer])
  {
    CVPixelBufferRelease([(PTAssetReaderFrame *)self disparityBuffer]);
  }

  if ([(PTAssetReaderFrame *)self colorBuffer])
  {
    CVPixelBufferRelease([(PTAssetReaderFrame *)self colorBuffer]);
  }

  v3.receiver = self;
  v3.super_class = PTAssetReaderFrame;
  [(PTAssetReaderFrame *)&v3 dealloc];
}

- (id)_jsonFriendlyObject:(id)object
{
  v25[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v5 = MEMORY[0x277CCAAA0];
  v25[0] = objectCopy;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  LODWORD(v5) = [v5 isValidJSONObject:v6];

  if (v5)
  {
    v7 = objectCopy;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = objc_opt_new();
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __42__PTAssetReaderFrame__jsonFriendlyObject___block_invoke;
      v22[3] = &unk_278522ED8;
      v22[4] = self;
      v9 = v8;
      v23 = v9;
      [objectCopy enumerateKeysAndObjectsUsingBlock:v22];
      v10 = v23;
      v7 = v9;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = objc_opt_new();
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = objectCopy;
        v12 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v19;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v19 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = [(PTAssetReaderFrame *)self _jsonFriendlyObject:*(*(&v18 + 1) + 8 * i), v18];
              if (v16)
              {
                [v7 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v18 objects:v24 count:16];
          }

          while (v13);
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

void __42__PTAssetReaderFrame__jsonFriendlyObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) _jsonFriendlyObject:v5];
    if (v6)
    {
      [*(a1 + 40) setObject:v6 forKey:v7];
    }
  }
}

- (NSDictionary)jsonFriendlyMetadata
{
  metadata = [(PTAssetReaderFrame *)self metadata];

  if (metadata)
  {
    metadata2 = [(PTAssetReaderFrame *)self metadata];
    v5 = [(PTAssetReaderFrame *)self _jsonFriendlyObject:metadata2];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PTAssetReaderFrame)initWithAssetReaderFrame:(id)frame
{
  frameCopy = frame;
  v17.receiver = self;
  v17.super_class = PTAssetReaderFrame;
  v5 = [(PTAssetReaderFrame *)&v17 init];
  if (v5)
  {
    if (frameCopy)
    {
      [frameCopy time];
    }

    else
    {
      v10 = 0uLL;
      *&v14 = 0;
    }

    *(v5 + 3) = v10;
    *(v5 + 8) = v14;
    *(v5 + 1) = [frameCopy index];
    metadata = [frameCopy metadata];
    v7 = [metadata copy];
    v8 = *(v5 + 2);
    *(v5 + 2) = v7;

    if (frameCopy)
    {
      [frameCopy metadataTime];
    }

    else
    {
      v11 = 0uLL;
      v15 = 0;
    }

    *(v5 + 72) = v11;
    *(v5 + 11) = v15;
    *(v5 + 4) = CVPixelBufferRetain([frameCopy colorBuffer]);
    if (frameCopy)
    {
      [frameCopy colorBufferTime];
      *(v5 + 6) = v12;
      *(v5 + 14) = v14;
      [frameCopy colorBufferPreferredTransform];
    }

    else
    {
      *(v5 + 12) = 0;
      *(v5 + 13) = 0;
      *(v5 + 14) = 0;
      v14 = 0u;
      v16 = 0u;
      v12 = 0u;
    }

    *(v5 + 9) = v12;
    *(v5 + 10) = v14;
    *(v5 + 11) = v16;
    *(v5 + 5) = CVPixelBufferRetain([frameCopy disparityBuffer]);
    if (frameCopy)
    {
      [frameCopy disparityBufferTime];
      *(v5 + 120) = v13;
      *(v5 + 17) = v14;
      [frameCopy disparityBufferPreferredTransform];
    }

    else
    {
      *(v5 + 15) = 0;
      *(v5 + 16) = 0;
      *(v5 + 17) = 0;
      v14 = 0u;
      v16 = 0u;
      v13 = 0u;
    }

    *(v5 + 12) = v13;
    *(v5 + 13) = v14;
    *(v5 + 14) = v16;
  }

  return v5;
}

- (void)setTime:(id *)time
{
  v3 = *&time->var0;
  self->_time.epoch = time->var3;
  *&self->_time.value = v3;
}

- (void)setMetadataTime:(id *)time
{
  v3 = *&time->var0;
  self->_metadataTime.epoch = time->var3;
  *&self->_metadataTime.value = v3;
}

- (void)setColorBufferTime:(id *)time
{
  v3 = *&time->var0;
  self->_colorBufferTime.epoch = time->var3;
  *&self->_colorBufferTime.value = v3;
}

- (CGAffineTransform)colorBufferPreferredTransform
{
  v3 = *&self[3].c;
  *&retstr->a = *&self[3].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].tx;
  return self;
}

- (void)setColorBufferPreferredTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_colorBufferPreferredTransform.c = *&transform->c;
  *&self->_colorBufferPreferredTransform.tx = v4;
  *&self->_colorBufferPreferredTransform.a = v3;
}

- (void)setDisparityBufferTime:(id *)time
{
  v3 = *&time->var0;
  self->_disparityBufferTime.epoch = time->var3;
  *&self->_disparityBufferTime.value = v3;
}

- (CGAffineTransform)disparityBufferPreferredTransform
{
  v3 = *&self[4].c;
  *&retstr->a = *&self[4].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[4].tx;
  return self;
}

- (void)setDisparityBufferPreferredTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->tx;
  *&self->_disparityBufferPreferredTransform.c = *&transform->c;
  *&self->_disparityBufferPreferredTransform.tx = v4;
  *&self->_disparityBufferPreferredTransform.a = v3;
}

@end