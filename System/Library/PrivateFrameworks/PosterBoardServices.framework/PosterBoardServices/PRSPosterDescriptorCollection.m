@interface PRSPosterDescriptorCollection
+ (BOOL)validatePoster:(id)a3;
- (NSSet)mutableDescriptors;
- (void)dealloc;
@end

@implementation PRSPosterDescriptorCollection

- (NSSet)mutableDescriptors
{
  v2 = [(PFPosterCollection *)self posters];
  v3 = [v2 bs_filter:&__block_literal_global_1];

  return v3;
}

uint64_t __51__PRSPosterDescriptorCollection_mutableDescriptors__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

+ (BOOL)validatePoster:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___PRSPosterDescriptorCollection;
    v5 = objc_msgSendSuper2(&v7, sel_validatePoster_, v4);
  }

  return v5;
}

- (void)dealloc
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(PRSPosterDescriptorCollection *)self mutableDescriptors];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * v7) _path];
        [v8 invalidate];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = PRSPosterDescriptorCollection;
  [(PRSPosterDescriptorCollection *)&v10 dealloc];
  v9 = *MEMORY[0x1E69E9840];
}

@end