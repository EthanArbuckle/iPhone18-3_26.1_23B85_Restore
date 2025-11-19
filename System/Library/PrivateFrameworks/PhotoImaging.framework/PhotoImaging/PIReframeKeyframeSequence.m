@interface PIReframeKeyframeSequence
- (PIReframeKeyframeSequence)initWithKeyframeArray:(id)a3;
- (uint64_t)homographyAtTime:(__int128 *)a3;
@end

@implementation PIReframeKeyframeSequence

- (uint64_t)homographyAtTime:(__int128 *)a3
{
  v3 = *(a1 + 8);
  v5 = *a3;
  v6 = *(a3 + 2);
  return [v3 sampleAtTime:&v5];
}

- (PIReframeKeyframeSequence)initWithKeyframeArray:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PIReframeKeyframeSequence;
  v27 = [(PIReframeKeyframeSequence *)&v35 init];
  v5 = [v4 count];
  v6 = malloc_type_calloc(v5, 0x18uLL, 0x1000040504FFAC1uLL);
  v26 = v5;
  v28 = malloc_type_calloc(v5, 0x30uLL, 0x1000040EED21634uLL);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v32;
    do
    {
      v12 = 0;
      v13 = &v28[48 * v10 + 32];
      v14 = &v6[24 * v10];
      v10 += v9;
      do
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v31 + 1) + 8 * v12);
        if (v15)
        {
          [*(*(&v31 + 1) + 8 * v12) time];
        }

        else
        {
          v29 = 0uLL;
          v30 = 0;
        }

        *(v14 + 2) = v30;
        *v14 = v29;
        v14 += 24;
        [v15 homography];
        *(v13 - 6) = v16;
        *(v13 - 4) = v17;
        *(v13 - 2) = v18;
        *(v13 - 2) = v19;
        v20 = v13 + 8;
        ++v12;
        *v13 = v21;
        v13 += 48;
        *v20 = v22;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v23 = [objc_alloc(MEMORY[0x1E69B3B40]) initWithCount:v26 times:v6 values:v28];
  homographySequence = v27->_homographySequence;
  v27->_homographySequence = v23;

  free(v6);
  free(v28);

  return v27;
}

@end