@interface NUNIAegirTextureGroup
- (void)preloadTexturesForSpheroids:(id)spheroids;
@end

@implementation NUNIAegirTextureGroup

- (void)preloadTexturesForSpheroids:(id)spheroids
{
  v34 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  spheroidsCopy = spheroids;
  v5 = [spheroidsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      v8 = 0;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(spheroidsCopy);
        }

        type = [*(*(&v28 + 1) + 8 * v8) type];
        array = [MEMORY[0x1E695DF70] array];
        v11 = [(NSArray *)self->_albedos objectAtIndexedSubscript:type];
        [array addObject:v11];

        v12 = [(NSArray *)self->_normals objectAtIndexedSubscript:type];
        [array addObject:v12];

        v13 = [(NSArray *)self->_emissives objectAtIndexedSubscript:type];
        [array addObject:v13];

        v14 = [(NSArray *)self->_cloudsLo objectAtIndexedSubscript:type];
        [array addObject:v14];

        v15 = [(NSArray *)self->_cloudsMd objectAtIndexedSubscript:type];
        [array addObject:v15];

        v16 = [(NSArray *)self->_cloudsHi objectAtIndexedSubscript:type];
        [array addObject:v16];

        v17 = [(NSArray *)self->_gradients objectAtIndexedSubscript:type];
        [array addObject:v17];

        [array addObject:self->_starfield];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v18 = array;
        v19 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v25;
          do
          {
            v22 = 0;
            do
            {
              if (*v25 != v21)
              {
                objc_enumerationMutation(v18);
              }

              atlas = [*(*(&v24 + 1) + 8 * v22) atlas];
              [atlas prewarm];

              ++v22;
            }

            while (v20 != v22);
            v20 = [v18 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v20);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [spheroidsCopy countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v6);
  }
}

@end